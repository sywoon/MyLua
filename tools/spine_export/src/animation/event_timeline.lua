local Timeline = require "animation.timeline"
local EventTimeline = class("EventTimeline", Timeline)

function EventTimeline:ctor(frameCount)
    EventTimeline.super.ctor(self, frameCount)
    self.type = TimelineType.event
    self.frames = {} -- time, ...
    self.events = {}
    for i = 1, frameCount do
        table.insert(self.frames, 0)
        table.insert(self.events, nil)
    end
    return self
end

function EventTimeline:getPropertyId()
    return TimelineType.event << 24
end

function EventTimeline:getFrameCount()
    return #self.frames
end

function EventTimeline:setFrame(frameIndex, event)
    self.frames[frameIndex] = event.time
    self.events[frameIndex] = event
end

function EventTimeline:apply(skeleton, lastTime, time, firedEvents, alpha, blend, direction)
    if firedEvents == nil then return end
    local frames = self.frames
    local frameCount = #self.frames

    if lastTime > time then
        self:apply(skeleton, lastTime, math.huge, firedEvents, alpha, blend, direction)
        lastTime = -1
    elseif lastTime >= frames[frameCount] then
        return
    end
    if time < frames[1] then return end

    local frame = 1
    if lastTime < frames[1] then
        frame = 1
    else
        frame = Animation.binarySearch(frames, lastTime)
        local frameTime = frames[frame]
        while frame > 1 do
            if frames[frame - 1] ~= frameTime then break end
            frame = frame - 1
        end
    end
    for i = frame, frameCount do
        if time < frames[i] then break end
        table.insert(firedEvents, self.events[i])
    end
end

return EventTimeline