local zlib = require "zlib"
local md5 = require "md5"

for k, v in pairs(zlib) do
    print(k, v)
end

print("md5 before", md5.sumFile("lua.exe"))

print(zlib.compressFile("lua.exe", "lua.zip"))
print(zlib.uncompressFile("lua.zip", "lua2.exe"))


print("md5 after", md5.sumFile("lua2.exe"))