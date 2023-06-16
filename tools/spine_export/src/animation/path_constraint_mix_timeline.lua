local CurveTimeline = require "animation.curve_timeline"
local PathConstraintMixTimeline = class("PathConstraintMixTimeline", CurveTimeline)


PathConstraintMixTimeline.ENTRIES = 3
PathConstraintMixTimeline.PREV_TIME = -3
PathConstraintMixTimeline.PREV_ROTATE = -2
PathConstraintMixTimeline.PREV_TRANSLATE = -1
PathConstraintMixTimeline.ROTATE = 1
PathConstraintMixTimeline.TRANSLATE = 2

function PathConstraintMixTimeline:ctor(frameCount)
    PathConstraintMixTimeline.super.ctor(self, frameCount)
    self.type = TimelineType.pathConstraintMix
    self.frames = {}
    for i = 1, frameCount * PathConstraintMixTimeline.ENTRIES do
        self.frames[i] = 0
    end
end

function PathConstraintMixTimeline:getPropertyId()
    return TimelineType.pathConstraintMix << 24 + self.pathConstraintIndex
end

function PathConstraintMixTimeline:setFrame(frameIndex, time, rotateMix, translateMix)
    frameIndex = frameIndex * PathConstraintMixTimeline.ENTRIES
    self.frames[frameIndex + 1] = time
    self.frames[frameIndex + PathConstraintMixTimeline.ROTATE + 1] = rotateMix
    self.frames[frameIndex + PathConstraintMixTimeline.TRANSLATE + 1] = translateMix
end

function PathConstraintMixTimeline:apply(skeleton, lastTime, time, firedEvents, alpha, blend, direction)
    local frames = self.frames
    local constraint = skeleton.pathConstraints[self.pathConstraintIndex]
    if not constraint.active then return end
    if time < frames[1] then
        if blend == MixBlend.setup then
            constraint.rotateMix = constraint.data.rotateMix
            constraint.translateMix = constraint.data.translateMix
            return
        elseif blend == MixBlend.first then
            constraint.rotateMix = constraint.rotateMix + (constraint.data.rotateMix - constraint.rotateMix) * alpha
            constraint.translateMix = constraint.translateMix + (constraint.data.translateMix - constraint.translateMix) * alpha
        end
        return
    end

    local rotate = 0
    local translate = 0
    if time >= frames[#frames - PathConstraintMixTimeline.ENTRIES + 1] then
        rotate = frames[#frames + PathConstraintMixTimeline.PREV_ROTATE + 1]
        translate = frames[#frames + PathConstraintMixTimeline.PREV_TRANSLATE + 1]
    else
        local frame = Animation.binarySearch(frames, time, PathConstraintMixTimeline.ENTRIES)
        rotate = frames[frame + PathConstraintMixTimeline.PREV_ROTATE + 1]
        translate = frames[frame + PathConstraintMixTimeline.PREV_TRANSLATE + 1]
        local frameTime = frames[frame + 1]
        local percent = self:getCurvePercent(frame / PathConstraintMixTimeline.ENTRIES - 1,
            1 - (time - frameTime) / (frames[frame + PathConstraintMixTimeline.PREV_TIME + 1] - frameTime))

        rotate = rotate + (frames[frame + PathConstraintMixTimeline.ROTATE + 1] - rotate) * percent
        translate = translate + (frames[frame + PathConstraintMixTimeline.TRANSLATE + 1] - translate) * percent
    end

    if blend == MixBlend.setup then
        constraint.rotateMix = constraint.data.rotateMix + (rotate - constraint.data.rotateMix) * alpha
        constraint.translateMix = constraint.data.translateMix + (translate - constraint.data.translateMix) * alpha
    else
        constraint.rotateMix = constraint.rotateMix + (rotate - constraint.rotateMix) * alpha
        constraint.translateMix = constraint.translateMix + (translate - constraint.translateMix) * alpha
    end
end

return PathConstraintMixTimeline
