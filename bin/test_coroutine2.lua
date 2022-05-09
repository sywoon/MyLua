--测试多层协程 创建和恢复次序
--结论：
-- 按协程创建的顺序 反向恢复  只有所有协程结束后 才会回到主线程
-- 只有yield方式 挂起的协程才可以用resume恢复
--   比如：父协程 创建 子协程 并resume =》子协程 yield =》 父协程也yield
--   之后恢复的子协程 可以通过resume方式恢复父协程

--注意：
-- 1 lua5.1和lua5.3 针对主线程中是否有默认的协程 处理不同 
--    coroutine.running() 前者为nil 后者有具体的值 且处于running状态  切换后也能变成normal

local co = coroutine

local co_pool = {}

function dump()
    for name, c in pairs(co_pool) do
        print(name, c, co.status(c))
    end
end

function sub2()
    print("sub2 step1")
    dump()
    co.yield()   --恢复到sub1中 而非main中 因为sub1处于normal状态
    print("sub2 step2")
    dump()
    co.yield()   --恢复到main中 而非sub1中 因为sub1已经挂起
    print("sub2 step3")
end

function sub1()
    print("sub1 step1")
    local c2 = co.create(sub2)
    co_pool["c2"] = c2
    
    local flag, ret = co.resume(c2)
    print("sub1 step2")
    
    --测试1： 如果主动挂起 不能被sub2的yield恢复 只能通过resume
    --co.yield()
    
    --测试2： 若重新恢复sub2  是否还会回来？  测试结果：还是normal状态 而且sub2的yield会回来
    co.resume(c2)
    print("sub1 step3")
end

function main()
    print("main step1")
    co_pool["main"] = co.running()
    
    local c1 = co.create(sub1)
    co_pool["c1"] = c1
    
    local flag, ret = co.resume(c1)
    print("main step2")
    dump()
    co.resume(co_pool["c2"])  --主动恢复c2 测试它再次yield后 是回到主线程 还是回到sub1？
    print("main step3")
    dump()
end

main()