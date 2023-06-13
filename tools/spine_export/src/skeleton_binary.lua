local BinaryInput = require "binary_input"
local Color = require "color"
local SD = require "data.skeleton_data"
local BoneData = require "data.bone_data"
local SlotData = require "data.slot_data"
local IKConstraintData = require "data.ik_constraint_data"
local TCData = require "data.transform_constraint_data"
local PCData = require "data.path_constraint_data"
local Skin = require "skin"
local Vertices = require "vertices"


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

local AttachmentTypeValues = {
    AttachmentType.Region,
    AttachmentType.BoundingBox,
    AttachmentType.Mesh,
    AttachmentType.LinkedMesh,
    AttachmentType.Path,
    AttachmentType.Point,
    AttachmentType.Clipping,
}


local SB = class("SkeletonBinary")

function SB:ctor(attachmentLoader)
    self.scale = 1
    self.attachmentLoader = attachmentLoader
end

function SB:readSkeletonData(skelFile)
    local data = io.readFile(skelFile, "rb")
    if data == nil then
        loge("read skel file error", skelFile)
        return
    end

    local input = BinaryInput.new(data)
    local sd = SD.new()
    sd.hash = input:readString()
    sd.version = input:readString()
    sd.x = input:readFloat()
    sd.y = input:readFloat()
    sd.width = input:readFloat()
    sd.height = input:readFloat()

    local nonessential = input:readBoolean()
    if nonessential then
        sd.fps = input:readFloat()
        sd.imagesPath = input:readString()
        sd.audioPath = input:readString()
    end
    
    -- strings
    local n = input:readInt(true)
    for i = 1, n, 1 do
        table.insert(input.strings, input:readString())
    end
    table.print("strings", input.strings)

    --bones
    local scale = self.scale
    local n = input:readInt(true)
    for i = 1, n do
        local name = input:readString()
        --注意lua还是会执行input:readInt(true)
        -- local parent = i == 1 and nil or sd.bones[input:readInt(true)]
        local parent = nil
        if i > 1 then
            parent = sd.bones[input:readInt(true)+1]
        end

        local data = BoneData.new(i, name, parent)
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
    for i = 1, n, 1 do
        local slotName = input:readString()
        local boneIdx = input:readInt(true)
        local boneData = sd.bones[boneIdx+1]
        local data = SlotData.new(i, slotName, boneData, boneIdx+1)
        Color.rgba8888ToColor(data.color, input:readInt32())

        local darkColor = input:readInt32()
        if darkColor ~= -1 then
            Color.rgb888ToColor(data.darkColor, darkColor)
        end

        data.attachmentName = input:readStringRef() or ""
        local modeIdx = input:readInt(true)
        data.blendMode = BlendModeValues[modeIdx+1];
        table.insert(sd.slots, data)
        -- print("slot", i, n)
        -- data:dump()
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
    sd:dump()

    -- Transform constraints
    local n = input:readInt(true)
    for i = 1, n, 1 do
        local data = TCData.new(input:readString())
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
        -- print("transform constraints", i, n)
        -- data:dump()
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
        data.positionMode = PositionModeValues[input:readInt(true)+1]
        data.spacingMode = SpacingModeValues[input:readInt(true)+1]
        data.rotateMode = RotateModeValues[input:readInt(true)+1]
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
    local defaultSkin = self:readSkin(input, sd, true, nonessential)
    if defaultSkin ~= nil then
        sd.defaultSkin = defaultSkin
        table.insert(sd.skins, defaultSkin)
    end

    print("end")
end

