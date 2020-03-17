local cs = require "charset"

local path = arg[1]
local mode = arg[2]
local outpath = arg[3]
local isCover = outpath == nil
local isToUtf8 = (mode == "a2u" or mode == "w2u")

local files = os.dir(path)
table.print(files)
for _, file in ipairs(files) do
	repeat	
		local str = io.readFile(file)
		if isToUtf8 and cs.isutf8(str) then
			print("already is utf8:", file)
			break
		end

		local writepath
		if isCover then
			writepath = file
		else
			local subpath = string.gsub(file, path, "")
			writepath = outpath .. subpath
			os.mkdir(os.dirname(writepath))
		end
		print(file, writepath)
		io.writeFile(writepath, cs[mode](str))
	until true
end



