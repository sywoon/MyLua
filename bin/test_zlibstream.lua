local zlib = require "zlib_stream"
local md5 = require "md5"

for k, v in pairs(zlib) do
    print(k, v)
end

print("md5 before", md5.sumFile("lua.exe"))

print(zlib.compressFile("lua.exe", "lua_2.zip"))
print(zlib.uncompressFile("lua_2.zip", "lua_2.exe"))


print("md5 after", md5.sumFile("lua_2.exe"))