function SB:readSkin(input, skeletonData, defaultSkin, nonessential)
    local skin = nil
    local slotCount = 0

    if defaultSkin then
        slotCount = input:readInt(true)
        if slotCount == 0 then 
            return nil
        end

        skin = Skin.new("default")
    else
        skin = Skin.new(input:readStringRef());
        skin.bones.length = input.readInt(true);
        for i = 1, skin.bones.length do
            skin.bones[i+1] = skeletonData.bones[input:readInt(true)]
        end

        for i = 1, input:readInt(true) do
            local constraint = skeletonData.ikConstraints[input:readInt(true)]
            table.insert(skin.constraints, constraint)
        end
        for i = 1, input:readInt(true) do
            local constraint = skeletonData.transformConstraints[input:readInt(true)]
            table.insert(skin.constraints, constraint)
        end
        for i = 1, input:readInt(true) do
            local constraint = skeletonData.pathConstraints[input:readInt(true)]
            table.insert(skin.constraints, constraint)
        end
        slotCount = input:readInt(true)
    end

    for i = 1, slotCount do
        local slotIndex = input:readInt(true)
        for ii = 1, input:readInt(true) do
            local name = input:readStringRef()
            local attachment = self:readAttachment(input, skeletonData, skin, slotIndex, name, nonessential)
            if attachment ~= nil then
                skin:setAttachment(slotIndex, name, attachment)
            end
        end
        return skin
    end
end

function SB:readAttachment(input, skeletonData, skin, slotIndex, attachmentName, nonessential)
    local scale = self.scale
    local name = input:readStringRef() or attachmentName
    local typeIndex = input:readByte()
    local type = AttachmentTypeValues[typeIndex+1]
    if type == AttachmentType.Region then
        return self:readAttachment_Region(input, name, skin, nonessential)
    elseif type == AttachmentType.BoundingBox then
        return self:readAttachment_BoundingBox(input, name, skin, nonessential)
    elseif type == AttachmentType.Mesh then
        return self:readAttachment_Mesh(input, name, skin, nonessential)
    elseif type == AttachmentType.LinkedMesh then
        return self:readAttachment_LinkedMesh(input, name, skin, nonessential)
    elseif type == AttachmentType.Path then
        return self:readAttachment_Path(input, name, skin, nonessential)
    elseif type == AttachmentType.Point then
        return self:readAttachment_Point(input, name, skin, nonessential)
    elseif type == AttachmentType.Clipping then
        return self:readAttachment_Clipping(input, name, skin, nonessential, skeletonData)
    end
end

function SB:readAttachment_Region(input, name, skin, nonessential)
    local path = input:readStringRef() or name
    local rotation = input:readFloat()
    local x = input:readFloat()
    local y = input:readFloat()
    local scaleX = input:readFloat()
    local scaleY = input:readFloat()
    local width = input:readFloat()
    local height = input:readFloat()
    local color = input:readInt32()

    local region = self.attachmentLoader:newRegionAttachment(skin, name, path)
    if not region then
        return nil
    end
    region.path = path
    region.x = x * scale
    region.y = y * scale
    region.scaleX = scaleX
    region.scaleY = scaleY
    region.rotation = rotation
    region.width = width * scale
    region.height = height * scale
    Color.rgba8888ToColor(region.color, color)
    region:updateOffset()
    return region
end

function SB:readAttachment_BoundingBox(input, name, skin, nonessential)
    local vertexCount = input:readInt(true)
    local vertices = self:readVertices(input, vertexCount)
    local color = nonessential and input:readInt32() or 0

    local box = self.attachmentLoader:newBoundingBoxAttachment(skin, name)
    if not box then
        return nil
    end
    box.worldVerticesLength = vertexCount << 1
    box.vertices = vertices.vertices
    box.bones = vertices.bones
    if nonessential then
        Color.rgba8888ToColor(box.color, color)
    end
    return box
end

function SB:readAttachment_Mesh(input, name, skin, nonessential)
    local path = input:readStringRef() or name
    local color = input:readInt32()
    local vertexCount = input:readInt(true)
    local uvs = self:readFloatArray(input, vertexCount << 1, 1)
    local triangles = self:readShortArray(input)
    local vertices = self:readVertices(input, vertexCount)
    local hullLength = input:readInt(true)
    local edges = nil
    local width = 0
    local height = 0

    if nonessential then
        edges = self:readShortArray(input)
        width = input:readFloat()
        height = input:readFloat()
    end

    local mesh = self.attachmentLoader:newMeshAttachment(skin, name, path)
    if mesh == nil then
        return nil
    end
    mesh.path = path
    Color.rgba8888ToColor(mesh.color, color)
    mesh.bones = vertices.bones
    mesh.vertices = vertices.vertices
    mesh.worldVerticesLength = vertexCount << 1
    mesh.triangles = triangles
    mesh.regionUVs = uvs
    mesh:updateUVs()
    mesh.hullLength = hullLength << 1

    if nonessential then
        mesh.edges = edges
        mesh.width = width * scale
        mesh.height = height * scale
    end
    return mesh
