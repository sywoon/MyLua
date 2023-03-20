json = require "cjson"

table.print(json)

file = io.open("cjson_test.json")
data = file:read("*a")
file:close()

data = json.decode(data)
table.print(data)
print(data["release"]["excel"])
print(math.type(data["release"]["excel"]))

print(data["master"]["excel"])
print(math.type(data["master"]["excel"]))

