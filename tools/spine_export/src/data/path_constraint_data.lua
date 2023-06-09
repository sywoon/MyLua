local CData = require "data.constraint_data"
local PCData = class("PathConstraintData", CData)


local PositionMode = {
    Fixed = 0, 
    Percent = 1,
}
PCData.PositionMode = PositionMode

SpacingMode = {
    Length = 0, 
    Fixed = 1, 
    Percent = 2,
}
PCData.SpacingMode = SpacingMode

RotateMode = {
    Tangent = 0, 
    Chain = 1, 
    ChainScale = 2,
}
PCData.RotateMode = RotateMode


function PCData:ctor(name)
    PCData.super.ctor(self, name)
    self.bones = {}
    self.target = nil  --目标bone
    self.targetSlotIdx = 0  --base:0
    self.positionMode = PositionMode.Fixed
    self.spacingMode = SpacingMode.Length
    self.rotateMode = RotateMode.Tangent
    self.offsetRotation = 0
    self.position = 0
    self.spacing = 0
    self.rotateMix = 0
    self.translateMix = 0
end


return PCData
