local C32 = require "crc32.core"

local M = {}

M.crc = C32.newcrc32()

function M:tohex(text)
    local crc = self.crc
    crc:reset("")
    crc:update(text)
    return crc:tohex()
end

function M:filetohex(filepath)
    local text = io.readFile(filepath)
    if nil == text then
        return 0, "read file error:" .. filepath
    end

    return self:tohex(text)
end


return M