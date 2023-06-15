
local TranslateTimeline = require "animation.translate_timeline"
local ShearTimeline = class("ShearTimeline", TranslateTimeline)


function ShearTimeline.ctor(frameCount)
    ShearTimeline.super.ctor(self, frameCount)
end

function ShearTimeline:getPropertyId()
    return (TimelineType.shear << 24) + self.boneIndex
end

function ShearTimeline:apply(skeleton, lastTime, time, events, alpha, blend, direction)
    local frames = self.frames

    local bone = skeleton.bones[self.boneIndex]
    if not bone.active then return end
    if time < frames[1] then
        if blend == MixBlend.setup then
            bone.shearX = bone.data.shearX
            bone.shearY = bone.data.shearY
            return
        elseif blend == MixBlend.first then
            bone.shearX = bone.shearX + (bone.data.shearX - bone.shearX) * alpha
            bone.shearY = bone.shearY + (bone.data.shearY - bone.shearY) * alpha
        end
        return
    end

    local x, y = 0, 0
    if time >= frames[#frames - ShearTimeline.ENTRIES + 1] then
        x = frames[#frames + ShearTimeline.PREV_X]
        y = frames[#frames + ShearTimeline.PREV_Y]
    else
        local frame = Animation.BinarySearch(frames, time, ShearTimeline.ENTRIES)
        x = frames[frame + ShearTimeline.PREV_X]
        y = frames[frame + ShearTimeline.PREV_Y]
        local frameTime = frames[frame]
        local percent = self:getCurvePercent((frame / ShearTimeline.ENTRIES) - 1,
            1 - (time - frameTime) / (frames[frame + ShearTimeline.PREV_TIME] - frameTime))

        x = x + (frames[frame + ShearTimeline.X] - x) * percent
        y = y + (frames[frame + ShearTimeline.Y] - y) * percent
    end

    if blend == MixBlend.setup then
        bone.shearX = bone.data.shearX + x * alpha
        bone.shearY = bone.data.shearY + y * alpha
    elseif blend == MixBlend.first or blend == MixBlend.replace then
        bone.shearX = bone.shearX + (bone.data.shearX + x - bone.shearX) * alpha
        bone.shearY = bone.shearY + (bone.data.shearY + y - bone.shearY) * alpha
    elseif blend == MixBlend.add then
        bone.shearX = bone.shearX + x * alpha
        bone.shearY = bone.shearY + y * alpha
    end
end

return ShearTimeline