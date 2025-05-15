local cjson = require "cjson"



-- dkjson缺点：识别不了null
-- rxijson缺点：不支持\\  比如："path2":"src\\bin\\test2\\"  解析报错
-- cjson库缺点：反馈说解析会把/解析为\/这样  实际验证没发现

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
    -- 默认cjson
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