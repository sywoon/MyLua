local cjson = require "cjson"



-- dkjsonȱ�㣺ʶ����null
-- rxijsonȱ�㣺��֧��\\  ���磺"path2":"src\\bin\\test2\\"  ��������
-- cjson��ȱ�㣺����˵�������/����Ϊ\/����  ʵ����֤û����

local json = {}

function json.setMode(mode)
    json._mode = mode
    if mode == "cjson" then
        _encode = cjson.encode
        _decode = cjson.decode
        json.null = cjson.null
        
    elseif mode == "dkjson" then
        local dkjson = require "json_internal.dkjson"
        _encode = dkjson.encode
        _decode = dkjson.decode
        json.null = dkjson.null
        
    elseif mode == "rxijson" then
        local rxijson = require "json_internal.rxijson"
        _encode = rxijson.encode
        _decode = rxijson.decode

    end
end


-- table to string
function json.encode(t)
    -- Ĭ��cjson
    if not json._mode then
        json.setMode("cjson")
    end
    
    local status, result = pcall( function ()
        local data = _encode(t)
        return data
    end)
    
    if status then
        return result
    else
        printe("json.encode failed. mode:" .. json._mode, result, table.tostring(t))
        print(debug.traceback())
        return nil
    end
end


-- string to table
function json.decode(str)
    if not json._mode then
        json.setMode("cjson")
    end
    
    local status, result = pcall( function ()
        local data = _decode(str)
        return data
    end)
    
    if status then
        return result
    else
        printe("json.decode failed. mode:" .. json._mode, result, str)
        print(debug.traceback())
        return nil
    end
end


return json