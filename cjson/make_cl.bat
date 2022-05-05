call ../clenv.bat

mkdir ../output 2>NUL

pushd src

cl /c /D NDEBUG /D _USING_V110_SDK71_ /I"../../lib/include/" /I"../../lib/lua5.4/include/" *.c
link /dll  /def:lua_cjson.def /out:../../output/cjson.dll /LIBPATH:"../../lib/" /LIBPATH:"../../lib/lua5.4/" *.obj lua54.lib
del *.obj

popd

