

local Animation = require "animation.animation"
local Timeline = require "animation.timeline"
local TranslateTimeline = require "animation.translate_timeline"
local ScaleTimeline = class("ScaleTimeline", TranslateTimeline)


function ScaleTimeline:ctor(frameCount)
    ScaleTimeline.super.ctor(self)
    self.type = TimelineType.scale
end

function ScaleTimeline:getPropertyId()
    return (TimelineType.scale << 24) + self.boneIndex
end

function ScaleTimeline:apply(skeleton, lastTime, time, events, alpha, blend, direction)
    local frames = self.frames

    local bone = skeleton.bones[self.boneIndex]
    if not bone.active then return end
    if time < frames[1] then
        if blend == MixBlend.setup then
            bone.scaleX = bone.data.scaleX
            bone.scaleY = bone.data.scaleY
            return
        elseif blend == MixBlend.first then
            bone.scaleX = bone.scaleX + (bone.data.scaleX - bone.scaleX) * alpha
            bone.scaleY = bone.scaleY + (bone.data.scaleY - bone.scaleY) * alpha
            return
        end
    end

    local x, y = 0, 0
    if time >= frames[#frames - ScaleTimeline.ENTRIES + 1] then
        x = frames[#frames + ScaleTimeline.PREV_X + 1] * bone.data.scaleX
        y = frames[#frames + ScaleTimeline.PREV_Y + 1] * bone.data.scaleY
    else
        local frame = Animation.binarySearch(frames, time, ScaleTimeline.ENTRIES)
        x = frames[frame + ScaleTimeline.PREV_X + 1]
        y = frames[frame + ScaleTimeline.PREV_Y + 1]
        local frameTime = frames[frame]
        local percent = self.getCurvePercent((frame / ScaleTimeline.ENTRIES) - 1,
            1 - (time - frameTime) / (frames[frame + ScaleTimeline.PREV_TIME + 1] - frameTime))

        x = (x + (frames[frame + ScaleTimeline.X + 1] - x) * percent) * bone.data.scaleX
        y = (y + (frames[frame + ScaleTimeline.Y + 1] - y) * percent) * bone.data.scaleY
    end

    if alpha == 1 then
        if blend == MixBlend.add then
            bone.scaleX = bone.scaleX + x - bone.data.scaleX
            bone.scaleY = bone.scaleY + y - bone.data.scaleY
        else
            bone.scaleX = x
            bone.scaleY = y
        end
    else
        local bx, by = 0, 0
        if direction == MixDirection.mixOut then
            if blend == MixBlend.setup then
                bx = bone.data.scaleX
                by = bone.data.scaleY
                bone.scaleX = bx + (math.abs(x) * MathUtils.signum(bx) - bx) * alpha
                bone.scaleY = by + (math.abs(y) * MathUtils.signum(by) - by) * alpha
            elseif blend == MixBlend.first or blend == MixBlend.replace then
                bx = bone.scaleX
                by = bone.scaleY
                bone.scaleX = bx + (math.abs(x) * MathUtils.signum(bx) - bx) * alpha
                bone.scaleY = by + (math.abs(y) * MathUtils.signum(by) - by) * alpha
            elseif blend == MixBlend.add then
                bx = bone.scaleX
                by = bone.scaleY
                bone.scaleX = bx + (math.abs(x) * MathUtils.signum(bx) - bone.data.scaleX) * alpha
                bone.scaleY = by + (math.abs(y) * MathUtils.signum(by) - bone.data.scaleY) * alpha
            end
        else
            if blend == MixBlend.setup then
                bx = math.abs(bone.data.scaleX) * MathUtils.signum(x)
                by = math.abs(bone.data.scaleY) * MathUtils.signum(y)
                bone.scaleX = bx + (x - bx) * alpha
                bone.scaleY = by + (y - by) * alpha
            elseif blend == MixBlend.first or blend == MixBlend.replace then
                bx = math.abs(bone.scaleX) * MathUtils.signum(x)
                by = math.abs(bone.scaleY) * MathUtils.signum(y)
                bone.scaleX = bx + (x - bx) * alpha
                bone.scaleY = by + (y - by) * alpha
            elseif blend == MixBlend.add then
                bx = MathUtils.signum(x)
                by = MathUtils.signum(y)
                bone.scaleX = math.abs(bone.scaleX) * bx + (x - math.abs(bone.data.scaleX) * bx) * alpha
                bone.scaleY = math.abs(bone.scaleY) * by + (y - math.abs(bone.data.scaleY) * by) * alpha
            end
        end
    end
end


return ScaleTimeline
