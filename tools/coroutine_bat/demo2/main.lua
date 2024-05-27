
local socket = require("socket.core")

-- 定义一个函数来执行命令并获取输出
local function exec(cmd)
    -- 会启动新进程执行 不会卡lua 也得不到返回值
    local rst, msg, code = os.execute(cmd)
    print("result1", cmd, rst, msg, code)
    if not rst then
        print(("run cmd failed:" .. msg))
        return false
    end
    do return rst end
    
    --下面的方式 会等bat运行完 哪怕是start方式
    local process = io.popen(cmd)
    local result = process:read("*a")
    print("run", cmd, result)
    process:close()
    print("result1", "'" .. result .. "'")
    return result
end

local temp_idx = 1
local function temp_file()
    path = path or "."
    local name = _F("__temp%d.log", temp_idx)
    temp_idx = temp_idx + 1
    return name
end

local function check_signal(tempName)
    local txt = io.readFile("signal.log")
    if not txt then
        return false
    end
    print("read_signal", txt)
    return string.match(txt, tempName)
end

-- 定义一个协程来执行批处理文件
local function run_bat_new_process(cmd)
    return coroutine.create(function()
        local tempName = temp_file()
        os.remove(tempName)

        --start cmd /c "batch1.bat > 1.log "
        --注意：%s >> signal.log 两边都要保留空格 否则报错：ECHO 处于关闭状态
        local result = exec(_F('start cmd /c "%s > %s & echo %s >> signal.log "', cmd, tempName, tempName))  --start方式 result得到空字符串
        --coroutine.yield(result)  没啥必要 预留参考
        print("result2", result)
        
        while true do
            local suc = check_signal(tempName)
            if suc then
                break
            else
                coroutine.yield()
            end
        end
        
        local log = io.readFile(tempName)
        return log  --最后一个resume得到该返回值
    end)
end


function main(batch_files)
    local startT = os.time()
    os.remove("signal.log")
    
    -- 创建协程列表
    local coroutines = {}
    for _, file in ipairs(batch_files) do
        table.insert(coroutines, run_bat_new_process(file))
    end
    
    print("start resume")

    -- 并行执行协程并收集结果
    local results = {}
    while #coroutines > 0 do
        for i = #coroutines, 1, -1 do
            local co = coroutines[i]
            local status, result = coroutine.resume(co)
            if coroutine.status(co) == "dead" then
                print("coroutine dead", result)
                table.remove(coroutines, i)
                table.insert(results, result)
            end
        end
        socket.sleep(1) -- 等待一小段时间，防止忙等待
    end

    -- 打印结果
    for i, result in ipairs(results) do
        print(string.format("Result of batch file %d: %s", i, result))
    end
    
    print(_F("用时：%d秒", os.time() - startT))
end

-- 批处理文件列表
table.print(arg)
main(arg)






