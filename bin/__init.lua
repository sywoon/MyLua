
local function _initPath(path)
    path = string.gsub(path, "[%s\r\n]", "")
    path = string.gsub(path, "/", "\\")
    local exePath = path or ""
    if not string.sub(exePath, -1, -1) == "\\" then
        exePath = exePath .. "\\"
    end
    
	local extpath = ""
	for _, path in ipairs({
                exePath,
				--"c:\\Program Files (x86)\\Lua\\5.1\\lua\\",
				--"d:\\Program Files (x86)\\Lua\\5.1\\lua\\",
				}) do
		local str = string.gsub("#?.lua;#?\\init.lua;#?.luac;", "#", path)
		extpath = extpath .. str
	end
	package.path = extpath .. package.path

	local extcpath = ""
	for _, path in ipairs({
                exePath,
				--"c:\\Program Files (x86)\\Lua\\5.1\\clibs\\",
				--"d:\\Program Files (x86)\\Lua\\5.1\\clibs\\",
				}) do
		local str = string.gsub("#?.dll;#/im/?53.dll;", "#", path)
		extcpath = extcpath .. str
	end
	package.cpath = extcpath .. package.cpath
end

function g_initSllib(pathes)
    for _, path in ipairs(pathes) do
        _initPath(path)
    end
   
    require "sllib_base"
    rawset(_G, "JSCOMPRESS_STAMP", 1821196799)  --2027.9.17 给自己用  默认2026.6.17 所以项目里不要这行代码
end

