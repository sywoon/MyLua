local crc32 = require "crc32"

--962f0be1
local str = "aabbcc"
print(str, crc32:tohex(str))


--369590db
local file = "../../bin/crc32/core.dll"
print(file, crc32:filetohex(file))
    
   
--≤‚ ‘Ω·π˚Õ¨cø‚
