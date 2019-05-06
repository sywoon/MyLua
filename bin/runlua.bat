@echo off


set "luastring=require('__init'); g_initSllib({[[%~dp0]]})"
call lua -e "%luastring%" %*

