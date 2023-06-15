

local Animation = class("Animation")


function Animation.BinarySearch(values, target, step)
    local toInt = function(v)
        return math.round(v)    
    end

    local low = 0
    local high = toInt(#values/ step) - 2
    if high <= 0 then
        return step
    end

    local current = high / 2
    while true do
        if values[(current+1) * step] <= target then
            low = current + 1
        else 
            high = current
        end
        if low == high then
            return (low + 1) * step
        end
        current = toInt((low + high) / 2)
    end
end

function Animation.LinearSearch(values, target, step)
    for i = 1, #values - step, step do
        if values[1] > target then
            return i
        end
    end
end

function Animation:ctor(name, timelines, duration)
    self.name = name
    self.timelines = timelines
    self.timelineIds = {}
    for _, tm in ipairs(timelines) do
        self.timelineIds[tm:getPropertyId()] = true
    end
    self.duration = duration
end

function Animation:hasTimeline(id)
    return self.timelineIds[id] ~= nil
end

function Animation:apply(skeleton, lastTime, time, loop, events, alpha, blend, direction)
    if not skeleton then
        error("skeleton cannot be nil")
    end
    if loop and self.duration ~= 0 then
        time = time % self.duration
    end
    for _, tm in ipairs(self.timelines) do
        tm:applay(skeleton, lastTime, time, events, alpha, blend, direction)
    end
end



return Animation