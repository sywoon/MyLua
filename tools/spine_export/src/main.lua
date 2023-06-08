require "global"
require "spine_const"
local SkeletonBinary = require "skeleton_binary"

-- require("LuaPanda").start("127.0.0.1", 8818)


function main(resPath)
    local sb = SkeletonBinary.new()

    local skelPath = resPath .. "spineboy/spineboy.skel"
    sb:readSkeletonData(skelPath)
end


local toolsPath = arg[1] or "E:/Github/Lua/MyLua/tools/spine_export"
local resPath = arg[2] or "E:/Github/Lua/MyLua/tools/spine_export/res"

logs.clear()
logs.setLogPath(toolsPath .. "log.txt")
main(resPath)