
local socket = require("socket.core")

-- ����һ��������ִ�������ȡ���
local function exec(cmd)
    local process = io.popen(cmd)
    local result = process:read("*a")
    print("run", cmd, result)
    process:close()
    print("result1", "'" .. result .. "'")
    return result
end

-- ����һ��Э����ִ���������ļ�
local function run_batch_file(filename)
    return coroutine.create(function()
        local result = exec(filename)
        print("result2", result)
        coroutine.yield(result)
        return result  --ʵ���ߵ����� �������� �������һ��resume�õĺ�������ֵ
    end)
end


function main(batch_files)
    -- ����Э���б�
    local coroutines = {}
    for _, file in ipairs(batch_files) do
        table.insert(coroutines, run_batch_file(file))
    end

    -- ����ִ��Э�̲��ռ����
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
        socket.sleep(0.1) -- �ȴ�һС��ʱ�䣬��ֹæ�ȴ�
    end

    -- ��ӡ���
    for i, result in ipairs(results) do
        print(string.format("Result of batch file %d: %s", i, result))
    end
end

-- �������ļ��б�
table.print(arg)
main(arg)






