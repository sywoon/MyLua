require "sllib_base"
local lfs = require "lfs"
local lpeg = require "lpeg"
local struct = require "struct"
local socket = require "socket.core"
local mime = require "mime.core"
local md5 = require "md5.core"
local des56 = require "des56"
local zlib = require "zlib.core"
local json = require "cjson"


print(_VERSION)

local libs = {
    ["lfs"] = lfs, 
    ["lpeg"] = lpeg, 
    ["struct"] = struct,
    ["socket"] = socket,
    ["mime"] = mime,
    ["md5"] = md5,
    ["des56"] = des56,
    ["zlib"] = zlib,
    ["json"] = json,
}

for name, lib in pairs(libs) do
	print("------", name)
    for k, v in pairs(lib) do
        print(k, v)
    end
    print("\n")
end




                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       

