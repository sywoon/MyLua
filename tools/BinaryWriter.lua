local struct = require "struct"

local VERSION = 101  -- (1.01)
local BW = class("BinaryWriter")

function BW:ctor()
    -- data fragments, will be concat'ed when needed
    self.parts = {}
    -- string table for references (1-indexed)
    self.strings = {}
    -- total byte length (optional convenience)
    self.length = 0
end

-- internal helper to append raw bytes
function BW:append(s)
    if s and #s > 0 then
        table.insert(self.parts, s)
        self.length = self.length + #s
    end
    return self
end

function BW:writeByte(v, unsigned)
    -- pack as unsigned byte by default (mirror reader behavior when unsigned passed)
    local fmt = unsigned and ">B" or ">b"
    local s = struct.pack(fmt, v)
    return self:append(s)
end

function BW:writeBytes(s)
    return self:append(s)
end

function BW:writeBoolean(b)
    return self:writeByte(b and 1 or 0, true)
end

function BW:writeFloat(num)
    local s = struct.pack(">f", num)
    return self:append(s)
end

function BW:writeShort(v, unsigned)
    local fmt = unsigned and ">H" or ">h"
    local s = struct.pack(fmt, v)
    return self:append(s)
end

function BW:writeInt32(v, unsigned)
    local fmt = unsigned and ">I4" or ">i4"
    local s = struct.pack(fmt, v)
    return self:append(s)
end


-- 1. 使用zig-zag编码将有符号整数转换为无符号整数：
--   编码空间利用（让小负数也紧凑），以及位移循环能正确终止（避免符号扩展导致永远不为 0）
--   如果 result 是带符号的负数，而右移使用算术右移（把最高位用 1 填充），
--     那么右移后 result 仍然是负数、永远不会变为 0 —— 循环不会结束。
-- 2. 按字节写入 每7位数据 + 高1位表示是否有后续字节
-- 3. 重复步骤2直到所有数据写入完毕
--
-- Zig-zag编码规则：
-- 对于正数 n，映射为 2*n（最低位为 0）。
-- 对于负数 -n-1，映射为 2*n+1（最低位为 1）。 例如：
-- 0 -> 0
-- -1 -> 1
-- 1 -> 2
-- -2 -> 3 因此小绝对值的负数也会得到小的无符号编码。
--     解决：-1/-2 映射为很大的无符号数，导致占用很多字节
-- optimizePositive 表示无符号整数
-- write variable-length int (same encoding as BR: 7 bits per byte, high bit continuation)
-- optimizePositive == true means value is treated unsigned (no zigzag)
function BW:writeInt(value, optimizePositive)
    local result
    if optimizePositive then
        -- treat value as unsigned
        result = value
    else
        -- zig-zag encode signed integer into unsigned result:
        -- result = (value << 1) ^ (value >> 31)
        -- mask to 32-bit to keep behavior consistent
        result = ((value << 1) ~ (value >> 31)) & 0xffffffff
    end

    -- emit 7-bit chunks, set high bit for continuation
    repeat
        local b = result & 0x7f
        result = result >> 7
        if result ~= 0 then
            b = b | 0x80
        end
        self:writeByte(b, true)
    until result == 0

    return self
end

-- write raw string with length prefix encoded via writeInt(true)
-- also store string in strings table for future references
function BW:writeString(s)
    s = s or ""
    local count = #s
    if count == 0 then
        -- empty string encoded as 0
        self:writeInt(0, true)
        -- still store empty string in table (so refs can refer to it if needed)
        table.insert(self.strings, s)
        return self
    end

    -- write length as unsigned varint
    self:writeInt(count, true)
    -- write bytes
    self:writeBytes(s)
    -- store in table and return
    table.insert(self.strings, s)
    return self
end

-- write a reference to a string in the internal table
-- nil -> index 0, otherwise write the 1-based index (add to table if absent)
function BW:writeStringRef(s)
    if s == nil then
        self:writeInt(0, true)
        return self
    end

    -- find or append
    local idx = nil
    for i, v in ipairs(self.strings) do
        if v == s then
            idx = i
            break
        end
    end
    if not idx then
        table.insert(self.strings, s)
        idx = #self.strings
    end

    self:writeInt(idx, true)
    return self
end

-- write an unsigned 16-bit length then raw bytes (mirrors readU16String)
function BW:writeU16String(s)
    s = s or ""
    local count = #s
    -- write unsigned short length then bytes
    self:writeShort(count, true)
    self:writeBytes(s)
    return self
end

-- alias: U32 string uses same as writeString in your reader
function BW:writeU32String(s)
    return self:writeString(s)
end

-- get full binary data
function BW:getData()
    return table.concat(self.parts)
end

-- convenience: reset writer to reuse
function BW:reset()
    self.parts = {}
    self.strings = {}
    self.length = 0
    return self
end



-- Save to file using the simple format described above
function BW:saveToFile(path)
    local f, err = io.open(path, "wb")
    if not f then return nil, err end

    local data = self:getData()
    local dataLen = #data
    local count = #self.strings

    -- header
    f:write("BWRT")                      -- magic
    f:write(struct.pack(">I2", VERSION))     -- version = 101 (1.01)
    f:write(struct.pack(">I4", dataLen)) -- data length (4 bytes big-endian)
    f:write(struct.pack(">I4", count))   -- strings count

    -- data block
    if dataLen > 0 then f:write(data) end

    -- strings block: for each string write 4-byte length + bytes
    for i = 1, count do
        local s = self.strings[i] or ""
        local len = #s
        f:write(struct.pack(">I4", len))
        if len > 0 then f:write(s) end
    end

    f:close()
    return true
end

-- Load writer-like object from file: returns BW instance (with parts = {data}, strings restored)
function BW:fromFile(path)
    local f, err = io.open(path, "rb")
    if not f then return nil, err end

    print('Loading binary writer data from file:', path)

    -- read header
    local magic = f:read(4)
    if magic ~= "BWRT" then
        f:close()
        return nil, "invalid magic"
    end

    local verPack = f:read(2)
    local ver = struct.unpack(">I2", verPack)
    if ver ~= VERSION then
        f:close()
        return nil, "unsupported version: " .. tostring(ver)
    end

    local dataLenPack = f:read(4)
    local dataLen = struct.unpack(">I4", dataLenPack)
    local countPack = f:read(4)
    local count = struct.unpack(">I4", countPack)

    -- read data block
    local data = ""
    if dataLen > 0 then
        data = f:read(dataLen)
        if not data or #data ~= dataLen then
            f:close()
            return nil, "failed to read data block"
        end
    end

    -- read strings
    local strings = {}
    for i = 1, count do
        local lenPack = f:read(4)
        if not lenPack or #lenPack ~= 4 then
            f:close()
            return nil, "failed to read string length for index " .. i
        end
        local len = struct.unpack(">I4", lenPack)
        local s = ""
        if len > 0 then
            s = f:read(len)
            if not s or #s ~= len then
                f:close()
                return nil, "failed to read string bytes for index " .. i
            end
        end
        strings[i] = s
    end

    f:close()

    return { data=data, strings=strings }
end


return BW