end

function SB:readAttachment_LinkedMesh(input, name, skin, nonessential)
    local path = input:readStringRef() or name
    local color = input:readInt32()
    local skinName = input:readStringRef()
    local parent = input:readStringRef()
    local inheritDeform = input:readBoolean()
    local width = 0
    local height = 0
    if nonessential then
        width = input:readFloat()
        height = input:readFloat()
    end

    local mesh = this.attachmentLoader:newMeshAttachment(skin, name, path)
    if mesh == nil then 
        return null
    end
    mesh.path = path
    Color.rgba8888ToColor(mesh.color, color)
    if nonessential then
        mesh.width = width * scale
        mesh.height = height * scale
    end
    table.insert(self.linkedMeshes, LinkedMesh.create(mesh, skinName, slotIndex, parent, inheritDeform))
    return mesh
end

function SB:readAttachment_Path(input, name, skin, nonessential)
    local closed = input:readBoolean()
    local constantSpeed = input:readBoolean()
    local vertexCount = input:readInt(true)
    local vertices = this.readVertices(input, vertexCount)
    local lengths = Utils.newArray(vertexCount / 3, 0)
    for i = 1, lengths.length do
        lengths[i] = input:readFloat() * scale
    end
    local color = nonessential and input:readInt32() or 0
    local path = this.attachmentLoader:newPathAttachment(skin, name);
    if path == nil then
        return nil
    end
    path.closed = closed
    path.constantSpeed = constantSpeed
    path.worldVerticesLength = vertexCount << 1
    path.vertices = vertices.vertices
    path.bones = vertices.bones
    path.lengths = lengths
    if nonessential then 
        Color.rgba8888ToColor(path.color, color)
    end
    return path
end

function SB:readAttachment_Point(input, name, skin, nonessential)
    local rotation = input:readFloat()
    local x = input:readFloat()
    local y = input:readFloat()
    local color = nonessential and input:readInt32() or 0

    local point = this.attachmentLoader:newPointAttachment(skin, name)
    if point == nil then
        return nil
    end
    point.x = x * scale
    point.y = y * scale
    point.rotation = rotation
    if nonessential then 
        Color.rgba8888ToColor(point.color, color)
    end
    return point
end

function SB:readAttachment_Clipping(input, name, skin, nonessential, skeletonData)
    local endSlotIndex = input:readInt(true)
    local vertexCount = input:readInt(true)
    local vertices = self:readVertices(input, vertexCount)
    local color = nonessential and input:readInt32() or 0

    local clip = self.attachmentLoader:newClippingAttachment(skin, name)
    if clip == nil then
        return nil
    end
    clip.endSlot = skeletonData.slots[endSlotIndex+1]
    clip.worldVerticesLength = vertexCount << 1
    clip.vertices = vertices.vertices
    clip.bones = vertices.bones
    if nonessential then
        Color.rgba8888ToColor(clip.color, color)
    end 
    return clip
end


function SB:readVertices(input, vertexCount)
    local verticesLength = vertexCount << 1
    local vertices = Vertices.new()
    local scale = self.scale
    if not input:readBoolean() then
        vertices.vertices = self:readFloatArray(input, verticesLength, scale)
        return vertices
    end

    local weights = {}  --Array<number>
    local bonesArray = {} --Array<number>
    for i = 1, vertexCount do
        local boneCount = input:readInt(true)
        table.insert(bonesArray, boneCount)
        for ii = 1, boneCount do
            table.insert(bonesArray, input:readInt(true))
            table.insert(weights, input:readFloat() * scale)
            table.insert(weights, input:readFloat() * scale)
            table.insert(weights, input:readFloat())
        end
    end
    vertices.vertices = weights
    vertices.bones = bonesArray
    return vertices
end

function SB:readFloatArray(input, n, scale)
    local array = {}  --Array<number>
    for i = 1, n do
        array[i] = input:readFloat() * scale
    end
    return array
end

function SB:readShortArray(input)
    local n = input:readInt(true);
    local array = {}
    for i = 1, n do
        array[i] = input:readShort()
    end
    return array
end


return SB