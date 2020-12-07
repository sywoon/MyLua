local C32 = require "crc32.core"

local M = {}


function M:tohex(text)
    local crc = C32.newcrc32()
    crc:update(text)
    return crc:tohex()
end

function M:filetohex(filepath)
    local text = io.readFile(filepath)
    if nil == text then
        return 0
    end

    return self:tohex(text)
end


return M