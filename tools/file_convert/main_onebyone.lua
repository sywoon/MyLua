local cs = require "charset"

local mode = arg[1]
local file = arg[2]
local outfile = arg[3] or "output.txt"

local str = io.readFile(file)
io.writeFile(outfile, cs[mode](str))



