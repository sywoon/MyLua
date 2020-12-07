local lfs = require "lfs"
local Parser = class("Parser")

local function _fixPath(path)
    path = string.gsub(path, "\\", "/")
    return path
end

function Parser:ctor()
end


function Parser:deal(from, to)
    from = _fixPath(from)
    to = _fixPath(to)

    local storage = {filesAll={}, foldersAll={}}
    self:_dealTwoFolder(from, to, storage)
    return storage
end


function Parser:_dealTwoFolder(from, to, storage)
    local files, folders = self:_findDiffFolderAndFiles(from, to)
    -- print("\n--_dealTwoFolder", from, to)
    -- table.print(files)
    -- table.print(folders)

    table.insert(storage.filesAll, files)

    if not table.empty(folders.leftNew) or not table.empty(folders.rightNew) then
        table.insert(storage.foldersAll, 
                {leftNew=folders.leftNew, rightNew=folders.rightNew,
                 from=folders.from, to=folders.to,
                })
    end

    for _, folder in ipairs(folders.same) do
        folder = string.gsub(folder, from, "")
        -- print("===", from, folder)
        self:_dealTwoFolder(from .. folder .. "/", to .. folder .. "/", storage)
    end
end


function Parser:_findDiffFolderAndFiles(from, to)
    -- print("\n--_findDiffFolderAndFiles", from, to)

    local filesL, foldersL = os.dir(from, false)
    local filesR, foldersR = os.dir(to, false)
    -- table.print(filesL)
    -- table.print(filesR)
    -- table.print(foldersL)
    -- table.print(foldersR)

    filesL = self:_cutRootPath(filesL, from)
    foldersL = self:_cutRootPath(foldersL, from)
    filesR = self:_cutRootPath(filesR, to)
    foldersR = self:_cutRootPath(foldersR, to)

    -- 按文件夹  单独过滤
    -- 情况：
    --   a left多了文件夹 right多了文件夹
    --   b left多了文件 right多了文件 
    --   c 两者文件内容不同

    local mapFilesL = table.invert(filesL)
    local mapFilesR = table.invert(filesR)

    local mapFoldersL = table.invert(foldersL)
    local mapFoldersR = table.invert(foldersR)

    local folders = { from=from, to=to, same = {}, leftNew = {}, rightNew = {}}
    for _, folder in ipairs(foldersL) do
        if not mapFoldersR[folder] then
            table.insert(folders.leftNew, from .. folder)
        else
            table.insert(folders.same, from .. folder)
        end
    end

    for _, folder in ipairs(foldersR) do
        if not mapFoldersL[folder] then
            table.insert(folders.rightNew, to .. folder)
        end
    end

    local files = { from=from, to=to, same = {}, leftNew = {}, rightNew = {}}
    for _, file in ipairs(filesL) do
        if not mapFilesR[file] then
            table.insert(files.leftNew, from .. file)
        else
            table.insert(files.same, from .. file)
        end
    end

    for _, file in ipairs(filesR) do
        if not mapFilesL[file] then
            table.insert(files.rightNew, to .. file)
        end
    end

    return files, folders
end

function Parser:_cutRootPath(pathes, rootPath)
    local data = {}
    for _, path in ipairs(pathes) do
        local t = string.gsub(path, rootPath, "")
        table.insert(data, t)
    end
    return data
end

function Parser:_addRootPath(pathes, rootPath)
    local data = {}
    for _, path in ipairs(pathes) do
        table.insert(data, rootPath .. path)
    end
    return data
end





return Parser

