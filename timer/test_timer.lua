local timer = require "ctimer"

table.print(timer)

print("timestamp", timer.getTimestamp())
table.print(timer.getTime())
table.print(timer.getUtcTime())

local time = {}
function time.add(a, b)
    print(a + b)
end

_cbk = {}
function time._doUpdate(stamp)
    local now = timer.getTimestamp()
    local endidx = 0
    for idx, info in ipairs(_cbk) do
        if info.milli < now then
            info.times = info.times - 1
            info.cbk(now)
            
            if info.times > 0 then
                info.time = info.interval+now
                table.insert(_cbks, info)
            end
            endidx = idx
        end
    end
    
    if endidx > 0 and endidx < #_cbks then
        _cbks = list.sub(_cbks, endIdx+1)
    end
end


function time.start()
    local idx = 0
    timer.startUpdate(function (stamp)
        idx = idx + 1
        print("update", idx, stamp)
        time.add(idx, idx)
        time._doUpdate(stamp)
        if idx == 4 then
            timer.stopUpdate()
        end
    end, 300)
end


time.start()
timer.waitUpdate()

print("lua end")
