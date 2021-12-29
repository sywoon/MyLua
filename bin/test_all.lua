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
local charset = require "charset"
local crc32 = require "crc32"
local console = require "console"
local im = require "imlua"
local xlsEdit = require "xlsEdit"

print(_VERSION)
for k, v in pairs(_G) do
    print(k, v)
end

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
    ["charset"] = charset,
    ["crc32"] = crc32,
    ["console"] = console,
    ["im"] = im,
    ["xlsEdit"] = xlsEdit,
}

do
    local keys = table.keys(libs)
    table.sort(keys)
    for _, name in ipairs(keys) do
        print("---[[" .. name .. "]]---")
        for k, v in pairs(libs[name]) do
            print(k, v)
        end
        print("\n")
    end
end


print("-------exe extend--------")
print(os.clock())
print(os.time())
print(os.millitime())

print("-------exam--------")
print("--crc32--")
do
    local str = "aabbcc"
    print(str, crc32:tohex(str))
    local file = "crc32/core.dll"
    print(file, crc32:filetohex(file))
end

print("--log & print--")
print(11)
printw(22)
printe(33)
log(111)
logw(222)
loge(333)

print("---time")
print(time.getstr("%c"))
print(time.time())
print(time.millitime())


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       

