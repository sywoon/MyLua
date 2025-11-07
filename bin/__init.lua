
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
    
    -- sl_print_ivd_stamps() 可打印所有时间戳
    -- 以下为自己用的时间  别用于项目 可通过runluac加密  内部默认值：1773763199 2026.3.17
    local myStamp = 1821196799  --2027.9.17 给自己用
    INVALID_STAMPS["GLOBAL"] = myStamp
    
    -- 外部使用的情况：方便查阅和修改
    
    -- javascript-obfuscator 默认值 2026.6.17 1781711999
    -- pet_master\client_src_base\tools\lua5.3\
    -- pet_master\client\tools\lua5.3\
    -- pet打包机 192.168.88.252 山海新机-宠物
    INVALID_STAMPS["JSCOMPRESS"] = myStamp  --默认 所以项目里不要这行代码
    
    --u3d_effect_laya\u3d_effect_laya3_my2\make_ab-hk\  --2026.6.17  1773763199
    INVALID_STAMPS["ABLIB"] = myStamp  
end

