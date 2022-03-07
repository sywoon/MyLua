local timer = require "timer"
local ctimer = require "ctimer"

table.print(timer)


print(timer.time(), timer.millitime())
table.print(timer.timeinfo())

timer.after(2000, function (stamp)
    print("after cbk")
end)

timer.repeats(1000, function (stamp)
    print("repeats cbk")
end, 3, {endCbk=function (stamp)
    print("repeats end")
    timer.stopUpdate()
end})

function main()
    timer.startUpdate()

    timer.waitUpdate()
    do return end
    timer.startUpdate()
    timer.waitUpdate()
end


xpcall(main, function (err)
    print(err)
    print(debug.traceback(2))
end)












