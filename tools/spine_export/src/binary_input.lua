local struct = require "struct"
local BI = class("BinaryInput")

--最高16位 模拟js的String.fromCharCode
local function fromCharCode(code)
    if code <= 255 then
        return string.char(code)
    end

    local h = (code & 0xf0) >> 8
    local l = code & 0x0f
    return string.char(h) .. string.char(l)
end

function BI:ctor(data)
    self.index = 1
    self.data = data
    self.strings = {}
end

function BI:readByte(unsigned)
    local v, pos = struct.unpack(unsigned and ">B" or ">b", self.data, self.index)
    self.index = pos
    return v
end

function BI:readBoolean()
    local v = self:readByte()
    return v ~= 0
end

function BI:readFloat()
    local v, pos = struct.unpack(">f", self.data, self.index)
    self.index = pos
    return v
end

function BI:readShort(unsigned)
    local v, pos = struct.unpack(unsigned and ">H" or ">h", self.data, self.index)
    self.index = pos
    return v
end

function BI:readInt32(unsigned)
    local v, pos = struct.unpack(unsigned and ">I4" or ">i4", self.data,self.index)
    self.index = pos
    return v
end

function BI:readInt(optimizePositive)
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
    local v = optimizePositive and result or ((result >> 1) ^ -(result & 1))
    return v
end

function BI:readString()
    local count = self:readInt(true)
    if count == 0 then
        return nil
    elseif count == 1 then
        return ""
    end
    count = count - 1

    local chars = {}
    for i = 1, count do
        local b = self:readByte(true)
        local flag = b >> 4
        if flag == 12 or flag == 13 then
            local code = (b & 0x1F) << 6 | (self:readByte() & 0x3F)
            i = i + 2
            table.insert(chars, fromCharCode(code))
        elseif flag == 14 then
            local code = (b & 0x0F) << 12 | (self:readByte() & 0x3F) << 6 | (self:readByte() & 0x3F)
            i = i + 3
            table.insert(chars, fromCharCode(code))
        else
            table.insert(chars, string.char(b))
            i = i + 1
        end
    end
    local out = table.concat(chars, "")
    -- print("readstring", out)
    return out
end

function BI:readStringRef()
    local idx = self:readInt(true)
    if idx == 0 then
        return nil
    end
    -- print("readStringRef", idx, #self.strings)
    return self.strings[idx]
end



return BI