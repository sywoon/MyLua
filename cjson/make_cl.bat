call ../clenv.bat

mkdir ../output 2>NUL

pushd src

cl /c /D NDEBUG /D _USING_V110_SDK71_ /I"../../lib/include/" /I"%lua_include%" *.c
link /dll  /def:lua_cjson.def /out:../../output/cjson.dll /LIBPATH:"../../lib/" /LIBPATH:"%lua_lib%" *.obj %lua_lib_name%
del *.obj

popd

