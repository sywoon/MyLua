
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




https://github.com/openresty/lua-cjson
强化版本 
-- cjson库缺点：decode会把/解析为\/这样  encode没问题 
--      "<html>title</html>" => "<html>title<\/html>"
--      "path":"src/bin/test/" => "path":"src\/bin\/test\/"

-- 原因：cjson 库的一个默认行为 encode时 会把</（比如 </html>) 转义为 <\/，从而变成 "<\/html>"
--      出于安全性考虑 防止在某些 Web 环境中嵌入 JSON 到 HTML 页面时，被浏览器当成标签解析

OpenResty的lua-cjson fork 地址 
新增
cjson.encode_escape_forward_slash(false) 关闭对 / 的转义（从 \/ 变回 /
cjson.encode_empty_table_as_object(true|false|"on"|"off")
cjson.empty_array  空数组  encode后 可得到正确的table转换方式{}=>[]
cjson.encode_number_precision(precision)  精度从14提高到16位
cjson.encode_escape_forward_slash(enabled)  forward slash '/' will be encoded as '\/'.




















