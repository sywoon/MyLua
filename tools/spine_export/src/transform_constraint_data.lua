
local CData = require "constraint_data"
local TCData = class("TransformConstraintData", CData)

function TCData:ctor(name)
    TCData.super.ctor(self, name)
    self.bones = {}
    self.target = nil  --目标bone
    self.targetBoneIdx = 0  --base:0
    self.rotateMix = 0
    self.translateMix = 0
    self.scaleMix = 0
    self.shearMix = 0
    self.offsetRotation = 0
    self.offsetX = 0
    self.offsetY = 0
    self.offsetScaleX = 0
    self.offsetScaleY = 0
    self.offsetShearY = 0
    self.relative = false
    self.isLocal = false
end

function TCData:dump()
    print(_F([[TCData name:%s order:%d skinRequired:%d targetBoneIdx:%d rotateMix:%f 
            translateMix:%f scaleMix:%f shearMix:%f offsetRotation:%f
            offsetX:%f offsetY:%f offsetScaleX:%f offsetScaleY:%f offsetShearY:%f 
            relative:%d isLocal:%d
            ]],
        self.name, self.order, self.skinRequired and 1 or 0, self.targetBoneIdx, self.rotateMix,
        self.translateMix, self.scaleMix, self.shearMix, self.offsetRotation, 
        self.offsetX, self.offsetY, self.offsetScaleX, self.offsetScaleY, self.offsetShearY,
        self.relative and 1 or 0, self.isLocal and 1 or 0
    ))
end


return TCData