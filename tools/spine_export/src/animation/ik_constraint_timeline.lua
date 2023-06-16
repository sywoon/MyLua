

local Timeline = require "animation.timeline"
local CurveTimeline = require "animation.curve_timeline"
local IkConstraintTimeline = class("IkConstraintTimeline", CurveTimeline)


IkConstraintTimeline.ENTRIES = 6

IkConstraintTimeline.PREV_TIME = -6 
IkConstraintTimeline.PREV_MIX = -5 
IkConstraintTimeline.PREV_SOFTNESS = -4 
IkConstraintTimeline.PREV_BEND_DIRECTION = -3 
IkConstraintTimeline.PREV_COMPRESS = -2 
IkConstraintTimeline.PREV_STRETCH = -1

IkConstraintTimeline.MIX = 1 
IkConstraintTimeline.SOFTNESS = 2 
IkConstraintTimeline.BEND_DIRECTION = 3 
IkConstraintTimeline.COMPRESS = 4 
IkConstraintTimeline.STRETCH = 5


function IkConstraintTimeline:ctor(frameCount)
    IkConstraintTimeline.super.ctor(self)
    self.type = TimelineType.ikConstraint
    self.ikConstraintIndex = 1
    self.frames = {}  --frameCount * IkConstraintTimeline.ENTRIES
end

function IkConstraintTimeline:getPropertyId()
    return (TimelineType.ikConstraint << 24) + self.ikConstraintIndex
end


function IkConstraintTimeline:setFrame(frameIndex, time, mix, softness, bendDirection, compress, stretch)
    frameIndex = frameIndex * IkConstraintTimeline.ENTRIES
    self.frames[frameIndex] = time
    self.frames[frameIndex + IkConstraintTimeline.MIX] = mix
    self.frames[frameIndex + IkConstraintTimeline.SOFTNESS] = softness
    self.frames[frameIndex + IkConstraintTimeline.BEND_DIRECTION] = bendDirection
    self.frames[frameIndex + IkConstraintTimeline.COMPRESS] = compress and 1 or 0
    self.frames[frameIndex + IkConstraintTimeline.STRETCH] = stretch and 1 or 0
end

