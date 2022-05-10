local msgpack = require "cmsgpack"


for k, v in pairs(msgpack) do
    print(k, v)
end



print("--testpack0:pack and unpack nil")
local v = msgpack.pack(nil)
print(v, string.len(v))
print(msgpack.unpack(v))

print("--testpack1:pack and unpack")
local t = {true, false, "abc", 100, 0xff, 0.11, -100, {aa=11, bb=22,cc={11,22,33}}}
for _, v in ipairs(t) do
    local d = msgpack.pack(v)
    print(_, v, d, string.len(d))
    
    local v2 = msgpack.unpack(d)
    print(_, v2)
    if type(v2) == "table" then
        print(table.tostring(v2))
    end
end

print("--testpack2:pack all and unpack one")
local dall = msgpack.pack(unpack(t))
print(dall, string.len(dall))
local pos = 0
local v
while pos ~= -1 do
    pos, v = msgpack.unpack_one(dall, pos)
    print(pos, v)
end

print("--testpack3:pack one and unpack or unpack one")
local data = msgpack.pack("100.100")
print("unpack", string.len(data), msgpack.unpack(data))
print("unpackone", msgpack.unpack_one(data, 0))

print("--testpack4:pack all and unpack limit")
local dall = msgpack.pack(unpack(t))
local pos = 0
print(msgpack.unpack_limit(dall, 5, pos))


