@echo off

set "WINSDK=C:\Program Files (x86)\Microsoft SDKs\Windows\v7.1A"
set "WINKITS=C:\Program Files (x86)\Windows Kits\10"
set "KITSVERSION=10.0.10240.0"

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

set "include=%VSVC%\INCLUDE;%VSVC%\ATLMFC\INCLUDE;%WINSDK%\INCLUDE;%WINKITS%\Include\%KITSVERSION%\ucrt;%include%;"
set "lib=%VSVC%\LIB;%VSVC%\ATLMFC\LIB;%WINSDK%\LIB;%WINKITS%\Lib\%KITSVERSION%\ucrt\x86;%lib%"
set "path=%VSVC%\BIN;%VSCOMM%\IDE;%VSCOMM%\TOOLS;%WINSDK%\BIN;%WINKITS%\Redist\ucrt\DLLs\x86;%path%"

goto :eof
  

