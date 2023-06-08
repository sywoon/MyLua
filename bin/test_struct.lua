require "sllib_base"

local struct = require "struct"

table.print(struct)

local buff = struct.pack(">bi4df", 100, 123, 3.14, 3.14)
print(buff, #buff)

local v, pos = struct.unpack(">b", buff)  --100 没有小数点
print(v, pos)

v, pos = struct.unpack(">i4", buff, pos)   --123     5 没有小数点.0 因为底层改为lua_Integer
print(v, pos)
v, pos = struct.unpack(">d", buff, pos)  --3.14    13 double很准 没多余内容
print(v, pos)
v, pos = struct.unpack(">f", buff, pos)   --3.1400001049042 17  float准度不如double 因为底层都是用lua_Number
print(v, pos)