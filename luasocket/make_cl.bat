call clenv.bat

call :MAKE_SOCKET
call :MAKE_MINE

goto :eof


:MAKE_SOCKET
:: /D LUASOCKET_DEBUG   open socket debug mode
mkdir ..\\output\\socket
cl /EHsc /O2 /W3 /c /D LUASOCKET_DEBUG /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_USRDLL"  /D "LUASOCKET_API=__declspec(dllexport)" /D "_CRT_SECURE_NO_WARNINGS" /D "_USING_V110_SDK71_" /I"../lib/include/" auxiliar.c buffer.c except.c inet.c io.c luasocket.c options.c select.c tcp.c timeout.c udp.c wsocket.c

link /DLL /out:../output/socket/core.dll *.obj /LIBPATH:"../lib/" lua53.lib ws2_32.lib
del *.obj

goto :eof


:MAKE_MINE
mkdir ..\\output\\mime
cl /EHsc /O2 /W4 /c /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_USRDLL"  /D "MIME_API=__declspec(dllexport)" /D "_CRT_SECURE_NO_WARNINGS" /D "_USING_V110_SDK71_" /I"../lib/include/" mime.c

link /DLL /out:../output/mime/core.dll mime.obj /LIBPATH:"../lib/" lua53.lib
del *.obj

goto :eof




