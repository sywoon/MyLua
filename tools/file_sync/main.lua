require "global"


if #arg ~= 3 then
    printU("参数错误", table.tostring(arg))
    return
end

local App = require "App"

function main()
    local from = arg[1]
    local to = arg[2]
    local mode = tonumber(arg[3])

    local app = App.new()
    rawset(_G, "app", app)
    app:syncFolder(from, to, mode)
end

main()


