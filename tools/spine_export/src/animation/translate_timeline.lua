
local Timeline = require "animation.timeline"
local CurveTimeline = require "animation.curve_timeline"
local TranslateTimeline = class("TranslateTimeline", CurveTimeline)


function TranslateTimeline:ctor(frameCount)
    TranslateTimeline.super.ctor(self)
    
end


function TranslateTimeline:getPropertyId()
    return (TimelineType.translate << 24) + self.boneIndex
end

function TranslateTimeline:setFrame(frameIndex, time, x, y)
    frameIndex = frameIndex * TranslateTimeline.ENTRIES
    this.frames[frameIndex] = time
    this.frames[frameIndex + TranslateTimeline.X] = x
    this.frames[frameIndex + TranslateTimeline.Y] = y
end


function TranslateTimeline:apply(skeleton, lastTime, time, events, alpha, blend, direction)
    local frames = self.frames

    local bone = skeleton.bones[self.boneIndex]
    if not bone.active then return end
    if time < frames[1] then
        if blend == MixBlend.setup then
            bone.x = bone.data.x
            bone.y = bone.data.y
            return
        elseif blend == MixBlend.first then
            bone.x = bone.x + (bone.data.x - bone.x) * alpha
            bone.y = bone.y + (bone.data.y - bone.y) * alpha
        end
        return
    end

    local x, y = 0, 0
    if time >= frames[#frames - TranslateTimeline.ENTRIES + 1] then -- Time is after last frame.
        x = frames[#frames + TranslateTimeline.PREV_X]
        y = frames[#frames + TranslateTimeline.PREV_Y]
    else
        -- Interpolate between the previous frame and the current frame.
        local frame = Animation.binarySearch(frames, time, TranslateTimeline.ENTRIES)
        x = frames[frame + TranslateTimeline.PREV_X]
        y = frames[frame + TranslateTimeline.PREV_Y]
        local frameTime = frames[frame]
        local percent = self.getCurvePercent((frame / TranslateTimeline.ENTRIES) - 1,
            1 - (time - frameTime) / (frames[frame + TranslateTimeline.PREV_TIME] - frameTime))

        x = x + (frames[frame + TranslateTimeline.X] - x) * percent
        y = y + (frames[frame + TranslateTimeline.Y] - y) * percent
    end

    if blend == MixBlend.setup then
        bone.x = bone.data.x + x * alpha
        bone.y = bone.data.y + y * alpha
    elseif blend == MixBlend.first or blend == MixBlend.replace then
        bone.x = bone.x + (bone.data.x + x - bone.x) * alpha
        bone.y = bone.y + (bone.data.y + y - bone.y) * alpha
    elseif blend == MixBlend.add then
        bone.x = bone.x + x * alpha
        bone.y = bone.y + y * alpha
    end
end

return TranslateTimeline