

local Timeline = require "animation.timeline"
local CurveTimeline = require "animation.curve_timeline"
local TransformTimeline = class("TransformTimeline", CurveTimeline)

TransformTimeline.ENTRIES = 7
TransformTimeline.PREV_TIME = -7
TransformTimeline.PREV_ROTATE = -6
TransformTimeline.PREV_TRANSLATE = -5
TransformTimeline.PREV_SCALE = -4
TransformTimeline.PREV_SHEAR = -3
TransformTimeline.ROTATE = 1
TransformTimeline.TRANSLATE = 2
TransformTimeline.SCALE = 3
TransformTimeline.SHEAR = 4


function TransformTimeline:ctor(frameCount)
    TransformTimeline.super.ctor(self)
    self.transformConstraintIndex = 1
    self.frames = {}  --size:frameCount * TransformTimeline.ENTRIES
end


function TransformTimeline:getPropertyId()
    return (TimelineType.transformConstraint << 24) + self.transformConstraintIndex
end


function TransformTimeline:setFrame(frameIndex, time, rotateMix, translateMix, scaleMix, shearMix)
    frameIndex = frameIndex * TransformTimeline.ENTRIES
    self.frames[frameIndex] = time
    self.frames[frameIndex + TransformTimeline.ROTATE] = rotateMix
    self.frames[frameIndex + TransformTimeline.TRANSLATE] = translateMix
    self.frames[frameIndex + TransformTimeline.SCALE] = scaleMix
    self.frames[frameIndex + TransformTimeline.SHEAR] = shearMix
end

function TransformTimeline:apply(skeleton, lastTime, time, firedEvents, alpha, blend, direction)
    local frames = self.frames

    local constraint = skeleton.transformConstraints[self.transformConstraintIndex]
    if not constraint.active then return end
    if time < frames[1] then
        local data = constraint.data
        if blend == MixBlend.setup then
            constraint.rotateMix = data.rotateMix
            constraint.translateMix = data.translateMix
            constraint.scaleMix = data.scaleMix
            constraint.shearMix = data.shearMix
            return
        elseif blend == MixBlend.first then
            constraint.rotateMix = constraint.rotateMix + (data.rotateMix - constraint.rotateMix) * alpha
            constraint.translateMix = constraint.translateMix + (data.translateMix - constraint.translateMix) * alpha
            constraint.scaleMix = constraint.scaleMix + (data.scaleMix - constraint.scaleMix) * alpha
            constraint.shearMix = constraint.shearMix + (data.shearMix - constraint.shearMix) * alpha
        end
        return
    end

    local rotate, translate, scale, shear = 0, 0, 0, 0
    if time >= frames[#frames - TransformTimeline.ENTRIES + 1] then -- Time is after last frame.
        local i = #frames
        rotate = frames[i + TransformTimeline.PREV_ROTATE]
        translate = frames[i + TransformTimeline.PREV_TRANSLATE]
        scale = frames[i + TransformTimeline.PREV_SCALE]
        shear = frames[i + TransformTimeline.PREV_SHEAR]
    else
        -- Interpolate between the previous frame and the current frame.
        local frame = Animation.binarySearch(frames, time, TransformTimeline.ENTRIES)
        rotate = frames[frame + TransformTimeline.PREV_ROTATE]
        translate = frames[frame + TransformTimeline.PREV_TRANSLATE]
        scale = frames[frame + TransformTimeline.PREV_SCALE]
        shear = frames[frame + TransformTimeline.PREV_SHEAR]
        local frameTime = frames[frame]
        local percent = self.getCurvePercent((frame / TransformTimeline.ENTRIES) - 1,
            1 - (time - frameTime) / (frames[frame + TransformTimeline.PREV_TIME] - frameTime))

        rotate = rotate + (frames[frame + TransformTimeline.ROTATE] - rotate) * percent
        translate = translate + (frames[frame + TransformTimeline.TRANSLATE] - translate) * percent
        scale = scale + (frames[frame + TransformTimeline.SCALE] - scale) * percent
        shear = shear + (frames[frame + TransformTimeline.SHEAR] - shear) * percent
    end
    if blend == MixBlend.setup then
        local data = constraint.data
        constraint.rotateMix = data.rotateMix + (rotate - data.rotateMix) * alpha
        constraint.translateMix = data.translateMix + (translate - data.translateMix) * alpha
        constraint.scaleMix = data.scaleMix + (scale - data.scaleMix) * alpha
        constraint.shearMix = data.shearMix + (shear - data.shearMix) * alpha
    else
        constraint.rotateMix = constraint.rotateMix + (rotate - constraint.rotateMix) * alpha
        constraint.translateMix = constraint.translateMix + (translate - constraint.translateMix) * alpha
        constraint.scaleMix = constraint.scaleMix + (scale - constraint.scaleMix) * alpha
        constraint.shearMix = constraint.shearMix + (shear - constraint.shearMix) * alpha
    end
end


return TransformTimeline
