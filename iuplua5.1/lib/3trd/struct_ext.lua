
module("structex", package.seeall)

mt = {data=nil, baseFmt=">!1"}  -- >:big endian <:little endian
mt.__index = mt

function new (_, t)
    t = setmetatable (t or {}, mt)
    t.pos = 1
    t.packedData = {}
    return t
end

function mt:setBaseFmt(fmt)
    self.baseFmt = fmt
end

function mt:pack(fmt, data)
    fmt = self.baseFmt .. fmt
    local str = struct.pack(fmt, data)
    table.insert(self.packedData, str)
    return str
end

function mt:getPackData()
    return table.concat(self.packedData)
end

function mt:unpack(fmt)
    fmt = self.baseFmt .. fmt
    local rtn
    rtn, self.pos = struct.unpack(fmt, self.data, self.pos)
    return rtn
end

function mt:addData(str, resetpos)
    self.data = (self.data or "") .. str
    if resetpos then
        self.pos = 1
    end
end


function mt:size()
    return #self.data
end

function mt:getPos()
    return self.pos
end

function mt:setPos(pos)
    self.pos = pos
end

function mt:posOffset(off)
    self.pos = self.pos + off
end

function mt:getData()
    return self.data
end




------------read--------------
--
function mt:canRead()
    return self.pos < #self.data
end

function mt:readByte(flag)  --u:unsign / s:sign
    flag = flag and string.lower(flag) or "s"
    local fmt = flag == "s" and "b" or "B"
    
    local data = self:unpack(fmt)
    return data
end

function mt:readBytes(len)
    local fmt = "c" .. len
    local data = self:unpack(fmt)
    return data
end

function mt:readShort(flag)
    flag = flag and string.lower(flag) or "s"
    local data = self:unpack(flag == "s" and "h" or "H")
    return data
end

function mt:readInt(flag)
    flag = flag and string.lower(flag) or "s"
    local data = self:unpack(flag == "s" and "i" or "I")
    return data
end

function mt:readVarInt(len, flag)
    flag = flag and string.lower(flag) or "s"
    local fmt = flag == "s" and "i" or "I"
    fmt = len and fmt .. len or fmt
    
    local data = self:unpack(fmt)
    return data
end

function mt:readLong(flag)
    local data = self:readVarInt(8, flag)
    
    --flag = flag and string.lower(flag) or "s"
    --local data = self:unpack(flag == "s" and "l" or "L")
    return data
end

function mt:readFloat()
    local data = self:unpack("f")
    return data
end

function mt:readDouble()
    local data = self:unpack("d")
    return data
end

function mt:readString(fmt)
    local len = fmt and self:unpack(fmt) or self:readShort()
    local str = self:unpack("c" .. len)
    return str
end

------------write--------------
--
function mt:writeByte(value, flag)
    local fmt
    if type(flag) == "number" then
        fmt = "c" .. flag
    else
        flag = flag and string.lower(flag) or "s"
        fmt = flag == "s" and "b" or "B"
    end

    self:pack(fmt, value)
end

function mt:writeBytes(value, len)
    local fmt = "c" .. len 
    self:pack(fmt, value)
end

function mt:writeShort(value, flag)
    flag = flag and string.lower(flag) or "s"
    local fmt = flag == "s" and "h" or "H"
    self:pack(fmt, value)
end

function mt:writeInt(value, flag)
    flag = flag and string.lower(flag) or "s"
    local fmt = flag == "s" and "i" or "I"
    self:pack(fmt, value)
end

function mt:writeVarInt(value, len, flag)
    flag = flag and string.lower(flag) or "s"
    local fmt = flag == "s" and "i" or "I"
    fmt = fmt .. len
    self:pack(fmt, value)
end

function mt:writeLong(value, flag)
    self:writeVarInt(value, 8, flag)
end

function mt:writeFloat(value)
    self:pack("f", value)
end

function mt:writeDouble(value)
    self:pack("d", value)
end

function mt:writeString(value)
    local len = string.len(value)
    self:writeShort(len)
    self:writeBytes(value, #value)
end

