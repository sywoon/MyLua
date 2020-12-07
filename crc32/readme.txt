
crc32 1.1-1
https://luarocks.org/modules/hjelmeland/crc32
https://github.com/hjelmeland/luacrc32





注意：dll的测试依赖其他库  不能在这个目录单独测试库
  需要复制到bin下  否则报错   因为依赖于lua.dll，它们放在bin目录下

lua: error loading module 'crc32' from file 'E:\Study_Github\MyLua\crc32\crc32.dll':
        找不到指定的模块。

stack traceback:
        [C]: ?
        [C]: in function 'require'
        test_crc32.lua:1: in main chunk





crc32_lua.lua  纯lua库
https://github.com/lancelijade/qqwry.lua/blob/master/crc32.lua









