![](https://raw.githubusercontent.com/sywoon/MyLua/master/lua.gif)

# MyLua(https://github.com/sywoon/MyLua)
* ϲ��lua�ļ�࣬ԭ��lua for window�����˴�����ʵ�ÿ⣬��ֻ֧��5.1�İ汾��
* ������5.3�󣬺ܶ�ⶼ�������ˡ�Ϊ�˷�����luaд������Ŀ��Ҫ�Ĺ��ߣ�������������̡�
* �Թٷ��汾Ϊ����������������չ�⡣��ǰ�汾����[lua-5.3.5](https://www.lua.org/versions.html#5.3)
* ֻ֧��windows
* [����Դ](http://lua-users.org/wiki/LibrariesAndBindings)

# lua��չ��
1. sllib_base [git](https://github.com/sywoon/sllib_lua)


# c��չ��
1. �ļ�������:[lfs1.7.0](https://github.com/keplerproject/luafilesystem)
2. �����:[luasocket](https://github.com/diegonehab/luasocket)
   [�ĵ�](http://w3.impa.br/~diego/software/luasocket/)
3. lua��չ��[sllib_base1.1](https://github.com/sywoon/sllib_lua.git)
4. �ַ�ƥ��[lpeg1.0.2](http://www.inf.puc-rio.br/~roberto/lpeg/)
5. �ֽ��������[struct0.3](http://www.inf.puc-rio.br/~roberto/struct/)
   lua5.3�����string.pack unpack����
6. [md51.1.2](http://files.luaforge.net/releases/md5/md5)
7. [luazlib0.0.1](http://luaforge.net/projects/luazlib/)  [zlib](http://zlib.net/)
8. [zlib-stream](https://github.com/brimworks/lua-zlib) zlib����һ��ʵ�ַ�ʽ
9. [lua-cjson-2.1.0](https://www.kyne.com.au/~mark/software/lua-cjson.php)
   ��Ϊ�������� û�в��ô�lua��[luajson1.2.2](http://luaforge.net/projects/luajson/) 




# windows��ʹ�÷�ʽ
```
    @echo off
    set "path=%~dp0/lua5.3;%path%"
    call bin/runlua test.lua
    pause
```


# tools ���ڸ�lua�����Ĺ���
file_convert �ļ���ʽ��ת: ansi��utf8
file_sync �ļ�ͬ�����ߣ�ģ��beyondcompare���ƹ���  ����crc32�ȶ�






