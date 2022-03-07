local ctimer = require "ctimer"
local timer = timer or {}

if not ctimer then
    return timer
end

local _cbks = {}

--业务自己维护name的唯一性
function timer.after(milli, cbk, name)
    local now = ctimer.getTimestamp()
    local data = {count=1, time=milli+now, name=name, cbk=cbk}
    table.insert(_cbks, data)
    timer._sortCbks()
end

--count:重复的次数 默认：0为无限
--params:{endCbk, name, runsoon}
--runsoon:第一次立刻调用  默认:false
function timer.repeats(interval, cbk, count, params)
    count = count or 0
    params = params or {}
    local now = ctimer.getTimestamp()
    local time = params.runsoon and now or interval+now
    local data = {count=count, time=time, name=params.name, cbk=cbk,
                    interval=interval, endCbk=params.endCbk}
    table.insert(_cbks, data)
    timer._sortCbks()
end

function timer.cancel(name)
    for idx, info in ipairs(_cbks) do
        if info.name == name then
            table.remove(_cbks, idx)
            break
        end
    end
end

function timer._sortCbks()
    table.sort(_cbks, function (l, r)
        return l.time < r.time
    end)
end

function timer._doUpdate(stamp)
    local now = ctimer.getTimestamp()
    local endidx = 0

    for idx, info in ipairs(_cbks) do
        if info.time < now then
            info.count = info.count - 1
            info.cbk(now)
            
            if info.count > 0 then
                info.time = info.interval+now
                table.insert(_cbks, info)
            else
                if info.endCbk then
                    info.endCbk(now)
                end
            end
            endidx = idx
        end
    end
    
    if endidx > 0 and endidx < #_cbks then
        _cbks = list.sub(_cbks, endidx+1)
    end
end


function timer.startUpdate()
    ctimer.startUpdate(timer._doUpdate, 1000)
end

function timer.stopUpdate()
    ctimer.stopUpdate()
end

function timer.waitUpdate()
    ctimer.waitUpdate()
end

--毫秒
function timer.millitime()
    return ctimer.getTimestamp()
end

--秒
function timer.time()
    return math.floor(ctimer.getTimestamp()/1000+0.5)
end

--年月日
function timer.timeinfo()
    return ctimer.getTime()
end





return timer