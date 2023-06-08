local BinaryInput = require "binary_input"
local Color = require "color"
local SD = require "skeleton_data"
local BoneData = require "bone_data"
local SlotData = require "slot_data"
local IKConstraintData = require "ik_constraint_data"
local TransformConstraintData = require "transform_constraint_data"
local PCData = require "path_constraint_data"


local TransformMode=  BoneData.TransformMode
local TransformModeValues = {
    TransformMode.Normal,
    TransformMode.OnlyTranslation,
    TransformMode.NoRotationOrReflection,
    TransformMode.NoScale,
    TransformMode.NoScaleOrReflection,
}

local BlendModeValues = {
    BlendMode.Normal, 
    BlendMode.Additive,
    BlendMode.Multiply, 
    BlendMode.Screen
}

local PositionMode = PCData.PositionMode
local PositionModeValues = {
    PositionMode.Fixed, 
    PositionMode.Percent,
}

local SpacingMode = PCData.SpacingMode
local SpacingModeValues = {
    SpacingMode.Length, 
    SpacingMode.Fixed, 
    SpacingMode.Percent,
}

local RotateMode = PCData.RotateMode
local RotateModeValues = {
    RotateMode.Tangent, 
    RotateMode.Chain, 
    RotateMode.ChainScale,
}

local SB = class("SkeletonBinary")

function SB:ctor()
    self.scale = 1
end

function SB:readSkeletonData(skelFile)
    local data = io.readFile(skelFile, "rb")
    if data == nil then
        loge("read skel file error", skelFile)
        return
    end

    print("read skel", skelFile, #data)
    local input = BinaryInput.new(data)
    local sd = SD.new()
    sd.hash = input:readString()
    print("hash")
    sd.version = input:readString()
    print("version")
    sd.x = input:readFloat()
    sd.y = input:readFloat()
    sd.width = input:readFloat()
    sd.height = input:readFloat()

    local nonessential = input:readBoolean()
    if nonessential then
        sd.fps = input:readFloat()
        sd.imagesPath = input:readString()
        print('imagesPath')
        sd.audioPath = input:readString()
        print('audioPath')
    end

    -- strings
    local n = input:readInt(true)
    print("strings", n)
    for i = 1, n, 1 do
        table.insert(input.strings, input:readString())
    end
    table.print(input.strings)

    --bones
    local scale = self.scale
    local n = input:readInt(true)
    print("bones", n)
    for i = 1, n do
        local name = input:readString()
        print('name')
        --注意lua还是会执行input:readInt(true)
        -- local parent = i == 1 and nil or sd.bones[input:readInt(true)]
        local parent = nil
        if i > 1 then
            parent = sd.bones[input:readInt(true)]
        end

        local data = BoneData.new(i-1, name, parent)
        data.rotation = input:readFloat()
        data.x = input:readFloat() * scale
        data.y = input:readFloat() * scale
        data.scaleX = input:readFloat()
        data.scaleY = input:readFloat()
        data.shearX = input:readFloat()
        data.shearY = input:readFloat()
        data.length = input:readFloat() * scale
        local modeIdx = input:readInt(true)
        data.transformMode = TransformModeValues[modeIdx+1]
        data.skinRequired = input:readBoolean()

        if nonessential then
            Color.rgba8888ToColor(data.color, input:readInt32());
        end

        table.insert(sd.bones, data)
        -- print("bone", i, n)
        -- data:dump()
    end

    --slots
    local n = input:readInt(true)
    print("slots", n)
    for i = 1, n, 1 do
        local slotName = input:readString()
        local boneIdx = input:readInt(true)
        local boneData = sd.bones[boneIdx]
        local data = SlotData.new(i-1, slotName, boneData, boneIdx)
        Color.rgba8888ToColor(data.color, input:readInt32())

        local darkColor = input:readInt32()
        if darkColor ~= -1 then
            Color.rgb888ToColor(data.darkColor, darkColor)
        end

        data.attachmentName = input:readStringRef() or ""
        local modeIdx = input:readInt(true)
        data.blendMode = BlendModeValues[modeIdx+1];
        table.insert(sd.slots, data)
        print("slot", i, n)
        data:dump()
    end

    --IK constraints  (Inverse Kinematics，逆运动学 FK，Forward Kinematics)
    local n = input:readInt(true)
    for i = 1, n, 1 do
        local data = IKConstraintData.new(input:readString())
        data.order = input:readInt(true)
        data.skinRequired = input:readBoolean()
        local nn = input:readInt(true)
        for ii = 1, nn, 1 do
            table.insert(data.bones, sd.bones[input:readInt(true)+1])
        end

        local boneIdx = input:readInt(true)
        data.targetBoneIdx= boneIdx
        data.target = sd.bones[boneIdx+1]
        data.mix = input:readFloat()
        data.softness = input:readFloat() * scale
        data.bendDirection = input:readByte(true)
        data.compress = input:readBoolean()
        data.stretch = input:readBoolean()
        data.uniform = input:readBoolean()
        table.insert(sd.ikConstraints, data)
        -- print("ik", i, n)
        -- data:dump()
    end

    -- Transform constraints
    local n = input:readInt(true)
    for i = 1, n, 1 do
        local data = TransformConstraintData.new(input:readString())
        data.order = input:readInt(true)
        data.skinRequired = input:readBoolean()
        local nn = input:readInt(true)
        for ii = 1, nn, 1 do
            table.insert(data.bones, sd.bones[input:readInt(true)+1])
        end
        local boneIdx = input:readInt(true)
        data.targetBoneIdx= boneIdx
        data.target = sd.bones[boneIdx+1]
        data.isLocal = input:readBoolean()
        data.relative = input:readBoolean()
        data.offsetRotation = input:readFloat()
        data.offsetX = input:readFloat() * scale
        data.offsetY = input:readFloat() * scale
        data.offsetScaleX = input:readFloat()
        data.offsetScaleY = input:readFloat()
        data.offsetShearY = input:readFloat()
        data.rotateMix = input:readFloat()
        data.translateMix = input:readFloat()
        data.scaleMix = input:readFloat()
        data.shearMix = input:readFloat()
        table.insert(sd.transformConstraints, data)
        print("transform constraints", i, n)
        data:dump()
    end

    -- Path constraints
    local n = input:readInt(true)
    for i = 1, n, 1 do
        local data = PathConstraintData.create(input:readString())
        data.order = input:readInt(true)
        data.skinRequired = input:readBoolean()
        local nn = input:readInt(true)
        for ii = 1, nn, 1 do
            table.insert(data.bones, sd.bones[input:readInt(true)+1])
        end

        local slotIdx = input:readInt(true)
        data.targetSlotIdx= slotIdx
        data.target = sd.slots[slotIdx+1]
        data.positionMode = PositionModeValues[input:readInt(true)]
        data.spacingMode = SpacingModeValues[input:readInt(true)]
        data.rotateMode = RotateModeValues[input:readInt(true)]
        data.offsetRotation = input:readFloat()
        data.position = input:readFloat()
        if data.positionMode == PositionMode.Fixed then
            data.position = data.position * scale
        end
        data.spacing = input:readFloat()
        if data.spacingMode == SpacingMode.Length or 
            data.spacingMode == SpacingMode.Fixed then
            data.spacing = data.spacing * scale
        end 
        data.rotateMix = input:readFloat()
        data.translateMix = input:readFloat()

        table.insert(sd.pathConstraints, data)
        -- print("path constraints", i, n)
        -- data:dump()
    end

    --default skin

    print("end")
end



return SB