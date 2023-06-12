require "global"
require "spine_const"
local TextureAtlas = require "atlas.texture_atlas"
local AtlasAttachmentLoader = require "attachment.atlas_attachment_loader"
local SkeletonBinary = require "skeleton_binary"


function main(resPath)
    local path = resPath .. "spineboy/spineboy.atlas"
    local textureAtlas = TextureAtlas.new()
    textureAtlas:load(path)
	local atlasLoader = AtlasAttachmentLoader.new(textureAtlas)

    local sb = SkeletonBinary.new(atlasLoader)

    local skelPath = resPath .. "spineboy/spineboy.skel"
    sb:readSkeletonData(skelPath)
end


local toolsPath = arg[1] or "E:/Github/Lua/MyLua/tools/spine_export"
local resPath = arg[2] or "E:/Github/Lua/MyLua/tools/spine_export/res"

logs.clear()
logs.setLogPath(toolsPath .. "log.txt")
main(resPath)