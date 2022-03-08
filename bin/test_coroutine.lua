local co = coroutine


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
        print("before end")
        return
    end
    print("co end")
end


timer.startUpdate()
c = co.start(test)
timer.waitUpdate()

print("lua end")
print(co.status(c))




