@echo off

if exist "C:\Program Files (x86)\Microsoft SDKs\Windows\v7.1A" (
    set "WINSDK=C:\Program Files (x86)\Microsoft SDKs\Windows\v7.1A"
)

if exist "C:\Program Files (x86)\Microsoft SDKs\Windows\v7.0A" (
    set "WINSDK=C:\Program Files (x86)\Microsoft SDKs\Windows\v7.0A"
)

set "WINKITS=C:\Program Files (x86)\Windows Kits\10"
set "KITSVERSION=10.0.19041.0"

if exist "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.29.30133\bin\Hostx64\x86\cl.exe" (
    call :vs2019
)

if exist "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\bin\cl.exe" (
    call :vs2015
)

if exist "C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\bin\cl.exe" (
    call :vs2013
)

where cl
goto :eof


:vs2013
echo --vs2013--
set "VSCOMM=C:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7"
set "VSVC=C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC"

set "include=%VSVC%\INCLUDE;%VSVC%\ATLMFC\INCLUDE;%WINSDK%\INCLUDE;%WINKITS%\Include\%KITSVERSION%\ucrt;%include%;"
set "lib=%VSVC%\LIB;%VSVC%\ATLMFC\LIB;%WINSDK%\LIB;%WINKITS%\Lib\%KITSVERSION%\ucrt\x86;%lib%"
set "path=%VSVC%\BIN;%VSCOMM%\IDE;%VSCOMM%\TOOLS;%WINSDK%\BIN;%WINKITS%\Redist\ucrt\DLLs\x86;%path%"

goto :eof


:vs2015
echo --vs2015--
set "VSCOMM=C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7"
set "VSVC=C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC"

set "include=%VSVC%\INCLUDE;%VSVC%\ATLMFC\INCLUDE;%WINSDK%\INCLUDE;%WINKITS%\Include\%KITSVERSION%\ucrt;%WINKITS%\Include\%KITSVERSION%\um;%WINKITS%\Include\%KITSVERSION%\shared;%include%;"
set "lib=%VSVC%\LIB;%VSVC%\ATLMFC\LIB;%WINSDK%\LIB;%WINKITS%\Lib\%KITSVERSION%\ucrt\x86;%WINKITS%\Lib\%KITSVERSION%\um\x86;%lib%"
set "path=%VSVC%\BIN;%VSCOMM%\IDE;%VSCOMM%\TOOLS;%WINSDK%\BIN;%WINKITS%\Redist\ucrt\DLLs\x86;%path%"

goto :eof

:vs2019
echo --vs2019--
set "VSCOMM=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7"
set "VSVC=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.29.30133"

set "include=%VSVC%\INCLUDE;%VSVC%\ATLMFC\INCLUDE;%WINSDK%\INCLUDE;%WINKITS%\Include\%KITSVERSION%\ucrt;%WINKITS%\Include\%KITSVERSION%\um;%WINKITS%\Include\%KITSVERSION%\shared;%include%;"
set "lib=%VSVC%\LIB\x86;%VSVC%\ATLMFC\LIB\x86;%WINSDK%\LIB;%WINKITS%\Lib\%KITSVERSION%\ucrt\x86;%WINKITS%\Lib\%KITSVERSION%\um\x86;%lib%"
set "path=%VSVC%\BIN\Hostx64\x86;%VSCOMM%\IDE;%VSCOMM%\TOOLS;%WINSDK%\BIN;%WINKITS%\Redist\ucrt\DLLs\x86;%path%"

goto :eof
  

