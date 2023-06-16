

local CurveTimeline = require "animation.curve_timeline"
local DeformTimeline = class("DeformTimeline", CurveTimeline)



local LINEAR = 0 
local STEPPED = 1 
local BEZIER = 2
local BEZIER_SIZE = 10 * 2 - 1

local zeros = nil  --ArrayLike<number>


function DeformTimeline:ctor(frameCount)
    DeformTimeline.super.ctor(self, frameCount)
    self.type = TimelineType.deform
    self.slotIndex = 1
    self.attachment = nil  
    self.frames = {}  --size:frameCount
    self.frameVertices = {}  --Array<ArrayLike<number>>(frameCount)
    for i = 1, frameCount do
        self.frameVertices[i] = {}
    end

    if not zeros then
        zeros = {}  --newFloatArray(64)
    end
end

function DeformTimeline:getPropertyId()
    return (TimelineType.deform << 27) + self.attachment.id + self.slotIndex
end


function DeformTimeline:setFrame(frameIndex, time, vertices)
    self.frames[frameIndex] = time
    self.frameVertices[frameIndex] = vertices
end

function DeformTimeline:apply(skeleton, lastTime, time, firedEvents, alpha, blend, direction)
    local slot = skeleton.slots[self.slotIndex]
    if not slot.bone.active then return end
    local slotAttachment = slot:getAttachment()
    if not (slotAttachment:isInstanceOf(VertexAttachment)) or not (slotAttachment.deformAttachment == self.attachment) then return end

    local deformArray = slot.deform
    if #deformArray == 0 then blend = MixBlend.setup end

    local frameVertices = self.frameVertices
    local vertexCount = #frameVertices[1]

    local frames = self.frames
    if time < frames[1] then
        local vertexAttachment = slotAttachment
        if blend == MixBlend.setup then
            deformArray = {}
            return
        elseif blend == MixBlend.first then
            if alpha == 1 then
                deformArray = {}
            else
                local deform = Utils.setArraySize(deformArray, vertexCount)
                if vertexAttachment.bones == nil then
                    local setupVertices = vertexAttachment.vertices
                    for i = 1, vertexCount do
                        deform[i] = deform[i] + (setupVertices[i] - deform[i]) * alpha
                    end
                else
                    alpha = 1 - alpha
                    for i = 1, vertexCount do
                        deform[i] = deform[i] * alpha
                    end
                end
            end
        end
        return
    end

    local deform = Utils.setArraySize(deformArray, vertexCount)
    if time >= frames[#frames] then
        local lastVertices = frameVertices[#frameVertices]
        if alpha == 1 then
            if blend == MixBlend.add then
                local vertexAttachment = slotAttachment
                if vertexAttachment.bones == nil then
                    local setupVertices = vertexAttachment.vertices
                    for i = 1, vertexCount do
                        deform[i] = deform[i] + (lastVertices[i] - setupVertices[i])
                    end
                else
                    for i = 1, vertexCount do
                        deform[i] = deform[i] + lastVertices[i]
                    end
                end
            else
                Utils.arrayCopy(lastVertices, 1, deform, 1, vertexCount)
            end
        else
            if blend == MixBlend.setup then
                local vertexAttachment = slotAttachment
                if vertexAttachment.bones == nil then
                    local setupVertices = vertexAttachment.vertices
                    for i = 1, vertexCount do
                        local setup = setupVertices[i]
                        deform[i] = setup + (lastVertices[i] - setup) * alpha
                    end
                else
                    for i = 1, vertexCount do
                        deform[i] = lastVertices[i] * alpha
                    end
                end
            elseif blend == MixBlend.first or blend == MixBlend.replace then
                for i = 1, vertexCount do
                    deform[i] = deform[i] + (lastVertices[i] - deform[i]) * alpha
                end
            elseif blend == MixBlend.add then
                local vertexAttachment = slotAttachment
                if vertexAttachment.bones == nil then
                    local setupVertices = vertexAttachment.vertices
                    for i = 1, vertexCount do
                        deform[i] = deform[i] + (lastVertices[i] - setupVertices[i]) * alpha
                    end
                else
                    for i = 1, vertexCount do
                        deform[i] = deform[i] + lastVertices[i] * alpha
                    end
                end
            end
        end
        return
    end

    local frame = Animation.binarySearch(frames, time)
    local prevVertices = frameVertices[frame - 1]
    local nextVertices = frameVertices[frame]
    local frameTime = frames[frame]
    local percent = self:getCurvePercent(frame - 1, 1 - (time - frameTime) / (frames[frame - 1] - frameTime))

    if alpha == 1 then
        if blend == MixBlend.add then
            local vertexAttachment = slotAttachment
            if vertexAttachment.bones == nil then
                local setupVertices = vertexAttachment.vertices
                for i = 1, vertexCount do
                    local prev = prevVertices[i]
                    deform[i] = deform[i] + (prev + (nextVertices[i] - prev) * percent - setupVertices[i])
                end
            else
                for i = 1, vertexCount do
                    local prev = prevVertices[i]
                    deform[i] = deform[i] + (prev + (nextVertices[i] - prev) * percent)
                end
            end
        else
            for i = 1, vertexCount do
                local prev = prevVertices[i]
                deform[i] = prev + (nextVertices[i] - prev) * percent
            end
        end
    else
        if blend == MixBlend.setup then
            local vertexAttachment = slotAttachment
            if vertexAttachment.bones == nil then
                local setupVertices = vertexAttachment.vertices
                for i = 1, vertexCount do
                    local prev = prevVertices[i]
                    local setup = setupVertices[i]
                    deform[i] = setup + (prev + (nextVertices[i] - prev) * percent - setup) * alpha
                end
            else
                for i = 1, vertexCount do
                    local prev = prevVertices[i]
                    deform[i] = (prev + (nextVertices[i] - prev) * percent) * alpha
                end
            end
        elseif blend == MixBlend.first or blend == MixBlend.replace then
            for i = 1, vertexCount do
                local prev = prevVertices[i]
                deform[i] = deform[i] + (prev + (nextVertices[i] - prev) * percent - deform[i]) * alpha
            end
        elseif blend == MixBlend.add then
            local vertexAttachment = slotAttachment
            if vertexAttachment.bones == nil then
                local setupVertices = vertexAttachment.vertices
                for i = 1, vertexCount do
                    local prev = prevVertices[i]
                    deform[i] = deform[i] + (prev + (nextVertices[i] - prev) * percent - setupVertices[i]) * alpha
                end
            else
                for i = 1, vertexCount do
                    local prev = prevVertices[i]
                    deform[i] = deform[i] + (prev + (nextVertices[i] - prev) * percent) * alpha
                end
            end
        end
    end
end


function DeformTimeline:dump(pre)
    pre = pre or ""
    print(pre .. _F([[ DeformTimeline type:%d slot:%d]],
        self.type, self.slotIndex
    ))

    print(pre .. " curves", #self.curves)
    for idx, value in pairs(self.curves) do
        print(pre .. _F("  curve:%d value:%d", idx, value))
    end

    print(pre .. " frames", #self.frames)
    for frameIdx, time in pairs(self.frames) do
        print(pre .. "  frame time", frameIdx, time)
    end

    print(pre .. " frameVertices", #self.frameVertices)
    for frameIdx, vertices in pairs(self.frameVertices) do
        print(pre .. "  frame vertice", frameIdx, vertices)
    end
end


return DeformTimeline