@echo off

set "luastring=require('sllib'); g_initSllib([[%~dp0]])"
lua5.1.exe -e "%luastring%" %*
