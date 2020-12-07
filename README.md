![](https://raw.githubusercontent.com/sywoon/MyLua/master/lua.gif)

# MyLua(https://github.com/sywoon/MyLua)
* 喜欢lua的简洁，原本lua for window包含了大量的实用库，但只支持5.1的版本。
* 升级到5.3后，很多库都不能用了。为了方便用lua写各类项目需要的工具，才有了这个工程。
* 以官方版本为基础，加入额外的扩展库。当前版本基于[lua-5.3.5](https://www.lua.org/versions.html#5.3)
* 只支持windows
* [库来源](http://lua-users.org/wiki/LibrariesAndBindings)

# lua扩展库
1. sllib_base [git](https://github.com/sywoon/sllib_lua)


# c扩展库
1. 文件操作库:[lfs1.7.0](https://github.com/keplerproject/luafilesystem)
2. 网络库:[luasocket](https://github.com/diegonehab/luasocket)
   [文档](http://w3.impa.br/~diego/software/luasocket/)
3. lua扩展库[sllib_base1.1](https://github.com/sywoon/sllib_lua.git)
4. 字符匹配[lpeg1.0.2](http://www.inf.puc-rio.br/~roberto/lpeg/)
5. 字节流处理库[struct0.3](http://www.inf.puc-rio.br/~roberto/struct/)
   lua5.3里可用string.pack unpack代替
6. [md51.1.2](http://files.luaforge.net/releases/md5/md5)
7. [luazlib0.0.1](http://luaforge.net/projects/luazlib/)  [zlib](http://zlib.net/)
8. [zlib-stream](https://github.com/brimworks/lua-zlib) zlib的另一种实现方式
9. [lua-cjson-2.1.0](https://www.kyne.com.au/~mark/software/lua-cjson.php)
   因为性能问题 没有采用纯lua库[luajson1.2.2](http://luaforge.net/projects/luajson/) 




# windows中使用方式
```
    @echo off
    set "path=%~dp0/lua5.3;%path%"
    call bin/runlua test.lua
    pause
```


# tools 基于该lua环境的工具
file_convert 文件格式互转: ansi和utf8
file_sync 文件同步工具：模拟beyondcompare类似功能  基于crc32比对






