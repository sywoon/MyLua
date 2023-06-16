
local Timeline = require "animation.timeline"
local CurveTimeline = require "animation.curve_timeline"
local TwoColorTimeline = class("TwoColorTimeline", CurveTimeline)


TwoColorTimeline.ENTRIES = 8
TwoColorTimeline.PREV_TIME = -8
TwoColorTimeline.PREV_R = -7
TwoColorTimeline.PREV_G = -6
TwoColorTimeline.PREV_B = -5
TwoColorTimeline.PREV_A = -4
TwoColorTimeline.PREV_R2 = -3
TwoColorTimeline.PREV_G2 = -2
TwoColorTimeline.PREV_B2 = -1
TwoColorTimeline.R = 1
TwoColorTimeline.G = 2
TwoColorTimeline.B = 3
TwoColorTimeline.A = 4
TwoColorTimeline.R2 = 5
TwoColorTimeline.G2 = 6
TwoColorTimeline.B2 = 7

function TwoColorTimeline:ctor(frameCount)
    TwoColorTimeline.super.ctor(self)
    self.type = TimelineType.twoColor
    self.frameCount = frameCount
    self.frames = {}
end


-- Methods
function TwoColorTimeline:getPropertyId()
    return TimelineType.twoColor << 24 + self.slotIndex
end

function TwoColorTimeline:setFrame(frameIndex, time, r, g, b, a, r2, g2, b2)
    frameIndex = frameIndex * TwoColorTimeline.ENTRIES
    self.frames[frameIndex + 1] = time
    self.frames[frameIndex + TwoColorTimeline.R] = r
    self.frames[frameIndex + TwoColorTimeline.G] = g
    self.frames[frameIndex + TwoColorTimeline.B] = b
    self.frames[frameIndex + TwoColorTimeline.A] = a
    self.frames[frameIndex + TwoColorTimeline.R2] = r2
    self.frames[frameIndex + TwoColorTimeline.G2] = g2
    self.frames[frameIndex + TwoColorTimeline.B2] = b2
end

function TwoColorTimeline:apply(skeleton, lastTime, time, events, alpha, blend, direction)
    local slot = skeleton.slots[self.slotIndex]
    if not slot.bone.active then return end
    local frames = self.frames

    if time < frames[1] then
        if blend == MixBlend.setup then
            slot.color:setFromColor(slot.data.color)
            slot.darkColor:setFromColor(slot.data.darkColor)
            return
        elseif blend == MixBlend.first then
            local light = slot.color
            local dark = slot.darkColor
            local setupLight = slot.data.color
            local setupDark = slot.data.darkColor
            light:add((setupLight.r - light.r) * alpha, (setupLight.g - light.g) * alpha, (setupLight.b - light.b) * alpha, (setupLight.a - light.a) * alpha)
            dark:add((setupDark.r - dark.r) * alpha, (setupDark.g - dark.g) * alpha, (setupDark.b - dark.b) * alpha, 0)
        end
        return
    end

    local r, g, b, a, r2, g2, b2
    if time >= frames[#frames - TwoColorTimeline.ENTRIES + 1] then
        -- Time is after last frame.
        local i = #frames
        r = frames[i + TwoColorTimeline.PREV_R]
        g = frames[i + TwoColorTimeline.PREV_G]
        b = frames[i + TwoColorTimeline.PREV_B]
        a = frames[i + TwoColorTimeline.PREV_A]
        r2 = frames[i + TwoColorTimeline.PREV_R2]
        g2 = frames[i + TwoColorTimeline.PREV_G2]
        b2 = frames[i + TwoColorTimeline.PREV_B2]
    else
        -- Interpolate between the previous frame and the current frame.
        local frame = Animation.binarySearch(frames, time, TwoColorTimeline.ENTRIES)
        r = frames[frame + TwoColorTimeline.PREV_R]
        g = frames[frame + TwoColorTimeline.PREV_G]
        b = frames[frame + TwoColorTimeline.PREV_B]
        a = frames[frame + TwoColorTimeline.PREV_A]
        r2 = frames[frame + TwoColorTimeline.PREV_R2]
        g2 = frames[frame + TwoColorTimeline.PREV_G2]
        b2 = frames[frame + TwoColorTimeline.PREV_B2]
        local frameTime = frames[frame]
        local percent = self:getCurvePercent(frame / TwoColorTimeline.ENTRIES - 1, 1 - (time - frameTime) / (frames[frame + TwoColorTimeline.PREV_TIME] - frameTime))

        r = r + (frames[frame + TwoColorTimeline.R] - r) * percent
        g = g + (frames[frame + TwoColorTimeline.G] - g) * percent
        b = b + (frames[frame + TwoColorTimeline.B] - b) * percent
        a = a + (frames[frame + TwoColorTimeline.A] - a) * percent
        r2 = r2 + (frames[frame + TwoColorTimeline.R2] - r2) * percent
        g2 = g2 + (frames[frame + TwoColorTimeline.G2] - g2) * percent
        b2 = b2 + (frames[frame + TwoColorTimeline.B2] - b2) * percent
    end

    if alpha == 1 then
        slot.color:set(r, g, b, a)
        slot.darkColor:set(r2, g2, b2, 1)
    else
        local light = slot.color
        local dark = slot.darkColor
        if blend == MixBlend.setup then
            light:setFromColor(slot.data.color)
            dark:setFromColor(slot.data.darkColor)
        end
        light:add((r - light.r) * alpha, (g - light.g) * alpha, (b - light.b) * alpha, (a - light.a) * alpha)
        dark:add((r2 - dark.r) * alpha, (g2 - dark.g) * alpha, (b2 - dark.b) * alpha, 0)
    end
end

return TwoColorTimeline
