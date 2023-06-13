local Color = require "Color"
local BD = class("BoneData")

local TransformMode = {
    Normal = 0,
    OnlyTranslation = 1,
    NoRotationOrReflection = 2,
    NoScale = 3, 
    NoScaleOrReflection = 4,
}
BD.TransformMode = TransformMode


function BD:ctor(index, name, parent)
    self.index = index  --base:1
    self.name = name
    self.parent = parent

    self.x = 0
    self.y = 0
    self.rotation = 0
    self.scaleX = 1
    self.scaleY = 1
    self.shearX = 0
    self.shearY = 0
    self.transformMode = TransformMode.Normal
    self.skinRequired = false
    self.color = Color.new()
    self.length = 0
end

function BD:dump(pre)
    pre = pre or ""
    -- print(pre .. "--BoneData desc--")
    print(pre .. _F([[ bone index:%d name:%s xy:[%f,%f] rotation:%f scale:[%f,%f] shear:[%f,%f] color:[%f,%f,%f,%f] length:%f, mode:%d skin:%d]], 
        self.index, self.name,
        self.x, self.y, self.rotation,
        self.scaleX, self.scaleY, self.shearX, self.shearY, 
        self.color.r, self.color.g, self.color.b, self.color.a,
        self.length, self.transformMode, (self.skinRequired and 1 or 0)
    ))
end

return BD