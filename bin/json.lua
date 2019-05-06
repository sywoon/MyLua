local json = {}
local cjson = require "cjson"


json.null = cjson.null
json.encode_sparse_array = cjson.encode_sparse_array

-- table to string
function json.encode(t)
    local status, result = pcall( function ()
        local data = cjson.encode(t)
        return data
    end)
    
    if status then
        return result
    else
        print("json.encode failed", result)
        return nil
    end
end


-- string to table
function json.decode(str)
    local status, result = pcall( function ()
        local data = cjson.decode(str)
        return data
    end)
    
    if status then
        return result
    else
        print("json.encode failed", result)
        return nil
    end
end


return json