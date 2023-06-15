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
local EventData = require "data.event_data"
local Animation = require "animation.animation"
local AttachmentTimeline = require "animation.attachment_timeline"
local RotateTimeline = require "animation.rotate_timeline"
local TranslateTimeline = require "animation.translate_timeline"
local ScaleTimeline = require "animation.scale_timeline"
local ShearTimeline = require "animation.shear_timeline"
local IKConstraintTimeline = require "animation.ik_constraint_timeline"
local TransformTimeline = require "animation.transform_timeline"
local DeformTimeline = require "animation.deform_timeline"

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
    self.linkedMeshes = {}
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
    -- print("strings", table.tostring(input.strings))

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
        defaultSkin:dump()
    end

    do
        local n = #sd.skins + input:readInt(true)
        for i = #sd.skins+1, n, 1 do
            local skin = self:readSkin(input, sd, false, nonessential)
            table.insert(sd.skins, skin)
        end
    end

    --linked meshes
    print("linked meshes", input.index)
    for i = 1, #self.linkedMeshes do
        local linkedMesh = self.linkedMeshes[i]
        local skin = linkedMesh.skin and sd:findSkin(linkedMesh.skin) or sd.defaultSkin
        if not skin then
            error("skin not found", linkedMesh.skin)
        end
        local parent = skin:getAttachment(linkedMesh.slotIndex, linkedMesh.parent)
        if not parent then
            error("parent mesh not found", linkedMesh.parent)
        end
        linkedMesh.mesh.deformAttachment = linkedMesh.inheritDeform and parent or linkedMesh.mesh
        linkedMesh.mesh:setParentMesh(parent)
        linkedMesh.mesh:updateUVs()
    end
    self.linkedMeshes = {}

    --events
    n = input:readInt(true)
    print("events", n, input.index)
    for i = 1, n, 1 do
        local data = EventData.new(input:readStringRef())
        data.intValue = input:readInt(false)
        data.floatValue = input:readFloat()
        data.stringValue = input:readString()
        data.audioPath = input:readString()
        if data.audioPath then
            data.volume = input:readFloat()
            data.balance = input:readFloat()
        end
        table.insert(sd.events, data)
        -- data:dump()
    end

    --animations
    n = input:readInt(true)
    print("animations", n)
    for i = 1, n, 1 do
        local animation = self:readAnimation(input, input:readString(), sd)
        table.insert(sd.animations, animation)
    end

    -- sd:dump()
    print("readSkeletonData end")
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
        skin.bones.length = input:readInt(true);
        for i = 1, skin.bones.length do
            skin.bones[i] = skeletonData.bones[input:readInt(true)+1]
        end

        for i = 1, input:readInt(true) do
            local constraint = skeletonData.ikConstraints[input:readInt(true)+1]
            table.insert(skin.constraints, constraint)
        end
        for i = 1, input:readInt(true) do
            local constraint = skeletonData.transformConstraints[input:readInt(true)+1]
            table.insert(skin.constraints, constraint)
        end
        for i = 1, input:readInt(true) do
            local constraint = skeletonData.pathConstraints[input:readInt(true)+1]
            table.insert(skin.constraints, constraint)
        end
        slotCount = input:readInt(true)
    end

    for i = 1, slotCount do
        local slotIndex = input:readInt(true)
        local count =  input:readInt(true)
        -- print("slotCount sub count", i, slotCount, slotIndex, count)
        for ii = 1, count do
            local name = input:readStringRef()
            local attachment = self:readAttachment(input, skeletonData, skin, slotIndex, name, nonessential)
            if attachment ~= nil then
                skin:setAttachment(slotIndex+1, name, attachment)
            end
        end
    end
    return skin
end

function SB:readAttachment(input, skeletonData, skin, slotIndex, attachmentName, nonessential)
    local scale = self.scale
    local name = input:readStringRef() or attachmentName
    local typeIndex = input:readByte()
    local type = AttachmentTypeValues[typeIndex+1]
    -- print("readAttachment", type)
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

    local scale = self.scale
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
        mesh.width = width * self.scale
        mesh.height = height * self.scale
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

