json = require "json"

table.print(json)

file = io.open("cjson_test.json")
data = file:read("*a")
file:close()

print("file content:")
print(data)

do
    print("parse by cjson")
    json.setMode("cjson")
    local data = json.decode(data)
    table.print(data)
    print(data["release"]["excel"])
    print(math.type(data["release"]["excel"]))

    print(data["master"]["excel"])
    print(math.type(data["master"]["excel"]))
    print("isnull", data["nulltest"] == json.null)
    
    -- / => \/ 多了不应该的字符
    -- "path3":"<html>title<\/html>","path":"src\/bin\/test\/"
    print("cjson.encode", json.encode(data))
end

do  --null内容丢失
    print("parse by dkjson")
    json.setMode("dkjson")
    local data = json.decode(data)
    table.print(data)
    print("dkjson.encode", json.encode(data))
end

do
    print("parse by rxijson")
    json.setMode("rxijson")
    local data = json.decode('{"master":{"uiproj":"50d179dd","excel":41286.1,"protol":"fa278298","client":"1d4b2b70"},"path":"src/bin/test/", "path2":"src\\bin\\test2\\"}')
    table.print(data)
end











