
local Timeline = require "animation.timeline"
local CurveTimeline = require "animation.curve_timeline"
local ColorTimeline = class("ColorTimeline", CurveTimeline)

ColorTimeline.ENTRIES = 5

local PREV_TIME = -5
local PREV_R = -4
local PREV_G = -3
local PREV_B = -2
local PREV_A = -1
local R = 1
local G = 2
local B = 3
local A = 4


function ColorTimeline:ctor(frameCount)
    ColorTimeline.super.ctor(self)
    self.type = TimelineType.color
    self.slotIndex = 1  --base1
    self.frames = {}  --size:frameCount * ColorTimeline.ENTRIES
end

function ColorTimeline:getPropertyId()
    return (TimelineType.color << 24) + self.slotIndex
end

--frameIndex:base 1
function ColorTimeline:setFrame(frameIndex, time, attachmentName)
    frameIndex = frameIndex * ColorTimeline.ENTRIES
    self.frames[frameIndex] = time
    self.frames[frameIndex + R] = r
    self.frames[frameIndex + G] = g
    self.frames[frameIndex + B] = b
    self.frames[frameIndex + A] = a
end

function ColorTimeline:apply(skeleton, lastTime, time, events, alpha, blend, direction)
    local slot = skeleton.slots[self.slotIndex]
    if not slot.bone.active then
        return
    end

    local frames = self.frames
    if time < frames[1] then
        if blend == MixBlend.setup then
            slot.color:setFromColor(slot.data.color)
        elseif blend == MixBlend.first then
            local color, setup = slot.colir, slot.data.color
            color:add((setup.r - color.r) * alpha, (setup.g - color.g) * alpha, 
                        (setup.b - color.b) * alpha, (setup.a - color.a) * alpha)
        end
        return
    end

    local r, g, b, a = 0, 0, 0, 0
    if time >= frames[frames.length - ColorTimeline.ENTRIES] then
        local i = frames.length
        r = frames[i + PREV_R]
        g = frames[i + PREV_G]
        b = frames[i + PREV_B]
        a = frames[i + PREV_A]
    else
        -- Interpolate between the previous frame and the current frame.
        local frame = Animation.BinarySearch(frames, time, ColorTimeline.ENTRIES)
        r = frames[frame + ColorTimeline.PREV_R]
        g = frames[frame + ColorTimeline.PREV_G]
        b = frames[frame + ColorTimeline.PREV_B]
        a = frames[frame + ColorTimeline.PREV_A]
        local frameTime = frames[frame]
        local percent = self:getCurvePercent(frame / ColorTimeline.ENTRIES - 1,
            1 - (time - frameTime) / (frames[frame + ColorTimeline.PREV_TIME] - frameTime))

        r = r + (frames[frame + ColorTimeline.R] - r) * percent
        g = g + (frames[frame + ColorTimeline.G] - g) * percent
        b = b + (frames[frame + ColorTimeline.B] - b) * percent
        a = a + (frames[frame + ColorTimeline.A] - a) * percent
    end

    if alpha == 1 then
        slot.color:set(r, g, b, a)
    else
        local color = slot.color
        if blend == MixBlend.setup then
            color:setFromColor(slot.data.color)
        end
        color:add((r - color.r) * alpha, (g - color.g) * alpha, (b - color.b) * alpha, (a - color.a) * alpha)
    end
end

function ColorTimeline:dump(pre)
    pre = pre or ""
    print(pre .. _F([[ ColorTimeline type:%d slot:%d]],
        self.type, self.slotIndex
    ))

    print(pre .. " frames", #self.frames)
    local idx = 1
    while idx <= #self.frames-ColorTimeline.ENTRIES do
        print(pre .. _F("  frame:%d time:%f r:%f g:%f b:%f a:%f", 
                    idx, self.frames[idx], self.frames[idx+R], self.frames[idx+G], 
                    self.frames[idx+B], self.frames[idx+A]))
        idx = idx + ColorTimeline.ENTRIES
    end
end



return ColorTimeline