function IkConstraintTimeline:apply(skeleton, lastTime, time, firedEvents, alpha, blend, direction)
    local frames = self.frames
    local constraint = skeleton.ikConstraints[self.ikConstraintIndex]
    if not constraint.active then return end

    if time < frames[1] then
        if blend == MixBlend.setup then
            constraint.mix = constraint.data.mix
            constraint.softness = constraint.data.softness
            constraint.bendDirection = constraint.data.bendDirection
            constraint.compress = constraint.data.compress
            constraint.stretch = constraint.data.stretch
            return
        elseif blend == MixBlend.first then
            constraint.mix = constraint.mix + (constraint.data.mix - constraint.mix) * alpha
            constraint.softness = constraint.softness + (constraint.data.softness - constraint.softness) * alpha
            constraint.bendDirection = constraint.data.bendDirection
            constraint.compress = constraint.data.compress
            constraint.stretch = constraint.data.stretch
        end
        return
    end

    if time >= frames[#frames - IkConstraintTimeline.ENTRIES + 1] then
        if blend == MixBlend.setup then
            constraint.mix = constraint.data.mix + (frames[#frames + IkConstraintTimeline.PREV_MIX] - constraint.data.mix) * alpha
            constraint.softness = constraint.data.softness + (frames[#frames + IkConstraintTimeline.PREV_SOFTNESS] - constraint.data.softness) * alpha
            if direction == MixDirection.mixOut then
                constraint.bendDirection = constraint.data.bendDirection
                constraint.compress = constraint.data.compress
                constraint.stretch = constraint.data.stretch
            else
                constraint.bendDirection = frames[#frames + IkConstraintTimeline.PREV_BEND_DIRECTION]
                constraint.compress = frames[#frames + IkConstraintTimeline.PREV_COMPRESS] ~= 0
                constraint.stretch = frames[#frames + IkConstraintTimeline.PREV_STRETCH] ~= 0
            end
        else
            constraint.mix = constraint.mix + (frames[#frames + IkConstraintTimeline.PREV_MIX] - constraint.mix) * alpha
            constraint.softness = constraint.softness + (frames[#frames + IkConstraintTimeline.PREV_SOFTNESS] - constraint.softness) * alpha
            if direction == MixDirection.mixIn then
                constraint.bendDirection = frames[#frames + IkConstraintTimeline.PREV_BEND_DIRECTION]
                constraint.compress = frames[#frames + IkConstraintTimeline.PREV_COMPRESS] ~= 0
                constraint.stretch = frames[#frames + IkConstraintTimeline.PREV_STRETCH] ~= 0
            end
        end
        return
    end

    local frame = Animation.binarySearch(frames, time, IkConstraintTimeline.ENTRIES)
    local mix = frames[frame + IkConstraintTimeline.PREV_MIX]
    local softness = frames[frame + IkConstraintTimeline.PREV_SOFTNESS]
    local frameTime = frames[frame]
    local percent = self.getCurvePercent((frame / IkConstraintTimeline.ENTRIES) - 1, 1 - (time - frameTime) / (frames[frame + IkConstraintTimeline.PREV_TIME] - frameTime))

    if blend == MixBlend.setup then
        constraint.mix = constraint.data.mix + (mix + (frames[frame + IkConstraintTimeline.MIX] - mix) * percent - constraint.data.mix) * alpha
        constraint.softness = constraint.data.softness + (softness + (frames[frame + IkConstraintTimeline.SOFTNESS] - softness) * percent - constraint.data.softness) * alpha
        if direction == MixDirection.mixOut then
            constraint.bendDirection = constraint.data.bendDirection
            constraint.compress = constraint.data.compress
            constraint.stretch = constraint.data.stretch
        else
            constraint.bendDirection = frames[frame + IkConstraintTimeline.PREV_BEND_DIRECTION]
            constraint.compress = frames[frame + IkConstraintTimeline.PREV_COMPRESS] ~= 0
            constraint.stretch = frames[frame + IkConstraintTimeline.PREV_STRETCH] ~= 0
        end
    else
        constraint.mix = constraint.mix + (mix + (frames[frame + IkConstraintTimeline.MIX] - mix) * percent - constraint.mix) * alpha
        constraint.softness = constraint.softness + (softness + (frames[frame + IkConstraintTimeline.SOFTNESS] - softness) * percent - constraint.softness) * alpha
        if direction == MixDirection.mixIn then
            constraint.bendDirection = frames[frame + IkConstraintTimeline.PREV_BEND_DIRECTION]
            constraint.compress = frames[frame + IkConstraintTimeline.PREV_COMPRESS] ~= 0
            constraint.stretch = frames[frame + IkConstraintTimeline.PREV_STRETCH] ~= 0
        end
    end
end

function IkConstraintTimeline:dump(pre)
    pre = pre or ""
    print(pre .. _F([[ IkConstraintTimeline type:%d ik:%d]],
        self.type, self.ikConstraintIndex
    ))

    print(pre .. " frames", #self.frames)
    for frameIdx, time in pairs(self.frames) do
        print(pre .. "  frame time", frameIdx, time)
    end

    print(pre .. " frames", #self.frames)
    local idx = 1
    while idx <= #self.frames-IkConstraintTimeline.ENTRIES do
        print(pre .. _F("  frame:%d time:%f mix:%f softness:%f bendDirection:%d compress:%d stretch:%d", 
                    idx, self.frames[idx],
                    self.frames[idx + IkConstraintTimeline.MIX],
                    self.frames[idx + IkConstraintTimeline.SOFTNESS],
                    self.frames[idx + IkConstraintTimeline.BEND_DIRECTION],
                    self.frames[idx + IkConstraintTimeline.COMPRESS],
                    self.frames[idx + IkConstraintTimeline.STRETCH]
        ))
        idx = idx + IkConstraintTimeline.ENTRIES
    end
end



return IkConstraintTimeline
