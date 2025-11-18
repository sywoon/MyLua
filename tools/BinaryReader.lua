local struct = require "struct"

local BR = class("BinaryReader")

--最高16位 模拟js的String.fromCharCode
local function fromCharCode(code)
    if code <= 255 then
        return string.char(code)
    end

    local h = (code & 0xf0) >> 8
    local l = code & 0x0f
    return string.char(h) .. string.char(l)
end

function BR:ctor(data, strings)
    self.index = 1
    self.data = data
    self.strings = strings or {}
end

function BR:readByte(unsigned)
    local v, pos = struct.unpack(unsigned and ">B" or ">b", self.data, self.index)
    self.index = pos
    return v
end

function BR:readBytes(count)
    local v, pos = struct.unpack(">c" .. count, self.data, self.index)
    self.index = pos
    return v
end

function BR:readBoolean()
    local v = self:readByte()
    return v ~= 0
end

function BR:readFloat()
    local v, pos = struct.unpack(">f", self.data, self.index)
    self.index = pos
    return v
end

function BR:readShort(unsigned)
    local v, pos = struct.unpack(unsigned and ">H" or ">h", self.data, self.index)
    self.index = pos
    return v
end

function BR:readInt32(unsigned)
    local v, pos = struct.unpack(unsigned and ">I4" or ">i4", self.data,self.index)
    self.index = pos
    return v
end

function BR:readInt(optimizePositive)
    local b = self:readByte()
    local result = b & 0x7f
    if (b & 0x80) ~= 0 then
        b = self:readByte()
        result = result | (b & 0x7f) << 7;
        if (b & 0x80 ~= 0) then
            b = self:readByte()
            result = result | (b & 0x7f) << 14;
            if (b & 0x80 ~= 0) then
                b = self:readByte()
                result = result | (b & 0x7f) << 21;
                if (b & 0x80 ~= 0) then
                    b = self:readByte()
                    result = result | (b & 0x7f) << 28;
                end
            end
        end
    end
    local v = optimizePositive and result or ((result >> 1) ~ (-(result & 1)))
    return v
end

function BR:readString()
    local count = self:readInt(true)
    if count == 0 then
        return ""
    end


    local flag = ">c" .. count
    local v, pos = struct.unpack(flag, self.data, self.index)
    self.index = pos
    return v
end

function BR:readStringRef()
    local idx = self:readInt(true)
    if idx == 0 then
        return nil
    end
    -- print("readStringRef", idx, #self.strings)
    return self.strings[idx]
end


-- >c0没测试过 是否会自动读取长度
function BR:readU16String()
    local count = self:readShort(true)
    local flag = ">c" .. count
    local v, pos = struct.unpack(flag, self.data, self.index)
    self.index = pos
    return v
end

function BR:readU32String()
    return self:readString()
end

return BR

