loadstring = loadstring or load 
local base_char,keywords=128,{"and","break","do","else","elseif","end","false","for","function","if","in","local","nil","not","or","repeat","return","then","true","until","while","string","table","tostring","numbertostring","require","insert","self","type","os","package","preload","\"table\"","logs","format","ipairs","totaltime","\"number\"","attributes","debug","pairs","reportsByTitle","execute","tableAddress","print","writeFile","sub","calltime","gsub","__showInnerRef","splitpath","\" 1>nul 2>nul\"","logFunc","getFuncReport","mkdir","callcount","\"/\"","mkpredir","time","math","basename","clock","linedefined","\"string\"","dirname","loadstring","'\"'","\"xcopy /Y /E /I /Q \"","short_src","io","profilingHandler","list","concat","\"Unknown object!\"","__parent","readFile","tracingHandler","match","getinfo","modf","level","trace","any2str","date","\"\\n\"","isdir","sethook","__keyCanBeNum","\"\\\\\"","setmetatable","getFuncTitle","splitpathex","unpack","\"\"","currentdir","traceback","startTime","_G","month","\"rd /S /Q \"","close","clearLog","\"copy /Y \"","\"  \"","stopTime","setLevel","tonumber","mode","hour","fmod","year","seek","name","\"profile\"","open","rename","remove",}; function prettify(code) return code:gsub("["..string.char(base_char).."-"..string.char(base_char+#keywords).."]", 
	function (c) return keywords[c:byte()-base_char]; end) end return assert(loadstring(prettify[===[�.�['sllib.class']=(�(...)� e={}Class=e
� n={}Class.�=n
� � n(e)e.__index=e
� �({},e)�
� e:new(...)� e=n(�)e:ctor(...)� e
�
� e:ctor(...)�
� e:dtor()�
� e:subclass(t)� e=n(�)e.__name=t
e.�=�
� e
�
� e:super()� �.�
�
�)�.�['sllib.debug_ext']=(�(...)� r=�"sllib.profiler"� a=10
� i=100
� �.tracevalue(e,t)e=e � 2
t=t � 2
� r={}�.�(r,"stack tracevalue:")� l=�
� n=� t=e+t
� e<t �
� t=�.�(e,"nS")l=t.what=="main"� o={}�.�(o,�.�(n.."file:%s line:%d function:%s()\n",t.�,t.�,t.� ��))n=n..� n=1,a �
� n,e=�.getlocal(e,n)� �==n �
�
�
� �(e)~="function"� n~="self"�
� t
� �(e)==��
t=�.�(�.tostringex(e),1,i)�
t=�(e)�
�.�(o,�(n).."="..t)�.�(o,�)�
�
�.�(r,�.�(o,n))� l �
�
�
e=e+1
n=n..�
� �.�(r,�)�
�.startanalysis=�(e)r:�(3)r:start(e)�
�.stopanalysis=�(e)r:stop(e)�
�)�.�['sllib.global']=(�(...)� �(e)� e<0 �
�"-"..�(-e)�
� e<=10^13 �
� �(e)�
� �.�(e)~=e �
� �(e)�
� n=�.�(e,10^13)� e=�.�(e/10^13)� e=�.�("%s%013s",�(e),�(n))� e
�
�)�.�['sllib.io_ext']=(�(...)� �.�(n,e)e=e �"r"� e=�.�(n,e)� e==� �
� �
�
� n=e:read("*a")e:�()� n
�
� �.�(n,t,e)e=e �"w"� e=�.�(n,e)� e==� �
� �
�
e:write(t)e:�()� �
�
� �.fileSize(e)� n=0
� e=�.�(e,"r")� e �
� t=e:�()n=e:�("end")e:�("set",t)�.�(e)�
� n
�
� �.readJsonFile(e)� e=�.�(e)� �==e � e==ޒ
� �
�
� n=�"cjson"� �"json"� e=n.decode(e)� e
�
� �.writeJsonFile(e,t)� n=�.�(e)�.�(n)� n=�"cjson"� �"json"�.�(e,n.encode(t))� �
�
� �.readLuaFile(e)� e=�.�(e)� �==e �
� �
�
� n=� � load
� e=n(e)()� e
�
� �.writeLuaFile(e,n)� t=�.�(e)�.�(t)� �==�.� �
� �
�
� n=�.�(n)� �==n �
� �
�
�.�(e,n)� �
�
�)�.�['sllib.logs']=(�(...)�=� �{}� i=�
� o=�
� t=�
� � l(e)� �(e)==��
� t �
��..e..Ä
� e
�
� �(e)==��
� �.�(e)� �(e)==��
� �(e)�
� e=�(e)�ʑ e
�
�
� � n()� o �
� o
�
� e=�.�("*t")� e=�.�("%s_%s_%s.log",e.�,e.�,e.day)o=e
� e
�
� � a(t)� e=n()�.�(e,t,"a+")�
� � r(t)� e=�.�("*t")� o=�.�()� n=t
� i �
n=�.�("[%s-%s-%s %02s:%02s:%02s %s]\n%s",e.�,e.�,e.day,e.�,e.min,e.sec,o,t)�
n=t
�
�(n)a(n)a('\n')�
� �.showLogTime(e)i=e
�
� �.setLogPath(e)o=e
�
� �.clear()� e=getLogPath()� � �.exist(e)�
�
�
�.�(e,�)�
� �.i(...)� n,e � �({...})�
� e=l(e)r(e)�
�
� �.w(...)�.�("echo. & color 0E")� n,e � �({...})�
� e=l(e)r(e)�
�
� �.e(...)�.�("echo. & color 0C")�.i(...)� e=t
t=�
�(�.�(�,2))t=e
�
� �.f(e,...)r(�.�(e,...))�
� �.�(e,...)e=e �"nil"� e=�.�(e,...)� e=�.�(e,2)r(e)�
� �
�)�.�['sllib.os_ext']=(�(...)� n=�"lfs"� � t(e)e=�.�(e,�,�)� �.�(e,-1,-1)==��
e=�.�(e,1,-2)�
� e
�
� � r(e)� �.�(e,"^%a:")�
� �.newfile(e)�.�(e)� e="echo.>"..e
�.�(e)�
� �.�()� n.�()�
� �.chdir(e)� n.chdir(e)�
� �.filetime(e)� e=n.�(e)� e � e.modification � 0
�
� �.�(e)� e=n.�(e)� e � e.�=="directory"�
� �.isfile(e)� e=n.�(e)� e � e.�=="file"�
� �.exist(e)� e=n.�(e)� �~=e
�
� �.filesize(e)� e=n.�(e)� e.size
�
� �.�(n)n=t(n)� e=#n
� t=�.�(n,e,e)� e>0 � t~=��
e=e-1
t=�.�(n,e,e)�
� e==0 �
��,n
�
� t=�.�(n,1,e-1)� e=�.�(n,e+1)� t,e
�
� �.�(n)� e={}� t=n
� n
� � �
t,n=�.�(t)� �==n ��==n �
�
�
�.�(e,n)�
e=�.reverse(e)� e,#e
�
� �.�(e)� e,n=�.�(e)� e
�
� �.�(e)� n,e=�.�(e)� e
�
� �.extension(e)� �.�(e,"%.%w*$")�
� �.�(e)e=t(e)� t=�.�(e)� e=ވ o=1,#t �
e=e..t[o]� � r(t[o])� � �.�(e)�
� e,n=n.�(e)� �==e �
� e,n
�
�
e=e..��
� �
�
� �.�(e)e=t(e)� e=�.�(e)� e � e~=ޒ
� �.�(e)�
� �
�
� �.rmdir(n,e)� � �.�(n)�
� e �
�("os.rmdir error:not dir:"..n)�
�
�
n=�.�(n,�,�)� t
� e �
t=�..n
�
t=�..n..��
� e==� �
e=�
�
� e � e(t)�
� �.�(t)�
� �.movedir(n,e)n=t(n)e=t(e)� t=�.�(n)e=e..�..t
�.�(e)� �.�(n,e)�
� �.copydir(n,e,o)n=t(n)e=t(e)� � �.�(n)�
�("path error",n,e)� �
�
� t=�.�(n)e=e..�..t
�.�(e)n=�.�(n,�,�)e=�.�(e,�,�)� t
� o �
t=�..n.." "..e
�
t=�..n.." "..e..��
� o==� �
o=�
�
� o � o(t)�
�.�(t)�
� �.copyfile(o,e,n)�.�(e)o=�.�(o,�,�)e=�.�(e,�,�)� t
� n �
t=�..o.." "..e
�
t=�..o.." "..e..��
� n==� �
n=�
�
� n � n(t)�
� �.�(t)�
� �.movefile(n,e)�.�(e)� t=�.�(n)e=e..�..t
� �.�(n,e)�
� �.dirempty(e)� e=�.dir(e,�)� �.empty(e)�
� �.dir(t,e,l)� �.�(t,-1,-1)==��
t=�.�(t,1,-2)�
� o=30
� �(e)=="boolean"�
e=e==� � 1 � o
� �(e)==��
e=e
�
e=o
�
� o={}� r={}� � i(a,t)t=t-1
� e � n.dir(a)�
� e~='.'� e~='..'�
� e=a..'/'..e
� n=n.�(e)� n==� �
�
�
� n=n.�=='directory'� �==l � l(e,n)�
� n �
�.�(o,e)�
�.�(r,e)�
� n � t>0 �
i(e,t)�
�
�
�
�
i(t,e)� r,o
�
�)�.�['sllib.profiler']=(�(...)� e={}� e:setLogFunc(e)�.�=e
�
� e:�(e)�.�=e
�
� e:start(e)e=e ��.�=�
� e=="trace"�
�.�(bind(�.�,�),'c')�
�.�={}�.�=�.�()�.�=3
�.�(bind(�.�,�),'cr')�
�
� e:stop(e)e=e ��.�()� e=="trace"�
�
�
�.�=�.�()� n=�.�-�.�
� n<.001 �
�.�("total time less 0.001s")�
�
� e=�.values(�.�)�.sort(e,�(e,n)� e.�>n.�
�)� t,e � �(e)�
� n=(e.�/n)*100
� n<1 �
�
�
� e=�.�("time:%6.3f, percet:%.2f%%, count:%d, %s",e.�,n,e.�,e.title)�.�(e)�
�
� e:�()� e=�.�(�.�,'nS')� e=�.�("file:%s line:%d function:%s()",e.�,e.�,e.� ��)�.�(e)�
� e:�(e)� n=e.� �'anonymous'� t=e.� �'C_FUNC'� e=e.� � 0
� �.�("file:%s line:%s function:%s",t,e,n)�
� e:�(e)� n=�:�(e)� e=�.�[n]� � e �
e={title=n,�=0,�=0,}�.�[n]=e
�
� e
�
� e:�(n)� o=�(e)� e=�:�(e)e.�=�.�()e.�=e.�+1
�
� t=�(e)� n=�.�()� e=�:�(e)� e.� � e.�>0 �
e.�=e.�+(n-e.�)e.�=0
�
�
� e=�.�(�.�,'nS')� n=="call"�
o(e)� n=="return"�
t(e)�
�
� e
�)�.�['sllib.string_ext']=(�(...)� �.strtox16(e)� �.�(e,".",�(e)� �.�("%02X",�.byte(e))�)�
� �.x16tostr(e)� �.�(e,"..",�(e)� e=�(e,16)� �.char(e)�)�
� �.dumpex(e)� �.�(e,".",�(e)� �.�("%02X ",�.byte(e))�)�
� �.iterateString(n,e,t)e=e �'\n'� � �.�(n,e)�
t(n)�
�
� e � �.gmatch(n,"(.-)"..e)�
t(e)�
� �.�(n,#n-#e+1)==e �
t(�)�
�
� e=�.�(n,".+"..e.."(.*)$")� e �
t(e)�
�
� �.split(n,o)� e=1
� t=1
� t={}� e �
� o,r=�.find(n,o,e)� o � r �
�.�(t,�.�(n,e,o-1))e=r+1
�
� e<=#n �
�.�(t,�.�(n,e,-1))�
�
�
�
� t
�
�)�.�['sllib.table_ext']=(�(...)� � o(t,e)� e,n � �(e)�
t[e]=n
�
�
� � g(e,n)� n,t � �(n)�
e[n]=e[n]� t
�
�
� e={�=�,�=�,}o(�,e)� � l(r)� � � �
�{}�
� o={}� t={}� � n(e)� o[e]�
t[e]=e
�
�
o[e]=e
� e,t � �(e)�
� �(e)==��
n(e)� �(t)==��
n(t)�
�
�
n(r)� t
�
� � c(c,u,d)� n=�.�
� f=�.�
� s={}� r=l(c)� � a(o,l,t)l=l �(l-1)� 30
� l<0 �
� t.."..."�
t=t �ފ next(o)==� �
� t.."{}"�
� � �
s[o]=o
�
� e={}n(e,t.."{")� r[o]�
n(e,�(o))�
n(e,�)t=t..� � �#o==0 �
� i,r � �(o)�
n(e,t)� �(i)==��
� s[o]�
n(e,�(o))�
�(e)n(e,a(i,l,t))�
� �(i)==��
n(e,"["..�(i).."]")�
� t=�.�(i)n(e,'["'..t..'"]')�
n(e," = ")� �(r)==��
� s[r]�
n(e,�(r))�
n(e,�)n(e,a(r,l,t))�
� �(r)==��
n(e,�(r))� �(r)==��
n(e,�..r..�)�
n(e,�.�(r))�
n(e,",\n")�
�
� r,o � �(o)�
n(e,t)n(e,"["..�(r).."]")n(e," = ")� �(o)==��
n(e,�)� s[o]�
n(e,�(o))�
n(e,a(o,l,t))�
� �(o)==��
n(e,�(o))�
n(e,�..�.�(o)..�)�
n(e,",\n")�
�
e[#e]=","n(e,�..�.�(t,1,-3).."}")� f(e)�
� a(c,u,d)�
� � l(t,o)� n=�.�
� i=�.�
o=o �(o-1)� 10
� o<0 �
�"..."�
� e={}n(e,"{")� r,t � �(t)�
� �(r)==��
n(e,l(r,o))n(e,"=")� �(r)==��
�
n(e,'["'..�.�(r)..'"]')n(e,"=")�
� �(t)==��
n(e,l(t,o))� �(t)==��
n(e,�(t))� �(t)==��
n(e,�..t..�)�
n(e,�.�(t))�
n(e,",")�
n(e,"}")� i(e)�
� e={["empty"]=�(e)� next(e)==�
�,["keys"]=�(n)� e={}� n,t � �(n �{})�
�(e,n)�
� e
�,["values"]=�(n)� e={}� t,n � �(n �{})�
�(e,n)�
� e
�,["invert"]=�(n)� e={}� n,t � �(n �{})�
e[t]=n
�
� e
�,["clone"]=�(n,t)� e={}� � t �
�(e,getmetatable(n))�
� t,n � �(n)�
e[t]=n
�
� e
�,["merge"]=�(...)� e={}� t,n � �({...})�
� t,n � �(n)�
e[t]=n
�
�
� e
�,["address"]=�(n)� e
� rawget(�,"_tostring")�
e=_tostring(n)�
e=c(n)�
� �.�(e,"^table: ",�)�ކ,["tostring"]=c,["tostringex"]=l,["print"]=�(e)� �(e)~=��
�.�(e)�
�.�(�.�(e))�
�,}g(�,e)�)�.�['sllib.list_ext']=(�(...)�=� �{}� � o(n,e)� e,t � �(e)�
n[e]=n[e]� t
�
�
� e={["append"]=�(e,n)�.�(e,n)� e
�,["concat"]=�(...)� e={}� t,n � �({...})�
� t,n � �(n)�
�.�(e,n)�
�
� e
�,["remove"]=�(e,o)� t,n � �(e)�
� n==o �
�.�(e,t)�
�
�
� e
�,["sub"]=�(t,o,e)e=e �#t
� n={}� e=o,e �
�.�(n,t[e])�
� n
�,["cut"]=�(n,e)� n=�.�(1,e)� e=�.�(e+1)� n,e
�,["exist"]=�(n,e)� t,n � �(n)�
� n==e �
� �
�
�
� �
�,["reverse"]=�(e)� n={}� t=#e,1,-1 �
�.�(n,e[t])�
� n
�,["mirror"]=�(n)� e={}� t,n � �(n)�
e[n]=n
�
� e
�,["project"]=�(n,t)� e={}� o,n � �(n)�
e[n[t]]=n
�
� e
�,}o(�,e)�)�.�['sllib.time']=(�(...)�=� �{}� � t(n,e)� e,t � �(e)�
n[e]=n[e]� t
�
�
� e={["time"]=�()� �.�()�,["clock"]=�()� �.�()�,["millitime"]=�()� �.�(socket.gettime()*1e3)�,["sleep"]=�(e)e=e � 0
�.�("ping -n "..�(e+1).." localhost > NUL")�,["getStr"]=�(e,n)e=e �'%c'n=n � �.�()� �.�(e,n)�,["getEndOfDay"]=�()� e=�.�()� e=�.�('*t',e)� e=�.�('*t',�.�({�=e["year"],�=e["month"],day=e["day"],�=23,min=59,sec=59}))� e=�.�(e)� e
�,["toHour"]=�(e)� t=�.�(e/3600)� n=�.�(�.�(e,3600)/60)� e=�.�(e,60)�{�=t,min=n,sec=e}�,}t(�,e)�)rawset(�,"SLLIB_VERSION","1.1")�"sllib.global"�"sllib.io_ext"�"sllib.os_ext"�"sllib.table_ext"�"sllib.string_ext"�"sllib.list_ext"�"sllib.debug_ext"�"sllib.time"�"sllib.logs"�"sllib.class"enum=�.invert
log=log � �.i
logw=logw � �.w
loge=loge � �.e
�=� � �.�
�=� � �.clear
�=� � �.�
�=� � load
� �(e)� �(e)==��
��..e..Å �(e)==��
� �.�(e)� �(e)==��
� �(e)�
� e=�(e)�ʑ e
�
�
]===], '@sllib_base.lua'))()