local crc32 = require "crc32"
local Parser = require "Parser"

local App = class("App")
local DEBUG = false

local function logU(...)
    if not DEBUG then
        return
    end
    printU(...)
end

function App:ctor()
    self.parser = Parser.new()
end


-- 1:left changed 2:left changed + left new  3:mirror 4:mirror+keep_right_new
function App:syncFolder(from, to, mode)
    local start = os.time()
    printU("同步文件中...", from, to, mode)
    local storage = self.parser:deal(from, to)

    if mode == 1 then
        self:_syncFolderByLeftChanged(storage)
    elseif mode == 2 then
        self:_syncFolderByLeftChangedAndNewer(storage)
    elseif mode == 3 then
        self:_mirrorFolderByLeft(storage, true)
    elseif mode == 4 then
        self:_mirrorFolderByLeft(storage, false)
    end
    printU("同步结束 用时:" .. (os.time() - start) .. "秒")
end

-- left文件更新  包含left新增文件
function App:_syncFolderByLeftChangedAndNewer(storage)
    self:_syncFolderByLeftChanged(storage)

    -- 左边的新文件
    local filesAll = storage.filesAll   --{ same = {}, leftNew = {}, rightNew = {}}
    for _, config in ipairs(filesAll) do
        for _, filepath in ipairs(config.leftNew) do
            local file = string.gsub(filepath, config.from, "")
            local topath = config.to .. file
            logU("复制文件:", filepath, topath)
            os.copyfile(filepath, topath)
        end
    end

    local foldersAll = storage.foldersAll  --{ from=from, to=to, leftNew = {}, rightNew = {}}
    -- 左边的新文件夹
    for _, config in ipairs(foldersAll) do
        for _, dirpath in ipairs(config.leftNew) do
            local folder = string.gsub(dirpath, config.from, "")
            local topath = config.to .. folder
            logU("复制文件夹:", dirpath, topath)
            os.copydir(dirpath, topath)
        end
    end
end

-- left文件更新  不包含left新增文件
function App:_syncFolderByLeftChanged(storage)
    local filesAll = storage.filesAll   --{ same = {}, leftNew = {}, rightNew = {}}

    --同名文件 left更新的同步到右边
    for _, config in ipairs(filesAll) do
        for _, filepath in ipairs(config.same) do
            local file = string.gsub(filepath, config.from, "")
            local topath = config.to .. file

            if self:isFileLeftNewer(filepath, topath) then
                logU("复制文件:", filepath, topath)
                os.copyfile(filepath, topath)
            end
        end
    end
end

-- left镜像到right  removeRightNew：控制是否删除right中多出的部分
function App:_mirrorFolderByLeft(storage, removeRightNew)
    local filesAll = storage.filesAll   --{ same = {}, leftNew = {}, rightNew = {}}

    for _, config in ipairs(filesAll) do
        --同名文件 left有差别就同步
        for _, filepath in ipairs(config.same) do
            local file = string.gsub(filepath, config.from, "")
            local topath = config.to .. file
            logU("同步文件:", filepath, topath)
            self:syncFileByCrc32(filepath, topath)
        end

        --left新增的复制到right
        for _, filepath in ipairs(config.leftNew) do
            logU("复制新增文件:", filepath, config.to)
            os.copyfile(filepath, config.to)
        end

        --right新增的删除
        if removeRightNew then
            for _, filepath in ipairs(config.rightNew) do
                os.remove(filepath)
            end
        end
    end

    local foldersAll = storage.foldersAll  --{ from=from, to=to, leftNew = {}, rightNew = {}}
    
    for _, config in ipairs(foldersAll) do
        -- 左边的新文件夹
        for _, dirpath in ipairs(config.leftNew) do
            local folder = string.gsub(dirpath, config.from, "")
            local topath = config.to .. folder
            logU("复制新增文件夹:", dirpath, topath)
            os.copydir(dirpath, topath)
        end

        --right新增的删除
        if removeRightNew then
            for _, dirpath in ipairs(config.rightNew) do
                os.rmdir(dirpath)
            end
        end
    end
end

function App:syncFileByCrc32(from, to)
    if self:isFileSame(from, to) then
        local codeL = crc32:filetohex(from)
        local codeR = crc32:filetohex(to)
        if codeL == codeR then
            return
        end
    end
    os.copyfile(from, to)
end

function App:isFileLeftNewer(fileL, fileR)
    local attrL = self:getFileInfo(fileL)
    local attrR = self:getFileInfo(fileR)
    return attrL.modification > attrR.modification
end

-- 比对：文件修改时间和文件大小
function App:isFileSame(fileL, fileR)
    local attrL = self:getFileInfo(fileL)
    local attrR = self:getFileInfo(fileR)

    return attrL.size == attrR.size and 
            attrL.modification == attrR.modification
end


function App:getFileInfo(filepath)
    local attri = lfs.attributes(filepath)

    -- local chgTime = attri.modification
    -- local size = attri.size
    -- print( time.getstr("%c", chgTime) )

    return attri
end


return App
