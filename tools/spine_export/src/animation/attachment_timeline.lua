
local Timeline = require "animation.timeline"
local AttachmentTimeline = class("AttachmentTimeline", Timeline)


function AttachmentTimeline:ctor()
    AttachmentTimeline.super.ctor(self)
    self.type = TimelineType.attachment
    self.slotIndex = 1  --base1
    self.frames = {}
    self.attachmentNames = {}
end

function AttachmentTimeline:getPropertyId()
    return (TimelineType.attachment << 24) + self.slotIndex
end

function AttachmentTimeline:getFrameCount()
    return #self.frames
end

--frameIndex:base 1
function AttachmentTimeline:setFrame(frameIndex, time, attachmentName)
    self.frames[frameIndex] = time
    self.attachmentNames[frameIndex] = attachmentName
end

function AttachmentTimeline:apply(skeleton, lastTime, time, events, alpha, blend, direction)
    local slot = skeleton.slots[self.slotIndex]
    if not slot.bone.active then
        return
    end

    if direction == MixDirection.mixOut then
        if blend == MixBlend.setup then
            self:setAttachment(skeleton, slot, slot.data.attachmentName)
        end
        return
    end

    local frames = self.frames
    if time < frames[1] then
        if blend == MixBlend.setup or blend == MixBlend.first then
            self:setAttachment(skeleton, slot, slot.data.attachmentName)
        end
        return
    end

    local frameIndex = 1
    if time >= frames[frames.length] then -- Time is after last frame.
        frameIndex = frames.length - 1
    else
        frameIndex = Animation.binarySearch(frames, time, 1) - 1
    end

    local attachmentName = self.attachmentNames[frameIndex]
    skeleton.slots[self.slotIndex]:setAttachment(attachmentName and 
            skeleton:getAttachment(self.slotIndex, attachmentName) or nil)
end

function AttachmentTimeline:setAttachment(skeleton, slot, attachmentName)
    slot:setAttachment(attachmentName == nil or attachmentName == "" 
                and nil or skeleton:getAttachment(self.slotIndex, attachmentName))
end

function AttachmentTimeline:dump(pre)
    pre = pre or ""
    print(pre .. _F([[ AttachmentTimeline type:%d slot:%d]],
        self.type, self.slotIndex
    ))

    print(pre .. " frames", #self.frames)
    for frameIdx, time in pairs(self.frames) do
        print(pre .. "  frame time", frameIdx, time)
    end

    print(pre .. " attachmentNames", #self.attachmentNames)
    for frameIdx, attachmentName in pairs(self.attachmentNames) do
        print(pre .. "  frame attachmentName", frameIdx, attachmentName)
    end
end

return AttachmentTimeline