local C32 = require "crc32.core"

for k, v in pairs(C32) do
    print(k, v)
end

local crc32 = C32.crc32

print("\ntest1======")
local str1 = "aabbcc"
print(str1)
print(crc32(0, str1))   --2519665633.0  数是对的 但多了小数点？
print(crc32("", str1))

print("\ntest2======")
local crc = C32.newcrc32()
print(crc:tohex())
print(crc:tostring())
crc:update(str1)
print(crc:tohex())    --962f0be1
print(crc:tostring())



-------------------
local crc32 = require "crc32"

--962f0be1
local str = "aabbcc"
print(str, crc32:tohex(str))


--369590db
local file = "crc32/core.dll"
print(file, crc32:filetohex(file))
    


