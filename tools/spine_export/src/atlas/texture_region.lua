

local TextureRegion = class("TextureRegion")


function TextureRegion:ctor()
    self.renderObject = nil
    self.u = 0
    self.v = 0
    self.u2 = 0 
    self.v2 = 0
    self.width = 0 
    self.height = 0
    self.rotate = false
    self.offsetX = 0 
    self.offsetY = 0
    self.originalWidth = 0 
    self.originalHeight = 0
end


return TextureRegion
