-s 去除调试信息，防止还原变量名、行号。
luac -s -o main.luac main.lua
-s后 下面的unluac将无法还原



java -jar unluac.jar myfile.lua > myfile_decompiled.lua

https://github.com/HansWessels/unluac
javac -verbose -deprecation -Werror -d build unluac/*.java






