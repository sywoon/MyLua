call ../clenv.bat

pushd luacrc32-master

mkdir "../../output" 2>NUl
mkdir "../../output/crc32" 2>NUl

:: crc32
cl /c /D NDEBUG /D _USING_V110_SDK71_ /I"../../lib/include/" /I"%lua_include%" crc32.c wrap.c
link /dll  /def:crc32.def /out:../../output/crc32/core.dll /LIBPATH:"../../lib/" /LIBPATH:"%lua_lib%" *.obj %lua_lib_name%
del *.obj


popd

