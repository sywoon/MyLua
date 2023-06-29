
local TextureRegion = require "atlas.texture_region"
local TextureAtlasRegion = class("TextureAtlasRegion", TextureRegion)


function TextureAtlasRegion:ctor()
    TextureAtlasRegion.super.ctor(self)
    self.type = RegionType.TextureAtlas

    self.page = nil  --TextureAtlasPage
    self.name = ""

    -- 合图去除周边空白区域后的位置和大小 用于uv计算
    self.x = 0
    self.y = 0
    self.width = 0
    self.height = 0

    --原始大小 若有空白边被裁剪offsetX为负数 且originalWidth>width
    self.offsetX = 0
    self.offsetY = 0
    self.originalWidth = 0
    self.originalHeight = 0

    self.degrees = 0
    self.rotate = false
    self.u = 0
    self.v = 0
    self.u2 = 1
    self.v2 = 1

    self.index = 0
    self.texture = nil  -- Texture
    
end


return TextureAtlasRegion