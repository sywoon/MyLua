local Timeline = require "animation.timeline"
local DrawOrderTimeline = class("DrawOrderTimeline", Timeline)

function DrawOrderTimeline.new(frameCount)
    local self = setmetatable({}, DrawOrderTimeline)
    self.frames = {}
    self.drawOrders = {}
    for i = 1, frameCount do
        self.frames[i] = 0
        self.drawOrders[i] = {}
    end
    return self
end

function DrawOrderTimeline:getPropertyId()
    return TimelineType.drawOrder << 24
end

function DrawOrderTimeline:getFrameCount()
    return #self.frames
end

function DrawOrderTimeline:setFrame(frameIndex, time, drawOrder)
    self.frames[frameIndex] = time
    self.drawOrders[frameIndex] = drawOrder
end

function DrawOrderTimeline:apply(skeleton, lastTime, time, firedEvents, alpha, blend, direction)
    local drawOrder = skeleton.drawOrder
    local slots = skeleton.slots
    if direction == MixDirection.mixOut then
        if blend == MixBlend.setup then
            for i = 1, #skeleton.slots do
                skeleton.drawOrder[i] = skeleton.slots[i]
            end
        end
        return
    end

    local frames = self.frames
    if time < frames[1] then
        if blend == MixBlend.setup or blend == MixBlend.first then
            for i = 1, #skeleton.slots do
                skeleton.drawOrder[i] = skeleton.slots[i]
            end
        end
        return
    end

    local frame = 0
    if time >= frames[#frames] then -- Time is after last frame.
        frame = #frames
    else
        frame = Animation.binarySearch(frames, time) - 1
    end

    local drawOrderToSetupIndex = self.drawOrders[frame]
    if drawOrderToSetupIndex == nil then
        for i = 1, #slots do
            drawOrder[i] = slots[i]
        end
    else
        for i = 1, #drawOrderToSetupIndex do
            drawOrder[i] = slots[drawOrderToSetupIndex[i]]
        end
    end
end

return DrawOrderTimeline