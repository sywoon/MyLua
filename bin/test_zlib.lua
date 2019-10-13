local zlib = require "zlib"
local md5 = require "md5"

for k, v in pairs(zlib) do
    print(k, v)
end

print("md5 before", md5.sumFile("lua.exe"))

print(zlib.compressFile("lua.exe", "lua_1.zip"))
print(zlib.uncompressFile("lua_1.zip", "lua_1.exe"))

print("md5 after", md5.sumFile("lua_1.exe"))


local str = "hello world"
local a = zlib.compress(str)
local s2 = zlib.uncompress(a)
print(str, a, s2)


