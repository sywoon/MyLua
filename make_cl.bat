@echo off
call clenv.bat


rmdir /Q /S output
mkdir output

call :MAKE_LUA
call :MAKE_LFS
call :MAKE_LPEG
call :MAKE_STRUCT

pause
goto :eof


:MAKE_LUA
cd src-lua
call make_cl.bat
cd ..
goto :eof

:MAKE_LFS
cd lfs
call make_cl.bat
cd ..
goto :eof

:MAKE_LPEG
cd lpeg
call make_cl.bat
cd ..
goto :eof

:MAKE_STRUCT
cd struct
call make_cl.bat
cd ..
goto :eof



