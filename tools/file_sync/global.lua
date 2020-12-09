local charset = require "charset"

function _F(fmt, ...)
    return string.format(fmt, ...)
end

function _U2A(str)
    return charset.u2a(str)
end

function _A2U(str)
    return charset.a2u(str)
end

function printU(...)
    local args = {...}
    local temp = {}
    for _, str in ipairs(args) do
        table.insert(temp, _U2A(str))
    end

    local msg = table.concat(temp, '\t')
    print(msg)
end

function pause(msg)
    if msg then
        os.execute(_F('cmd /c echo "%s" && pause', msg))
    else
        os.execute("cmd /c pause")
    end
end

function fixPath(path)
    path = string.gsub(path, "\\", "/")
    path = string.gsub(path, "//", "/")
    if string.sub(path, -1, -1) ~= "/" then
        path = path .. "/"
    end
    return path
end
