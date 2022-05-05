local co = coroutine


function pack(...)
    return {...}
end


function _coroutine(func, ...)
    local args = {...}
    while func do
        local ret = pack(func(unpack(args)))
        args = co.yield(unpack(ret))  --启动子函数返回 函数名+参数
        func = args[1]
        table.remove(args, 1)
    end
end

function _resume(c, func, ...)
    if func then
        ret = pack(co.resume(c, func, ...))
    else
        ret = pack(co.resume(c, ...))
    end
    local status, msg = ret[1], ret[2]
    if not status then
        print(msg .. debug.traceback(c))
    else
        table.remove(ret, 1)
    end
    return status, ret
end


function co.start(func, ...)
   local c = co.create(_coroutine) 
   _resume(c, func, ...)
   return c
end


local yield_map = {}
function co.yieldstart(func, cbk, ...)
    --主协程
    local c = coroutine.running() or 
            error ('coroutine.yieldstart must be run in coroutine')
    local map = {parent = c, cbk = cbk, waiting=false, over=false}
    local child = co.createcroutine(_coroutine)
    yield_map[child] = map
    
    local status, ret = _resume(child, func, ...)
    if not status then
        yield_map[child] = nil
        return nil
    elseif map.over then
        yield_map[child] = nil
        if not ret then
            return nil
        else
            return unpack(ret)
        end
    else
        map.waiting = true
        local ret2 = pack(co.yield())
        yield_map[child] = nil
        return unpack(ret2)
    end
end

function co.yieldreturn(...)
    local c = coroutine.running() or 
            error ('coroutine.yieldstart must be run in coroutine') 
    local map = yield_map[c]
    if not map or not map.parent then
        return
    end
    
    local parent = map.parent
    local cbk = map.cbk
    cbk(c, ...)
    return co.waitforframes(1)
end

function co.yieldcbk(c, ...)
    local map = yield_map[c]
    if not map or not map.parent then
        return
    end
    
    map.cbk(co, ...)
end


function co.yieldbreak(...)
    local c = coroutine.running() or 
            error ('coroutine.yieldstart must be run in coroutine') 
    local map = yield_map[c]
    if not map then
        return ...
    end
    
    map.over = true
    if not map.waiting then
        return ...
    end
    return _resume(map.parent, nil, ...)
end















function test1(cbk)
    print("test1")
    timer.after(2000, function ()
        print("test1 end")
        cbk()
    end)
end

function test2(cbk)
    print("test2")
    timer.after(3000, function ()
        print("test2 end")
        timer.stopUpdate()
        co.stopAll()
        --cbk()
    end)
end

function test()
    print("co start")
    test1(co.lock())
    if co.wait() then
        print("before end")
        return
    end
    
    print("co next")
    test2(co.lock())
    
    if co.wait() then
        print("before2 end")
        return
    end
    print("co end")
end


timer.startUpdate()
c = co.start(test)
timer.waitUpdate()

print("lua end")
print(co.status(c))























