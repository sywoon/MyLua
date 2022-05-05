call ../clenv.bat

pushd src

mkdir "../../output"
mkdir "../../output/xlsEdit"

cl /c /D NDEBUG /D _USING_V110_SDK71_ /I"../../lib/include/" /I"%lua_include%" *.cpp
link /dll  /def:xlsEdit.def /out:../../output/xlsEdit.dll /LIBPATH:"../../lib/" /LIBPATH:"%lua_lib%" *.obj %lua_lib_name% libxl.lib
del *.obj

popd