function SB:readAnimation(input, name, sd)
    local timelines = {}  --Array<Timeline>
    local scale = self.scale
    local duration = 0
    local tempColor1 = Color.new()
    local tempColor2 = Color.new()

    --slot timelines
    for i = 1, input:readInt(true), 1 do
        local slotIdx = input:readInt(true)
        for ii = 1, input:readInt(true), 1 do
            local timelineType = input:readByte()
            local frameCount = input:readInt(true)
            print("--ss", slotIdx, timelineType, frameCount)
            if timelineType == SlotType.ATTACHMENT then
                local timeline = AttachmentTimeline.new(frameCount)
                timeline.slotIndex = slotIdx
                print("AttachmentTimeline", frameCount, slotIdx)
                for frameIdx = 1, frameCount, 1 do
                    timeline:setFrame(frameIdx, input:readFloat(), input:readStringRef())
                end
                table.insert(timelines, timeline)
                duration = math.max(duration, timeline.frames[frameCount])
            elseif timelineType == SlotType.COLOR then
                local timeline = colorTimeline.new(frameCount)
                timeline.slotIndex = slotIdx
                for frameIdx = 1, frameCount, 1 do
                    local time = input:readFloat()
                    Color.rgba8888ToColor(tempColor1, input:readInt32())
                    timeline:setFrame(frameIdx+1, time, tempColor1.r, tempColor1.g, tempColor1.b, tempColor1.a)
                    if frameIdx < frameCount then
                        self:readCurve(input, frameIdx, timeline)
                    end
                end
                table.insert(timelines, timeline)
                duration = math.max(duration, timeline.frames[frameCount * ColorTimeline.ENTRIES])
            elseif timelineType == SlotType.TWO_COLOR then
                local timeline = TwoColorTimeline.new(frameCount)
                timeline.slotIndex = slotIdx
                for frameIdx = 1, frameCount, 1 do
                    Color.rgba8888ToColor(tempColor1, input:readInt32())
                    Color.rgba8888ToColor(tempColor2, input:readInt32())
                    timeline:setFrame(frameIndex, time, tempColor1.r, tempColor1.g, tempColor1.b, tempColor1.a, 
                                        tempColor2.r, tempColor2.g, tempColor2.b)
                    if frameIdx < frameCount then
                        self:readCurve(input, frameIdx, timeline)
                    end
                end
                table.insert(timelines, timeline)
                duration = math.max(duration, timeline.frames[frameCount * TwoColorTimeline.ENTRIES])
            end
        end
    end

    --bone timelines
    for i = 1, input:readInt(true), 1 do
        local boneIdx = input:readInt(true)
        for ii = 1, input:readInt(true), 1 do
            local timelineType = input:readByte()
            local frameCount = input:readInt(true)
            if timelineType == BoneType.BONE_ROTATE then
                local timeline = RotateTimeline.new(frameCount)
                timeline.boneIndex = boneIdx
                for frameIdx = 1, frameCount, 1 do
                    timeline:setFrame(frameIdx, input:readFloat(), input:readFloat())
                    if frameIdx < frameCount then
                        self:readCurve(input, frameIdx, timeline)
                    end
                end 
                table.insert(timelines, timeline)
                duration = math.max(duration, timeline.frames[frameCount * RotateTimeline.ENTRIES])
            elseif timelineType == BoneType.BONE_TRANSLATE
                or timelineType == BoneType.BONE_SCALE
                or timelineType == BoneType.BONE_SHEAR then
                local timeline
                local timelineScale = 1
                if timelineType == BoneType.BONE_TRANSLATE then
                    timeline = TranslateTimeline.new(frameCount)
                    timelineScale = self.scale
                elseif timelineType == BoneType.BONE_SCALE then
                    timeline = ScaleTimeline.new(frameCount)
                elseif timelineType == BoneType.BONE_SHEAR then
                    timeline = ShearTimeline.new(frameCount)
                end

                timeline.boneIndex = boneIdx
                for frameIdx = 1, frameCount, 1 do
                    timeline:setFrame(frameIdx, input:readFloat(), input:readFloat()*timelineScale,
                                    input:readFloat()*timelineScale)
                    if frameIdx < frameCount then
                        self:readCurve(input, frameIdx, timeline)
                    end
                end 
                table.insert(timelines, timeline)
                duration = math.max(duration, timeline.frames[frameCount * TranslateTimeline.ENTRIES])
            end
        end
    end

    --ik constraint timelines
    for i = 1, input:readInt(true), 1 do
        local index = input:readInt(true)
        local frameCount = input:readInt(true)
        local timeline = IKConstraintTimeline.new(frameCount)
        timeline.ikConstraintIndex = index
        for frameIdx = 1, frameCount, 1 do
            timeline:setFrame(frameIdx, input:readFloat(), input:readFloat(),input:readFloat()* scale, 
                        input:readByte(), input:readBoolean(),input:readBoolean())
            if frameIdx < frameCount then
                self:readCurve(input, frameIdx, timeline)
            end
        end

        table.insert(timelines, timeline)
        duration = math.max(duration, timeline.frames[frameCount * IKConstraintTimeline.ENTRIES])
    end

    --Transform constraint timelines
    for i = 1, input:readInt(true), 1 do
        local index = input:readInt(true)
        local frameCount = input:readInt(true)
        local timeline = TransformTimeline.new(frameCount)
        timeline.transformConstraintIndex = index
        for frameIdx = 1, frameCount, 1 do
            timeline:setFrame(frameIdx, input:readFloat(), input:readFloat(), input:readFloat(), 
                                input:readFloat(), input:readFloat())
            if frameIdx < frameCount then
                self:readCurve(input, frameIdx, timeline)
            end
        end
        table.insert(timelines, timeline)
        duration = math.max(duration, timeline.frames[frameCount * TransformTimeline.ENTRIES])
    end

    -- Path constraint timelines.
    for i = 1, input:readInt(true), 1 do
        local index = input:readInt(true)
        local data = sd.pathConstraints[index+1]
        for ii = 1, input:readInt(true), 1 do
            local timelineType = input:readByte()
            local frameCount = input:readInt(true)
            if timelineType == PathType.PATH_POSITION
                or timelineType == PathType.PATH_SPACING then
                local timeline
                local timelineScale = 1
                if timelineType == PathType.PATH_POSITION then
                    timeline = PathConstraintSpacingTimeline.new(frameCount)
                    if data.positionMode == PositionMode.Fixed then
                        timelineScale = scale
                    end 
                elseif timelineType == BoneType.PATH_SPACING then
                    timeline = PathConstraintSpacingTimeline.new(frameCount)
                    if data.spacingMode == SpacingMode.Length 
                        or data.spacingMode == SpacingMode.Fixed then
                        timelineScale = scale
                    end
                end
                timeline.pathConstraintIndex = index
                for frameIdx = 1, frameCount, 1 do
                    timeline:setFrame(frameIdx, input:readFloat(), input:readFloat() * timelineScale)
                    if frameIdx < frameCount then
                        self:readCurve(input, frameIdx, timeline)
                    end
                end
                table.insert(timelines, timeline)
                duration = math.max(duration, timeline.frames[frameCount * PathConstraintPositionTimeline.ENTRIES])
            elseif timelineType == PathType.PATH_MIX then
                local timeline = PathConstraintMixTimeline.new(frameCount)
                timeline.pathConstraintIndex = index
                for frameIdx = 1, frameCount, 1 do
                    timeline:setFrame(frameIdx, input:readFloat(), input:readFloat(), input:readFloat())
                    if frameIdx < frameCount then
                        self:readCurve(input, frameIdx, timeline)
                    end
                end
                table.insert(timelines, timeline)
                duration = math.max(duration, timeline.frames[frameCount * PathConstraintMixTimeline.ENTRIES])
            end
        end
    end

    --deform timelines
    for i = 1, input:readInt(true), 1 do
        local skin = sd.skins[input:readInt(true)+1]
        for ii = 1, input:readInt(true), 1 do
            local slotIdx = input:readInt(true)
            for iii = 1, input:readInt(true), 1 do
                local attachment = skin:getAttachment(slotIdx+1, input:readStringRef())
                local weighted = attachment.bones ~= nil
                local vertices = attachment.vertices
                local deformLength = weighted and #vertices / 3 * 2 or #vertices

                local frameCount = input:readInt(true)
                local timeline = DeformTimeline.new(frameCount)
                timeline.slotIndex = slotIdx
                timeline.attachment = attachment

                for frameIdx = 1, frameCount, 1 do
                    local time = input:readFloat()
                    local deform;
                    local ends = input:readInt(true)
                    if ends == 0 then
                        deform = weighted and {} or vertices  --deformLength
                    else
                        deform = {}  --deformLength
                        local start = input:readInt(true)
                        ends = ends + start
                        if scale == 1 then
                            for v = start+1, v <= ends, 1 do
                                deform[v] = input:readFloat()
                            end
                        else
                            for v = start+1, v <= ends, 1 do
                                deform[v] = input:readFloat() * scale
                            end
                        end
                        if not weighted then
                            for v = 1, deform.length, 1 do
                                deform[v] = deform[v] + vertices[v]
                            end
                        end
                    end

                    timeline:setFrame(frameIdx, time, deform)
                    if frameIdx < frameCount then
                        self:readCurve(input, frameIdx, timeline)
                    end
                end
                table.insert(timelines, timeline)
                duration = math.max(duration, timeline.frames[frameCount])
            end
        end
    end

    -- Draw order timeline
    local drawOrderCount = input:readInt(true)
    if drawOrderCount > 0 then
        local timeline = DrawOrderTimeline.new(drawOrderCount)
        local slotCount = #sd.slots
        for i = 1, drawOrderCount, 1 do
            local time = input:readFloat();
            local offsetCount = input:readInt(true);
            local drawOrder = {}  --slotCount
            for ii = slotCount, 1, -1 do
                drawOrder[ii] = -1
            end

            local unchanged = {}  --slotCount - offsetCount
            local originalIndex, unchangedIndex = 1, 1
            for ii = 1, offsetCount, 1 do
                local slotIndex = input:readInt(true) + 1
                while originalIndex ~= slotIndex do
                    unchanged[unchangedIndex] = originalIndex
                    unchangedIndex = unchangedIndex + 1
                    originalIndex = originalIndex + 1
                end
                drawOrder[originalIndex + input:readInt(true)] = originalIndex
                originalIndex = originalIndex + 1
            end
            while originalIndex <= slotCount do
                unchanged[unchangedIndex] = originalIndex
                unchangedIndex = unchangedIndex + 1
                originalIndex = originalIndex + 1
            end

            for ii = slotCount, 1, -1 do
                if drawOrder[ii] == -1 then
                    drawOrder[ii] = unchanged[unchangedIndex]
                    unchangedIndex = unchangedIndex - 1
                end 
            end
            timeline.setFrame(i, time, drawOrder);
        end
        table.insert(timelines, timeline)
        duration = math.max(duration, timeline.frames[drawOrderCount])
    end

    --event timeline
    local eventCount = input:readInt(true);
    if eventCount > 0 then
        local timeline = EventTimeline.new(eventCount)
        for i = 1, eventCount, 1 do
            local time = input:readFloat();
            local eventData = sd.events[input:readInt(true)+1]
            local event = Event.new(time, eventData)
            event.intValue = input:readInt(false)
            event.floatValue = input:readFloat()
            event.stringValue = input:readBoolean() and input:readString() or eventData.stringValue
            if event.data.audioPath ~= "" then
                event.volume = input:readFloat()
                event.balance = input:readFloat()
            end
            timeline:setFrame(i+1, event)
        end
        table.insert(timelines, timeline)
        duration = math.max(duration, timeline.frames[eventCount])
    end

    return Animation.new(name, timelines, duration)
end

function SB:readCurve(input, frameIdx, timeline)
    local type = input:readByte()
    if type == CurveType.CURVE_STEPPED then
        timeline:setStepped(frameIdx)
    elseif type == CurveType.CURVE_BEZIER then
        self:setCurve(timeline, frameIdx, input:readFloat(), input:readFloat(), input:readFloat(), input:readFloat())
    end
end

function SB:setCurve(timeline, frameIdx, cx1, cy1, cx2, cy2)
    timeline.setCurve(frameIdx, cx1, cy1, cx2, cy2);
end


return SB