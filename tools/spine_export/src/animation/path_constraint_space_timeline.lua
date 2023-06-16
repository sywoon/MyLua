local PathConstraintPositionTimeline = require "animation.path_constraint_pos_timeline"
local PathConstraintSpacingTimeline = class("PathConstraintSpacingTimeline", PathConstraintPositionTimeline)


function PathConstraintSpacingTimeline:ctor(frameCount)
    PathConstraintSpacingTimeline.super.ctor(self, frameCount)
end


function PathConstraintSpacingTimeline:getPropertyId()
    return TimelineType.pathConstraintSpacing << 24 + self.pathConstraintIndex
end

function PathConstraintSpacingTimeline:apply(skeleton, lastTime, time, firedEvents, alpha, blend, direction)
    local frames = self.frames
    local constraint = skeleton.pathConstraints[self.pathConstraintIndex]
    if not constraint.active then
        return
    end
    if time < frames[1] then
        if blend == MixBlend.setup then
            constraint.spacing = constraint.data.spacing
            return
        elseif blend == MixBlend.first then
            constraint.spacing = constraint.spacing + (constraint.data.spacing - constraint.spacing) * alpha
        end
        return
    end

    local spacing = 0
    if time >= frames[#frames - PathConstraintSpacingTimeline.ENTRIES + 1] then -- Time is after last frame.
        spacing = frames[#frames + PathConstraintSpacingTimeline.PREV_VALUE]
    else
        -- Interpolate between the previous frame and the current frame.
        local frame = Animation.binarySearch(frames, time, PathConstraintSpacingTimeline.ENTRIES)
        spacing = frames[frame + PathConstraintSpacingTimeline.PREV_VALUE]
        local frameTime = frames[frame]
        local percent = self:getCurvePercent(frame / PathConstraintSpacingTimeline.ENTRIES - 1, 1 - (time - frameTime) /
            (frames[frame + PathConstraintSpacingTimeline.PREV_TIME] - frameTime))

        spacing = spacing + (frames[frame + PathConstraintSpacingTimeline.VALUE] - spacing) * percent
    end

    if blend == MixBlend.setup then
        constraint.spacing = constraint.data.spacing + (spacing - constraint.data.spacing) * alpha
    else
        constraint.spacing = constraint.spacing + (spacing - constraint.spacing) * alpha
    end
end

function PathConstraintSpacingTimeline:dump(pre)
    pre = pre or ""
    print(pre .. _F([[ PathConstraintSpacingTimeline type:%d]],
        self.type
    ))
end

return PathConstraintSpacingTimeline
