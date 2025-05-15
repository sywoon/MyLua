require "sllib_base"


function checkInstall2(package_name, showInfo, autoExit)
    local _log = function (...)
        if showInfo then
            print(...)
        end
    end

    local check_cmd = "where " .. package_name .. "  >nul 2>&1"
    
    local status, msg, code = os.execute(check_cmd)
    print(check_cmd, status, msg, code)
    if not status then
        if showInfo then print("?? " .. package_name .. " δ��װ�����ڰ�װ...") end
        do return end
        local install_cmd = "npm install -g " .. package_name
        local install_result = os.execute(install_cmd)
        if install_result ~= 0 then
            _log("? ��װ " .. package_name .. " ʧ�ܣ���ȷ���Ѱ�װ Node.js �� npm��������������ӡ�")
            if autoExit then os.exit(1) end
            return false
        else
            _log("? " .. package_name .. " ��װ�ɹ���")
            return true
        end
    else
        _log("? " .. package_name .. " �Ѱ�װ��")
        return true
    end
end


checkJsInstall("terser2", true)
jscompress:checkJsInstall(true)

local from = "test_jscompress.js"
do
    local to = "test_jscompress_jsmin.js"
    local envPath = "c:/cinside/env/"
    print("jsmin", from, to, envPath)
    jscompress:jsmin(from, to, envPath)
end

do
    local to = "test_jscompress_terser.js"
    print("terser", from, to)
    jscompress:jsmin(from, to)
end

do
    local to = "test_jscompress_obfuscator1.js.ts"
    print("obfuscator1", from, to)
    jscompress:encode(from, to, nil, 1)
    
    local to = "test_jscompress_obfuscator2.js"
    print("obfuscator1", from, to)
    jscompress:encode(from, to, nil, 2)
    
    local to = "test_jscompress_obfuscator3.js"
    print("obfuscator1", from, to)
    jscompress:encode(from, to, nil, 3)
end




