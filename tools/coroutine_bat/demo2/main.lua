
local socket = require("socket.core")

-- ����һ��������ִ�������ȡ���
local function exec(cmd)
    -- �������½���ִ�� ���Ῠlua Ҳ�ò�������ֵ
    local rst, msg, code = os.execute(cmd)
    print("result1", cmd, rst, msg, code)
    if not rst then
        print(("run cmd failed:" .. msg))
        return false
    end
    do return rst end
    
    --����ķ�ʽ ���bat������ ������start��ʽ
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

-- ����һ��Э����ִ���������ļ�
local function run_bat_new_process(cmd)
    return coroutine.create(function()
        local tempName = temp_file()
        os.remove(tempName)

        --start cmd /c "batch1.bat > 1.log "
        --ע�⣺%s >> signal.log ���߶�Ҫ�����ո� ���򱨴�ECHO ���ڹر�״̬
        local result = exec(_F('start cmd /c "%s > %s & echo %s >> signal.log "', cmd, tempName, tempName))  --start��ʽ result�õ����ַ���
        --coroutine.yield(result)  ûɶ��Ҫ Ԥ���ο�
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
        return log  --���һ��resume�õ��÷���ֵ
    end)
end


function main(batch_files)
    local startT = os.time()
    os.remove("signal.log")
    
    -- ����Э���б�
    local coroutines = {}
    for _, file in ipairs(batch_files) do
        table.insert(coroutines, run_bat_new_process(file))
    end
    
    print("start resume")

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
        socket.sleep(1) -- �ȴ�һС��ʱ�䣬��ֹæ�ȴ�
    end

    -- ��ӡ���
    for i, result in ipairs(results) do
        print(string.format("Result of batch file %d: %s", i, result))
    end
    
    print(_F("��ʱ��%d��", os.time() - startT))
end

-- �������ļ��б�
table.print(arg)
main(arg)






