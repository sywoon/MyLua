
local TextureAtlasPage = class("TextureAtlasPage")

function TextureAtlasPage:ctor()
    self.name = ""
    self.minFilter =  TextureFilter.Linear
    self.magFilter =  TextureFilter.Linear
    self.uWrap =  TextureWrap.Repeat
    self.vWrap =  TextureWrap.Repeat
    self.texture =  nil  --Texture
    self.width =  0
    self.height =  0
end




return TextureAtlasPage