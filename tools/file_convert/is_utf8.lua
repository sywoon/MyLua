local cs = require "charset"

local path = arg[1]

local str = io.readFile(path)
if nil == str or string.len(str) == 0 then
	print(false)
	return
end

print(cs.isutf8(str))




