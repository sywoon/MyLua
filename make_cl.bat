@echo off
call clenv.bat

rmdir /Q /S output
mkdir output
mkdir bin 2>nul

call :MAKE_LUA
call :MAKE_LFS
call :MAKE_LPEG
call :MAKE_STRUCT
call :MAKE_SOCKET
call :MAKE_MD5
call :MAKE_ZLIB
call :MAKE_ZLIB_STREAM
call :MAKE_CHARSET
call :MAKE_CRC32
call :MAKE_CONSOLE

pause
rmdir /Q /S output
goto :eof


:MAKE_LUA
cd src-lua
call make_cl.bat
cd ..

copy /Y output\\lua.exe bin
copy /Y output\\lua53.dll bin
copy /Y output\\luac.exe bin
goto :eof

:MAKE_LFS
cd lfs
call make_cl.bat
cd ..

copy /Y output\\lfs.dll bin
goto :eof

:MAKE_LPEG
cd lpeg
call make_cl.bat
cd ..

copy /Y output\\lpeg.dll bin
goto :eof

:MAKE_STRUCT
cd struct
call make_cl.bat
cd ..

copy /Y output\\struct.dll bin
goto :eof


:MAKE_SOCKET
cd luasocket
call make_cl.bat
cd ..

mkdir bin\\mime
mkdir bin\\socket
copy /y output\\mime\\core.dll bin\\mime
copy /y output\\socket\\core.dll bin\\socket
goto :eof


:MAKE_MD5
cd md5 
call make_cl.bat
cd ..

mkdir bin\\md5
copy /y output\\md5\\core.dll bin\\md5
copy /y output\\des56.dll bin\\
goto :eof

:MAKE_ZLIB
cd zlib 
call make_cl.bat
cd ..

mkdir bin\\zlib
copy /y output\\zlib\\core.dll bin\\zlib
goto :eof


:MAKE_ZLIB_STREAM
cd zlib-stream
call make_cl.bat
cd ..

mkdir bin\\zlibstream
copy /y output\\zlibstream\\core.dll bin\\zlibstream
goto :eof


:MAKE_CHARSET
cd charset
call make_cl.bat
cd ..

copy /y output\\charset.dll bin
goto :eof


:MAKE_CRC32
cd crc32
call make_cl.bat
cd ..

mkdir bin\\crc32
copy /y output\\crc32\\core.dll bin\\crc32
goto :eof

:MAKE_CONSOLE
cd console
call make_cl.bat
cd ..

mkdir bin\\console
copy /y output\\console\\core.dll bin\\console
goto :eof

