@echo off

if exist "d:\Program Files (x86)\WinRAR\WinRAR.exe" (
	set "winrar=d:\Program Files (x86)\WinRAR\WinRAR.exe"
	goto start
)
if exist "d:\Program Files\WinRAR\WinRAR.exe" (
	set "winrar=d:\Program Files\WinRAR\WinRAR.exe"
	goto start
)
if exist "c:\Program Files (x86)\WinRAR\WinRAR.exe" (
	set "winrar=c:\Program Files (x86)\WinRAR\WinRAR.exe"
	goto start
)
if exist "c:\Program Files\WinRAR\WinRAR.exe" (
	set "winrar=c:\Program Files\WinRAR\WinRAR.exe"
	goto start
)

echo "please install winrar"
pause
goto EOF

:start
"%winrar%" a r




























