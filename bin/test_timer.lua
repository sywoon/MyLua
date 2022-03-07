local timer = require "timer.core"

table.print(timer)

print("timestamp", timer.getTimestamp())
table.print(timer.getTime())
table.print(timer.getUtcTime())

local idx = 0
timer.startUpdate(function (stamp)
    idx = idx + 1
    print("update", idx, stamp)
    if idx == 10 then
        timer.stopUpdate()
    end
end, 300)

timer.waitUpdate()

print("lua end")
