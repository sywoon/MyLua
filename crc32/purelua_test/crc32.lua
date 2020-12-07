local crc32p = require "crc32_lua"

local M = {}


function M:tohex(text)
    local rst = crc32.hash(text)
    return string.format("%x", tonumber(rst))
end

function M:filetohex(filepath)
    local text = io.readFile(filepath)
    if nil == text then
        return 0
    end
    
    return self:tohex(text)
end


return M