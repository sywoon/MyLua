@echo off

::编译 __init.lua  复制到项目中  可动态控制各种时间戳

call run_luac __init.lua __init2.lua 1

pause



