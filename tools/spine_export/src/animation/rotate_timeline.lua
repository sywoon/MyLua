

local CurveTimeline = require "animation.curve_timeline"
local RotateTimeline = class("RotateTimeline", CurveTimeline)


local ENTRIES = 2
local PREV_TIME = -2 
local PREV_ROTATION = -1
local ROTATION = 1
RotateTimeline.ENTRIES = ENTRIES


function RotateTimeline:ctor(frameCount)
    RotateTimeline.super.ctor(self)
    self.type = TimelineType.rotate
    self.boneIndex = 1
    self.frames = {}  --size:frameCount << 1
end

function RotateTimeline:getPropertyId()
    return (TimelineType.rotate << 24) + self.boneIndex
end

function RotateTimeline:setFrame(frameIndex, time, degrees)
    frameIndex = frameIndex * 2
    self.frames[frameIndex] = time
    self.frames[frameIndex + ROTATION] = degrees
end

function RotateTimeline:apply(skeleton, lastTime, time, events, alpha, blend, direction)
    local frames = self.frames

    local bone = skeleton.bones[self.boneIndex]
    if not bone.active then return end
    if time < frames[1] then
        if blend == MixBlend.setup then
            bone.rotation = bone.data.rotation
            return
        elseif blend == MixBlend.first then
            local r = bone.data.rotation - bone.rotation
            bone.rotation = bone.rotation + (r - (16384 - math.floor((16384.499999999996 - r / 360))) * 360) * alpha
        end
        return
    end

    if time >= frames[#frames - ENTRIES + 1] then -- Time is after last frame.
        local r = frames[#frames + PREV_ROTATION + 1]
        if blend == MixBlend.setup then
            bone.rotation = bone.data.rotation + r * alpha
        elseif blend == MixBlend.first or blend == MixBlend.replace then
            r = r + bone.data.rotation - bone.rotation
            r = r - (16384 - math.floor((16384.499999999996 - r / 360))) * 360 -- Wrap within -180 and 180.
            if blend == MixBlend.add then
                bone.rotation = bone.rotation + r * alpha
            end
        end
        return
    end

    -- Interpolate between the previous frame and the current frame.
    local frame = Animation.binarySearch(frames, time, ENTRIES)
    local prevRotation = frames[frame + PREV_ROTATION + 1]
    local frameTime = frames[frame + 1]
    local percent = self.getCurvePercent((frame >> 1) - 1,
        1 - (time - frameTime) / (frames[frame + PREV_TIME + 1] - frameTime))

    local r = frames[frame + ROTATION + 1] - prevRotation
    r = prevRotation + (r - (16384 - math.floor((16384.499999999996 - r / 360))) * 360) * percent
    if blend == MixBlend.setup then
        bone.rotation = bone.data.rotation + (r - (16384 - math.floor((16384.499999999996 - r / 360))) * 360) * alpha
    elseif blend == MixBlend.first or blend == MixBlend.replace then
        r = r + bone.data.rotation - bone.rotation
        if blend == MixBlend.add then
            bone.rotation = bone.rotation + (r - (16384 - math.floor((16384.499999999996 - r / 360))) * 360) * alpha
        end
    end
end


function RotateTimeline:dump(pre)
    pre = pre or ""
    print(pre .. _F([[ RotateTimeline type:%d boneIndex:%d]],
        self.type, self.boneIndex
    ))

    local idx = 1
    while idx <= #self.frames-RotateTimeline.ENTRIES do
        print(pre .. _F("  frame:%d time:%f degrees:%f", 
                idx, self.frames[idx],
                self.frames[frameIndex + ROTATION]
        ))
        idx = idx + RotateTimeline.ENTRIES
    end
end



return RotateTimeline
