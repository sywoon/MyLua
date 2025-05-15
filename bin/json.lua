local cjson = require "cjson"



-- dkjson缺点：识别不了null
-- rxijson缺点：不支持\\  比如："path2":"src\\bin\\test2\\"  解析报错
-- cjson库缺点：decode会把/解析为\/这样  encode没问题 
--      "<html>title</html>" => "<html>title<\/html>"
--      "path":"src/bin/test/" => "path":"src\/bin\/test\/"

-- 原因：cjson 库的一个默认行为 encode时 会把</（比如 </html>) 转义为 <\/，从而变成 "<\/html>"
--      出于安全性考虑 防止在某些 Web 环境中嵌入 JSON 到 HTML 页面时，被浏览器当成标签解析
-- 解决：调用前设置 cjson.encode_escape_forward_slash(false) 关闭对 / 的转义（从 \/ 变回 /）

local json = {}

function json.setMode(mode)
    json._mode = mode
    if mode == "cjson" then
        _encode = cjson.encode
        _decode = cjson.decode
        json.null = cjson.null
        --稀疏数组的相关设置 (accepted_ratio, convert, safe) 容忍的 转换/报错 忽略不连续部分
        json.encode_sparse_array = cjson.encode_sparse_array
        cjson.encode_escape_forward_slash(false)  --默认关闭转换
        json.encode_escape_forward_slash = cjson.encode_escape_forward_slash
        
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