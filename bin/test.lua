require "sllib_base"
local lfs = require "lfs"
local lpeg = require "lpeg"
local struct = require "struct"
local socket = require "socket.core"
local mime = require "mime.core"

print(_VERSION)

local libs = {
    ["lfs"] = lfs, 
    ["lpeg"] = lpeg, 
    ["struct"] = struct,
    ["socket"] = socket,
    ["mime"] = mime,
}

for name, lib in pairs(libs) do
	print("------", name)
    for k, v in pairs(lib) do
        print(k, v)
    end
    print("\n")
end




                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       

