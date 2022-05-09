local co = coroutine

local co_pool = {}

function dump(msg)
    print(msg)
    for name, c in pairs(co_pool) do
        print(name, c, co.status(c))
    end
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
    co_pool["c1"] = co.running()
    
    test1(co.lock())
    if co.wait() then
        print("before end")
        return
    end

    dump("middle") 
    
    print("co next")
    test2(co.lock())
    
    if co.wait() then
        print("before2 end")
        return
    end
    print("co end")
end

co_pool["main"] = co.running()
dump("begin") 

timer.startUpdate()
c = co.start(test)
timer.waitUpdate()

print("lua end")
dump("end") 
print(co.status(c))




