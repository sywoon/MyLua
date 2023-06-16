local CurveTimeline = require "animation.curve_timeline"
local PathConstraintPositionTimeline = class("PathConstraintPositionTimeline", CurveTimeline)


PathConstraintPositionTimeline.ENTRIES = 2
PathConstraintPositionTimeline.PREV_TIME = -2
PathConstraintPositionTimeline.PREV_VALUE = -1
PathConstraintPositionTimeline.VALUE = 1


function PathConstraintPositionTimeline:ctor(frameCount)
    PathConstraintPositionTimeline.super.ctor(self, frameCount)
    self.type = TimelineType.pathConstraintPosition
    self.frames = {}
    for i = 1, frameCount * PathConstraintPositionTimeline.ENTRIES do
        self.frames[i] = 0
    end
end

function PathConstraintPositionTimeline:getPropertyId()
    return TimelineType.pathConstraintPosition << 24 + self.pathConstraintIndex
end

function PathConstraintPositionTimeline:setFrame(frameIndex, time, value)
    frameIndex = frameIndex * PathConstraintPositionTimeline.ENTRIES
    self.frames[frameIndex + 1] = time
    self.frames[frameIndex + PathConstraintPositionTimeline.VALUE + 1] = value
end

function PathConstraintPositionTimeline:apply(skeleton, lastTime, time, firedEvents, alpha, blend, direction)
    local frames = self.frames
    local constraint = skeleton.pathConstraints[self.pathConstraintIndex]
    if not constraint.active then return end
    if time < frames[1] then
        if blend == MixBlend.setup then
            constraint.position = constraint.data.position
            return
        elseif blend == MixBlend.first then
            constraint.position = constraint.position + (constraint.data.position - constraint.position) * alpha
        end
        return
    end

    local position = 0
    if time >= frames[#frames - PathConstraintPositionTimeline.ENTRIES + 1] then
        position = frames[#frames + PathConstraintPositionTimeline.PREV_VALUE + 1]
    else
        local frame = Animation.binarySearch(frames, time, PathConstraintPositionTimeline.ENTRIES)
        position = frames[frame + PathConstraintPositionTimeline.PREV_VALUE + 1]
        local frameTime = frames[frame + 1]
        local percent = self:getCurvePercent(frame / PathConstraintPositionTimeline.ENTRIES - 1,
            1 - (time - frameTime) / (frames[frame + PathConstraintPositionTimeline.PREV_TIME + 1] - frameTime))

        position = position + (frames[frame + PathConstraintPositionTimeline.VALUE + 1] - position) * percent
    end
    if blend == MixBlend.setup then
        constraint.position = constraint.data.position + (position - constraint.data.position) * alpha
    else
        constraint.position = constraint.position + (position - constraint.position) * alpha
    end
end

return PathConstraintPositionTimeline