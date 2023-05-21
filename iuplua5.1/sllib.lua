
function g_initSllib(path)
    path = string.gsub(path, "[%s\r\n]", "")
    local exePath = path or ""
    
    local extpath = ""
    for _, path in ipairs({
            exePath .. "lib",
            exePath .. "lib\\3trd",
            }) do
        local str = string.gsub("#\\?;#\\?.lua;#\\?\\init.lua;#\\?.luac;", "#", path)
        extpath = extpath .. str
    end
    package.path = extpath .. package.path

    local extcpath = ""
    for _, path in ipairs({
                exePath .. "lib",
                }) do
        local str = string.gsub("#\\?.dll;", "#", path)
        extcpath = extcpath .. str
    end
    package.cpath = extcpath .. package.cpath

    require 'std'
    require 'objectlua.init'
    require 'objectlua.Mixin'

    require "sllib.init"
end


