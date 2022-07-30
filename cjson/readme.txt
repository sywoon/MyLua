
lua-cjson-2.1.0.zip
https://github.com/mpx/lua-cjson/tags

有bug：
整数decode后 会变成小数 多出 .0
 ["excel"] = 41286.0,



通过window lua5.1测试  发现没这个问题
版本不同：
["_VERSION"] = "2.1.0-luapower",
找到修改版
https://github.com/luapower/cjson
一样 不解决问题  可能和lua版相关

