call ../clenv.bat

pushd src

mkdir "../../output"
mkdir "../../output/luazip"

cl /c /D NDEBUG /D _USING_V110_SDK71_ /I"../../lib/include/" /I"%lua_include%" /I ../src/ /I ../src/zlib/ *.c zzip/*.c zlib/*.c
 link /dll  /def:luazip.def /out:../../output/luazip/luazip.dll /LIBPATH:"../../lib/" /LIBPATH:"%lua_lib%" *.obj %lua_lib_name%
del *.obj

popd



