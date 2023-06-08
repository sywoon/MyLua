require "sllib_base"

local struct = require "struct"

table.print(struct)

local buff = struct.pack(">bi4df", 100, 123, 3.14, 3.14)
print(buff, #buff)

local v, pos = struct.unpack(">b", buff)  --100 û��С����
print(v, pos)

v, pos = struct.unpack(">i4", buff, pos)   --123     5 û��С����.0 ��Ϊ�ײ��Ϊlua_Integer
print(v, pos)
v, pos = struct.unpack(">d", buff, pos)  --3.14    13 double��׼ û��������
print(v, pos)
v, pos = struct.unpack(">f", buff, pos)   --3.1400001049042 17  float׼�Ȳ���double ��Ϊ�ײ㶼����lua_Number
print(v, pos)