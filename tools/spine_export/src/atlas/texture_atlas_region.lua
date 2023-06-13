
local TextureRegion = require "atlas.texture_region"
local TextureAtlasRegion = class("TextureAtlasRegion", TextureRegion)


function TextureAtlasRegion:ctor()
    TextureAtlasRegion.super.ctor(self)
    self.type = RegionType.TextureAtlas

    self.page = nil  --TextureAtlasPage
    self.name = ""
    self.x = 0
    self.y = 0
    self.index = 0
    self.rotate = false
    self.degrees = 0
    self.texture = nil  -- Texture
end


return TextureAtlasRegion