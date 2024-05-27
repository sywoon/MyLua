
local socket = require("socket.core")

-- 定义一个函数来执行命令并获取输出
local function exec(cmd)
    local process = io.popen(cmd)
    local result = process:read("*a")
    print("run", cmd, result)
    process:close()
    print("result1", "'" .. result .. "'")
    return result
end

-- 定义一个协程来执行批处理文件
local function run_batch_file(filename)
    return coroutine.create(function()
        local result = exec(filename)
        print("result2", result)
        coroutine.yield(result)
        return result  --实际走的这里 而非上面 可能最后一个resume用的函数返回值
    end)
end


function main(batch_files)
    -- 创建协程列表
    local coroutines = {}
    for _, file in ipairs(batch_files) do
        table.insert(coroutines, run_batch_file(file))
    end

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
        socket.sleep(0.1) -- 等待一小段时间，防止忙等待
    end

    -- 打印结果
    for i, result in ipairs(results) do
        print(string.format("Result of batch file %d: %s", i, result))
    end
end

-- 批处理文件列表
table.print(arg)
main(arg)






