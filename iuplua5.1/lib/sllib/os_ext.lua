local lfs = require "lfs"
local pl = pl or {}
pl.path = require "pl.path"
pl.dir = require "pl.dir"

--注意：所有的路径 都不带/结尾!!!

--os.remove 删除文件
--os.rename 重命名文件或文件夹 也可以做移动用
function os.mkdir(path)
	local dirs = os.splitpathex(path)
	local folderPath = ""
	for i = 1, #dirs do
		folderPath = folderPath .. dirs[i]
		if not os.isdir(folderPath) then
			local flag, error = lfs.mkdir(folderPath)
			if nil == flag then
				return flag, error
			end
		end
		folderPath = folderPath .. "/"
	end
	return true
end

--复制 移动往往要求上级文件夹要存在 本身文件夹又不能存在
function os.mkpredir(path)
	local prepath = os.dirname(path)
	if prepath and prepath ~= "" then
		return os.mkdir(prepath)
	end
	return true
end

--only windows
function os.rmdir(path)
	if not os.isdir(path) then
		return
	end
	
	path = string.gsub(path, "/", "\\")
	local cmd = "rd /S /Q " .. path .. " 1>nul 2>nul"
	return os.execute(cmd)
	--linux
	--rm -rf path
	
	--有限制  文件夹必须为空
	--return lfs.rmdir(path)  
end

function os.movedir(oldpath, newpath)
	os.mkpredir(newpath)
	return os.rename(oldpath, newpath)
end

--only windows
function os.copydir(oldpath, newpath, verbose)
	oldpath = string.gsub(oldpath, "/", "\\")
	newpath = string.gsub(newpath, "/", "\\")
	os.mkpredir(newpath)

	local cmd = "xcopy /Y /E /I /Q " .. oldpath .. " " .. newpath .. " 1>nul 2>nul"

	if verbose == true then
		verbose = print
	end
	if verbose then verbose(cmd) end
	os.execute(cmd)
	--有bug 文件夹名会多出一个字母
	--且和copy不同 会多一层目录
	--return pl.dir.clonetree(oldpath, newpath, pl.dir.copyfile)
end

--两个都是带文件名(含扩展名)的路径
function os.copyfile(oldpath, newpath)
	os.mkpredir(newpath)
	return pl.dir.copyfile(oldpath, newpath)
end

function os.movefile(oldpath, newpath)
	os.mkpredir(newpath)
	return os.rename(oldpath, newpath)
end

function os.isdir(path)
	return pl.path.isdir(path)
end

function os.dirempty(path)
	local files = os.dir(path, true)
	return table.empty(files)
end

function os.isfile(path)
	return pl.path.isfile(path)
end

--存在文件或文件夹 返回这个路径 否则返回false
function os.exist(path)
	return pl.path.exists(path)
end


function os.dir(path, depth, filter)
	local max = 30
	if type(depth) == "boolean" then
		depth = depth == false and 1 or max
	elseif type(depth) == "number" then
		depth = depth
	else
		depth = max
	end

	local folders = {}
	local files = {}

	local function _dir(path, depth)
		depth = depth - 1
		for entry in lfs.dir(path) do
			if entry ~= '.' and entry ~= '..' then
				local path = path .. '/' .. entry
				local attr = lfs.attributes(path)
				if attr == nil then
					break
				end

				local isFolder = attr.mode == 'directory'
				if nil == filter or filter(path, isFolder) then
					if isFolder then
						table.insert(folders, path)
					else
						table.insert(files, path)
					end
				end

				if isFolder and depth > 0 then
					_dir(path, depth)
				end
			end
		end
	end

	_dir(path, depth)
    return files, folders 
end

function os.mkdirtree(paths)
	local root = {}
	for _, path in ipairs(paths) do
		path = string.gsub(path, "\\", "/")
		local pathList = string.split(path, "/")
		local map = root
		for _, name in ipairs(pathList) do
			map[name] = map[name] or {}
			map = map[name]
		end
	end

	return root
end

function os.files(dir, match)
	if nil == match then
		return (os.dir(dir))
	end

	local files = os.dir(dir, true, function (path, isFolder)
						if isFolder then
							return false
						end
						return string.match(path, match)
					end)
	return files
end

-- {
--   modification=1486266066,
--   rdev=3,
--   size=213,
--   ino=0,
--   mode="file",
--   access=1486266066,
--   nlink=1,
--   uid=0,
--   gid=0,
--   permissions="rw-rw-rw-",
--   dev=3,
--   change=1486266066,
-- }
function os.filetime(path)
	local info = lfs.attributes(path)
	return info and info.modification or 0
end


-- d:/01/1.txt => 1.txt
-- d:/01/02 => 02
function os.basename(filepath)
	return pl.path.basename(filepath)
end

-- d:/01/1.txt => d:/01
-- d:/01/02 => d:/01
function os.dirname(filepath)
	return pl.path.dirname(filepath)
end

-- c:/aa/bb/1.txt => c:/aa/bb    1.txt
-- d:/01/02 => d:/01    02
--得到剩余路径和最后一个文件夹  <==> dirname + basename
function os.splitpath(filepath)
	filepath = string.gsub(filepath, "\\", "/")
	if filepath[#filepath] == "/" then
		filepath = string.sub(filepath, 1, -2)
	end
	return pl.path.splitpath(filepath)
end

--得到路径文件夹数组
function os.splitpathex(filepath)
	local t = {}
	local prepath = filepath
	local foldername
	while true do
		prepath, foldername = os.splitpath(prepath)
		if nil == foldername or "" == foldername then
			break
		end
		table.insert(t, 1, foldername)
	end
	return t, #t
end

-- c:/aa/bb/1.txt =>c:/aa/bb/1     .txt
--用于得到文件名和扩展名 
function os.splitext(filepath)
	return pl.path.splitext(filepath)
end

-- c:/aa/bb/1.txt => .txt
function os.extension(filepath)
	return pl.path.extension(filepath)
end





























