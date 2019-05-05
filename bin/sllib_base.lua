loadstring = loadstring or load 
local base_char,keywords=128,{"and","break","do","else","elseif","end","false","for","function","if","in","local","nil","not","or","repeat","return","then","true","until","while","string","table","tostring","numbertostring","require","insert","self","type","os","package","preload","\"table\"","logs","format","ipairs","totaltime","\"number\"","attributes","debug","pairs","reportsByTitle","execute","tableAddress","print","writeFile","sub","calltime","gsub","__showInnerRef","splitpath","\" 1>nul 2>nul\"","logFunc","getFuncReport","mkdir","callcount","\"/\"","mkpredir","time","math","basename","clock","linedefined","\"string\"","dirname","loadstring","'\"'","\"xcopy /Y /E /I /Q \"","short_src","io","profilingHandler","list","concat","\"Unknown object!\"","__parent","readFile","tracingHandler","match","getinfo","modf","level","trace","any2str","date","\"\\n\"","isdir","sethook","__keyCanBeNum","\"\\\\\"","setmetatable","getFuncTitle","splitpathex","unpack","\"\"","currentdir","traceback","startTime","_G","month","\"rd /S /Q \"","close","clearLog","\"copy /Y \"","\"  \"","stopTime","setLevel","tonumber","mode","hour","fmod","year","seek","name","\"profile\"","open","rename","remove",}; function prettify(code) return code:gsub("["..string.char(base_char).."-"..string.char(base_char+#keywords).."]", 
	function (c) return keywords[c:byte()-base_char]; end) end return assert(loadstring(prettify[===[ü.†['sllib.class']=(â(...)å e={}Class=e
å n={}Class.À=n
å â n(e)e.__index=e
ë ⁄({},e)Ü
â e:new(...)å e=n(ú)e:ctor(...)ë e
Ü
â e:ctor(...)Ü
â e:dtor()Ü
â e:subclass(t)å e=n(ú)e.__name=t
e.À=ú
ë e
Ü
â e:super()ë ú.À
Ü
Ü)ü.†['sllib.debug_ext']=(â(...)å r=ö"sllib.profiler"å a=10
å i=100
â ®.tracevalue(e,t)e=e è 2
t=t è 2
å r={}ó.õ(r,"stack tracevalue:")å l=á
å n=Ëå t=e+t
ï e<t É
å o=®.œ(e,"nS")l=o.what=="main"å t={}ó.õ(t,ñ.£(n.."file:%s line:%d function:%s()\n",o.≈,o.ø,o.Ò èﬁ))n=n..Ëà n=1,a É
å n,e=®.getlocal(e,n)ä ç==n í
Ç
Ü
ä ù(e)~="function"Å n~="self"í
å o
ä ù(e)==°í
o=ñ.Ø(ó.tostringex(e),1,i)Ñ
o=”(e)Ü
ó.õ(t,”(n).."="..o)ó.õ(t,’)Ü
Ü
ó.õ(r,ó.…(t,n))ä l í
Ç
Ü
e=e+1
n=n..ËÜ
ë ó.…(r,’)Ü
®.startanalysis=â(e)r:Í(3)r:start(e)Ü
®.stopanalysis=â(e)r:stop(e)Ü
Ü)ü.†['sllib.global']=(â(...)â ô(e)ä e<0 í
ë"-"..ô(-e)Ü
ä e<=10^13 í
ë ò(e)Ü
ä º.–(e)~=e í
ë ò(e)Ü
å n=º.Ó(e,10^13)å e=º.–(e/10^13)å e=ñ.£("%s%013s",ò(e),ò(n))ë e
Ü
Ü)ü.†['sllib.io_ext']=(â(...)â ∆.Ã(n,e)e=e è"r"å e=∆.Û(n,e)ä e==ç í
ë ç
Ü
å n=e:read("*a")e:Â()ë n
Ü
â ∆.Æ(n,t,e)e=e è"w"å e=∆.Û(n,e)ä e==ç í
ë á
Ü
e:write(t)e:Â()ë ì
Ü
â ∆.fileSize(e)å n=0
å e=∆.Û(e,"r")ä e í
å t=e:()n=e:("end")e:("set",t)∆.Â(e)Ü
ë n
Ü
â ∆.readJsonFile(e)å e=∆.Ã(e)ä ç==e è e==ﬁí
ë ç
Ü
å n=ö"cjson"è ö"json"å e=n.decode(e)ë e
Ü
â ∆.writeJsonFile(e,t)å n=û.¡(e)û.∑(n)å n=ö"cjson"è ö"json"∆.Æ(e,n.encode(t))ë ì
Ü
â ∆.readLuaFile(e)å e=∆.Ã(e)ä ç==e í
ë ç
Ü
å n=¬ è load
å e=n(e)()ë e
Ü
â ∆.writeLuaFile(n,e)å t=û.¡(n)û.∑(t)ä ç==ó.ò í
ë á
Ü
å e=ó.ò(e)ä ç==e í
ë á
Ü
∆.Æ(n,e)ë ì
Ü
Ü)ü.†['sllib.logs']=(â(...)¢=¢ è{}å i=á
å t=ç
å n=ì
å â l(e)ä ù(e)==¿í
ä n í
ë√..e..√Ñ
ë e
Ü
Ö ù(e)==°í
ë ó.ò(e)Ö ù(e)==¶í
ë ô(e)Ñ
å e=ò(e)è ë e
Ü
Ü
å â o()ä t í
ë t
Ü
å e=û.‘("*t")å e=ñ.£("%s_%s_%s.log",e.Ô,e.„,e.day)t=e
ë e
Ü
å â r(n)å e=o()∆.Æ(e,n,"a+")Ü
å â o(t)å e=û.‘("*t")å o=û.æ()å n=t
ä i í
n=ñ.£("[%s-%s-%s %02s:%02s:%02s %s]\n%s",e.Ô,e.„,e.day,e.Ì,e.min,e.sec,o,t)Ñ
n=t
Ü
≠(n)r(n)r('\n')Ü
â ¢.showLogTime(e)i=e
Ü
â ¢.setLogPath(e)t=e
Ü
â ¢.clear()å e=getLogPath()ä é û.exist(e)í
ë
Ü
∆.Æ(e,ﬁ)Ü
â ¢.i(...)à n,e ã §({...})É
å e=l(e)o(e)Ü
Ü
â ¢.w(...)û.´("echo. & color 0E")à n,e ã §({...})É
å e=l(e)o(e)Ü
Ü
â ¢.e(...)û.´("echo. & color 0C")¢.i(...)å e=n
n=á
¢(®.‡(ﬁ,2))n=e
Ü
â ¢.f(e,...)o(ñ.£(e,...))Ü
â ¢.“(e,...)e=e è"nil"å e=ñ.£(e,...)å e=®.‡(e,2)o(e)Ü
ë ¢
Ü)ü.†['sllib.os_ext']=(â(...)å n=ö"lfs"å â t(e)e=ñ.±(e,Ÿ,π)ä ñ.Ø(e,-1,-1)==πí
e=ñ.Ø(e,1,-2)Ü
ë e
Ü
å â r(e)ë ñ.Œ(e,"^%a:")Ü
â û.newfile(e)û.∫(e)å e="echo.>"..e
û.´(e)Ü
â û.ﬂ()ë n.ﬂ()Ü
â û.chdir(e)ë n.chdir(e)Ü
â û.filetime(e)å e=n.ß(e)ë e Å e.modification è 0
Ü
â û.÷(e)å e=n.ß(e)ë e Å e.Ï=="directory"Ü
â û.isfile(e)å e=n.ß(e)ë e Å e.Ï=="file"Ü
â û.exist(e)å e=n.ß(e)ë ç~=e
Ü
â û.filesize(e)å e=n.ß(e)ë e.size
Ü
â û.≥(n)n=t(n)å e=#n
å t=ñ.Ø(n,e,e)ï e>0 Å t~=πÉ
e=e-1
t=ñ.Ø(n,e,e)Ü
ä e==0 í
ëﬁ,n
Ü
å t=ñ.Ø(n,1,e-1)å e=ñ.Ø(n,e+1)ë t,e
Ü
â û.‹(n)å e={}å t=n
å n
ï ì É
t,n=û.≥(t)ä ç==n èﬁ==n í
Ç
Ü
ó.õ(e,n)Ü
e=».reverse(e)ë e,#e
Ü
â û.¡(e)å e,n=û.≥(e)ë e
Ü
â û.Ω(e)å n,e=û.≥(e)ë e
Ü
â û.extension(e)ë ñ.Œ(e,"%.%w*$")Ü
â û.∑(e)e=t(e)å t=û.‹(e)å e=ﬁà o=1,#t É
e=e..t[o]ä é r(t[o])Å é û.÷(e)í
å e,n=n.∑(e)ä ç==e í
ë e,n
Ü
Ü
e=e..πÜ
ë ì
Ü
â û.∫(e)e=t(e)å e=û.¡(e)ä e Å e~=ﬁí
ë û.∑(e)Ü
ë ì
Ü
â û.rmdir(e,n)ä é û.÷(e)í
ä n í
≠("os.rmdir error:not dir:"..e)Ü
ë
Ü
e=ñ.±(e,π,Ÿ)å t
ä n í
t=‰..e
Ñ
t=‰..e..¥Ü
ä n==ì í
n=≠
Ü
ä n í n(t)Ü
ë û.´(t)Ü
â û.movedir(n,e)n=t(n)e=t(e)å t=û.Ω(n)e=e..π..t
û.∫(e)ë û.Ù(n,e)Ü
â û.copydir(n,e,o)n=t(n)e=t(e)ä é û.÷(n)í
≠("path error",n,e)ë á
Ü
å t=û.Ω(n)e=e..π..t
û.∫(e)n=ñ.±(n,π,Ÿ)e=ñ.±(e,π,Ÿ)å t
ä o í
t=ƒ..n.." "..e
Ñ
t=ƒ..n.." "..e..¥Ü
ä o==ì í
o=≠
Ü
ä o í o(t)Ü
û.´(t)Ü
â û.copyfile(o,e,n)û.∑(e)o=ñ.±(o,π,Ÿ)e=ñ.±(e,π,Ÿ)å t
ä n í
t=Á..o.." "..e
Ñ
t=Á..o.." "..e..¥Ü
ä n==ì í
n=≠
Ü
ä n í n(t)Ü
ë û.´(t)Ü
â û.movefile(n,e)û.∑(e)å t=û.Ω(n)e=e..π..t
ë û.Ù(n,e)Ü
â û.dirempty(e)å e=û.dir(e,ì)ë ó.empty(e)Ü
â û.dir(t,e,r)ä ñ.Ø(t,-1,-1)==πí
t=ñ.Ø(t,1,-2)Ü
å o=30
ä ù(e)=="boolean"í
e=e==á Å 1 è o
Ö ù(e)==¶í
e=e
Ñ
e=o
Ü
å l={}å a={}å â o(i,t)t=t-1
à e ã n.dir(i)É
ä e~='.'Å e~='..'í
å e=i..'/'..e
å n=n.ß(e)ä n==ç í
Ç
Ü
å n=n.Ï=='directory'ä ç==r è r(e,n)í
ä n í
ó.õ(l,e)Ñ
ó.õ(a,e)Ü
ä n Å t>0 í
o(e,t)Ü
Ü
Ü
Ü
Ü
o(t,e)ë a,l
Ü
Ü)ü.†['sllib.profiler']=(â(...)å e={}â e:setLogFunc(e)ú.µ=e
Ü
â e:Í(e)ú.—=e
Ü
â e:start(e)e=e èÚú.µ=≠
ä e=="trace"í
®.◊(bind(ú.Õ,ú),'c')Ñ
ú.™={}ú.·=û.æ()ú.—=3
®.◊(bind(ú.«,ú),'cr')Ü
Ü
â e:stop(e)e=e èÚ®.◊()ä e=="trace"í
ë
Ü
ú.È=û.æ()å n=ú.È-ú.·
ä n<.001 í
ú.µ("total time less 0.001s")ë
Ü
å e=ó.values(ú.™)ó.sort(e,â(e,n)ë e.•>n.•
Ü)à t,e ã §(e)É
å n=(e.•/n)*100
ä n<1 í
Ç
Ü
å e=ñ.£("time:%6.3f, percet:%.2f%%, count:%d, %s",e.•,n,e.∏,e.title)ú.µ(e)Ü
Ü
â e:Õ()å e=®.œ(ú.—,'nS')å e=ñ.£("file:%s line:%d function:%s()",e.≈,e.ø,e.Ò èﬁ)ú.µ(e)Ü
â e:€(e)å n=e.Ò è'anonymous'å t=e.≈ è'C_FUNC'å e=e.ø è 0
ë ñ.£("file:%s line:%s function:%s",t,e,n)Ü
â e:∂(e)å n=ú:€(e)å e=ú.™[n]ä é e í
e={title=n,∏=0,•=0,}ú.™[n]=e
Ü
ë e
Ü
â e:«(n)å o=â(e)å e=ú:∂(e)e.∞=û.æ()e.∏=e.∏+1
Ü
å t=â(e)å n=û.æ()å e=ú:∂(e)ä e.∞ Å e.∞>0 í
e.•=e.•+(n-e.∞)e.∞=0
Ü
Ü
å e=®.œ(ú.—,'nS')ä n=="call"í
o(e)Ö n=="return"í
t(e)Ü
Ü
ë e
Ü)ü.†['sllib.string_ext']=(â(...)â ñ.strtox16(e)ë ñ.±(e,".",â(e)ë ñ.£("%02X",ñ.byte(e))Ü)Ü
â ñ.x16tostr(e)ë ñ.±(e,"..",â(e)å e=Î(e,16)ë ñ.char(e)Ü)Ü
â ñ.dumpex(e)ë ñ.±(e,".",â(e)ë ñ.£("%02X ",ñ.byte(e))Ü)Ü
â ñ.iterateString(n,e,t)e=e è'\n'ä é ñ.Œ(n,e)í
t(n)ë
Ü
à e ã ñ.gmatch(n,"(.-)"..e)É
t(e)Ü
ä ñ.Ø(n,#n-#e+1)==e í
t(ﬁ)ë
Ü
å e=ñ.Œ(n,".+"..e.."(.*)$")ä e í
t(e)Ü
Ü
â ñ.split(n,o)å e=1
å t=1
å t={}ï e É
å o,r=ñ.find(n,o,e)ä o Å r í
ó.õ(t,ñ.Ø(n,e,o-1))e=r+1
Ñ
ä e<=#n í
ó.õ(t,ñ.Ø(n,e,-1))Ü
Ç
Ü
Ü
ë t
Ü
Ü)ü.†['sllib.table_ext']=(â(...)å â o(t,e)à e,n ã ©(e)É
t[e]=n
Ü
Ü
å â g(e,n)à n,t ã ©(n)É
e[n]=e[n]è t
Ü
Ü
å e={≤=á,ÿ=ì,}o(ó,e)å â l(r)ä é ≤ í
ë{}Ü
å o={}å t={}å â n(e)ä o[e]í
t[e]=e
ë
Ü
o[e]=e
à t,e ã ©(e)É
ä ù(t)==°í
n(t)Ö ù(e)==°í
n(e)Ü
Ü
Ü
n(r)ë t
Ü
å â c(c,u,d)å n=ó.õ
å f=ó.…
å a={}å r=l(c)å â s(o,l,t)l=l Å(l-1)è 30
ä l<0 í
ë t.."..."Ü
t=t èﬁä next(o)==ç í
ë t.."{}"Ü
ä ≤ í
a[o]=o
Ü
å e={}n(e,t.."{")ä r[o]í
n(e,¨(o))Ü
n(e,’)t=t..Ëä ÿ è#o==0 í
à i,r ã ©(o)É
n(e,t)ä ù(i)==°í
ä a[o]í
n(e,¨(o))Ñ
ı(e)n(e,s(i,l,t))Ü
Ö ù(i)==¶í
n(e,"["..ô(i).."]")Ñ
å t=‚.ò(i)n(e,'["'..t..'"]')Ü
n(e," = ")ä ù(r)==°í
ä a[r]í
n(e,¨(r))Ñ
n(e,’)n(e,s(r,l,t))Ü
Ö ù(r)==¶í
n(e,ô(r))Ö ù(r)==¿í
n(e,√..r..√)Ñ
n(e,‚.ò(r))Ü
n(e,",\n")Ü
Ñ
à r,o ã §(o)É
n(e,t)n(e,"["..ô(r).."]")n(e," = ")ä ù(o)==°í
n(e,’)ä a[o]í
n(e,¨(o))Ñ
n(e,s(o,l,t))Ü
Ö ù(o)==¶í
n(e,ô(o))Ñ
n(e,√..‚.ò(o)..√)Ü
n(e,",\n")Ü
Ü
e[#e]=","n(e,’..ñ.Ø(t,1,-3).."}")ë f(e)Ü
ë s(c,u,d)Ü
å â l(t,o)å n=ó.õ
å i=ó.…
o=o Å(o-1)è 10
ä o<0 í
ë"..."Ü
å e={}n(e,"{")à r,t ã ©(t)É
ä ù(r)==°í
n(e,l(r,o))n(e,"=")Ö ù(r)==¶í
Ñ
n(e,'["'..‚.ò(r)..'"]')n(e,"=")Ü
ä ù(t)==°í
n(e,l(t,o))Ö ù(t)==¶í
n(e,ô(t))Ö ù(t)==¿í
n(e,√..t..√)Ñ
n(e,‚.ò(t))Ü
n(e,",")Ü
n(e,"}")ë i(e)Ü
å e={["empty"]=â(e)ë next(e)==ç
Ü,["keys"]=â(n)å e={}à n,t ã ©(n è{})É
õ(e,n)Ü
ë e
Ü,["values"]=â(n)å e={}à t,n ã ©(n è{})É
õ(e,n)Ü
ë e
Ü,["invert"]=â(n)å e={}à t,n ã ©(n è{})É
e[n]=t
Ü
ë e
Ü,["clone"]=â(n,t)å e={}ä é t í
⁄(e,getmetatable(n))Ü
à t,n ã ©(n)É
e[t]=n
Ü
ë e
Ü,["merge"]=â(...)å e={}à t,n ã §({...})É
à t,n ã ©(n)É
e[t]=n
Ü
Ü
ë e
Ü,["address"]=â(n)å e
ä rawget(‚,"_tostring")í
e=_tostring(n)Ñ
e=c(n)Ü
ë ñ.±(e,"^table: ",ﬁ)èﬁÜ,["tostring"]=c,["tostringex"]=l,["print"]=â(e)ä ù(e)~=°í
‚.≠(e)Ñ
‚.≠(ó.ò(e))Ü
Ü,}g(ó,e)Ü)ü.†['sllib.list_ext']=(â(...)»=» è{}å â o(n,e)à e,t ã ©(e)É
n[e]=n[e]è t
Ü
Ü
å e={["append"]=â(e,n)ó.õ(e,n)ë e
Ü,["concat"]=â(...)å e={}à t,n ã §({...})É
à t,n ã §(n)É
ó.õ(e,n)Ü
Ü
ë e
Ü,["remove"]=â(e,o)à n,t ã §(e)É
ä t==o í
ó.ı(e,n)Ç
Ü
Ü
ë e
Ü,["sub"]=â(n,o,e)e=e è#n
å t={}à e=o,e É
ó.õ(t,n[e])Ü
ë t
Ü,["cut"]=â(n,e)å n=».Ø(1,e)å e=».Ø(e+1)ë n,e
Ü,["exist"]=â(e,n)à t,e ã §(e)É
ä e==n í
ë ì
Ü
Ü
ë á
Ü,["reverse"]=â(n)å e={}à t=#n,1,-1 É
ó.õ(e,n[t])Ü
ë e
Ü,["mirror"]=â(e)å n={}à t,e ã §(e)É
n[e]=e
Ü
ë n
Ü,["project"]=â(n,t)å e={}à o,n ã §(n)É
e[n[t]]=n
Ü
ë e
Ü,}o(»,e)Ü)ü.†['sllib.time']=(â(...)ª=ª è{}å â o(e,n)à n,t ã ©(n)É
e[n]=e[n]è t
Ü
Ü
å e={["time"]=â()ë û.ª()Ü,["clock"]=â()ë û.æ()Ü,["millitime"]=â()ö"socket.core"ë º.–(socket.gettime()*1e3)Ü,["sleep"]=â(e)e=e è 0
û.´("ping -n "..Î(e+1).." localhost > NUL")Ü,["getstr"]=â(e,n)e=e è'%c'n=n è û.ª()ë û.‘(e,n)Ü,["getendofday"]=â(e)e=e è û.ª()å e=û.‘('*t',e)å e=û.‘('*t',û.ª({Ô=e["year"],„=e["month"],day=e["day"],Ì=23,min=59,sec=59}))å e=û.ª(e)ë e
Ü,["tohour"]=â(e)å t=º.–(e/3600)å n=º.–(º.Ó(e,3600)/60)å e=º.Ó(e,60)ë{Ì=t,min=n,sec=e}Ü,}o(ª,e)Ü)rawset(‚,"SLLIB_VERSION","1.1")ö"sllib.global"ö"sllib.io_ext"ö"sllib.os_ext"ö"sllib.table_ext"ö"sllib.string_ext"ö"sllib.list_ext"ö"sllib.debug_ext"ö"sllib.time"ö"sllib.logs"ö"sllib.class"enum=ó.invert
log=log è ¢.i
logw=logw è ¢.w
loge=loge è ¢.e
“=“ è ¢.“
Ê=Ê è ¢.clear
›=› è ó.›
¬=¬ è load
â ”(e)ä ù(e)==¿í
ë√..e..√Ö ù(e)==°í
ë ó.ò(e)Ö ù(e)==¶í
ë ô(e)Ñ
å e=ò(e)è ë e
Ü
Ü
]===], '@sllib_base.lua'))()