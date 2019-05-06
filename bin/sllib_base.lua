loadstring = loadstring or load 
local base_char,keywords=128,{"and","break","do","else","elseif","end","false","for","function","if","in","local","nil","not","or","repeat","return","then","true","until","while","string","table","tostring","numbertostring","require","insert","self","type","os","package","preload","\"table\"","logs","ipairs","format","pairs","totaltime","\"number\"","attributes","debug","execute","reportsByTitle","print","tableAddress","writeFile","calltime","sub","gsub","__showInnerRef","callcount","splitpath","\" 1>nul 2>nul\"","getFuncReport","logFunc","mkpredir","time","math","mkdir","linedefined","clock","\"/\"","concat","\"string\"","loadstring","list","dirname","'\"'","\"xcopy /Y /E /I /Q \"","io","short_src","profilingHandler","\" localhost > NUL\"","__parent","\"Unknown object!\"","readFile","basename","tonumber","tracingHandler","modf","__keyCanBeNum","trace","date","isdir","getinfo","sethook","match","any2str","level","\"\\n\"","\"\\\\\"","setmetatable","getFuncTitle","splitpathex","unpack","\"\"","currentdir","_G","startTime","traceback","\"rd /S /Q \"","close","month","\"ping -n \"","\"copy /Y \"","stopTime","clearLog","\"  \"","setLevel","seek","fmod","name","\"profile\"","hour","year","mode","open","remove","invert","rename",}; function prettify(code) return code:gsub("["..string.char(base_char).."-"..string.char(base_char+#keywords).."]", 
	function (c) return keywords[c:byte()-base_char]; end) end return assert(loadstring(prettify[===[ü.†['sllib.class']=(â(...)å e={}Class=e
å n={}Class. =n
å â n(e)e.__index=e
ë ‹({},e)Ü
â e:new(...)å e=n(ú)e:ctor(...)ë e
Ü
â e:ctor(...)Ü
â e:dtor()Ü
â e:subclass(t)å e=n(ú)e.__name=t
e. =ú
ë e
Ü
â e:super()ë ú. 
Ü
Ü)ü.†['sllib.debug_ext']=(â(...)å r=ö"sllib.profiler"å a=10
å i=100
â ©.tracevalue(e,t)e=e è 2
t=t è 2
å r={}ó.õ(r,"stack tracevalue:")å l=á
å n=Ïå t=e+t
ï e<t É
å o=©.’(e,"nS")l=o.what=="main"å t={}ó.õ(t,ñ.§(n.."file:%s line:%d function:%s()\n",o.«,o.º,o. è‡))n=n..Ïà n=1,a É
å n,e=©.getlocal(e,n)ä ç==n í
Ç
Ü
ä ù(e)~="function"Å n~="self"í
å o
ä ù(e)==°í
o=ñ.∞(ó.tostringex(e),1,i)Ñ
o=ÿ(e)Ü
ó.õ(t,ÿ(n).."="..o)ó.õ(t,⁄)Ü
Ü
ó.õ(r,ó.ø(t,n))ä l í
Ç
Ü
e=e+1
n=n..ÏÜ
ë ó.ø(r,⁄)Ü
©.startanalysis=â(e)r:Ì(3)r:start(e)Ü
©.stopanalysis=â(e)r:stop(e)Ü
Ü)ü.†['sllib.global']=(â(...)â ô(e)ä e<0 í
ë"-"..ô(-e)Ü
ä e<=10^13 í
ë ò(e)Ü
ä ∫.–(e)~=e í
ë ò(e)Ü
å n=∫.Ô(e,10^13)å e=∫.–(e/10^13)å e=ñ.§("%s%013s",ò(e),ò(n))ë e
Ü
Ü)ü.†['sllib.io_ext']=(â(...)â ∆.Ã(n,e)e=e è"r"å e=∆.ı(n,e)ä e==ç í
ë ç
Ü
å n=e:read("*a")e:Ê()ë n
Ü
â ∆.Æ(n,t,e)e=e è"w"å e=∆.ı(n,e)ä e==ç í
ë á
Ü
e:write(t)e:Ê()ë ì
Ü
â ∆.fileSize(e)å n=0
å e=∆.ı(e,"r")ä e í
å t=e:Ó()n=e:Ó("end")e:Ó("set",t)∆.Ê(e)Ü
ë n
Ü
â ∆.readJsonFile(e)å e=∆.Ã(e)ä ç==e è e==‡í
ë ç
Ü
å n=ö"cjson"è ö"json"å e=n.decode(e)ë e
Ü
â ∆.writeJsonFile(e,t)å n=û.√(e)û.ª(n)å n=ö"cjson"è ö"json"∆.Æ(e,n.encode(t))ë ì
Ü
â ∆.readLuaFile(e)å e=∆.Ã(e)ä ç==e í
ë ç
Ü
å n=¡ è load
å e=n(e)()ë e
Ü
â ∆.writeLuaFile(n,e)å t=û.√(n)û.ª(t)ä ç==ó.ò í
ë á
Ü
å e=ó.ò(e)ä ç==e í
ë á
Ü
∆.Æ(n,e)ë ì
Ü
Ü)ü.†['sllib.logs']=(â(...)¢=¢ è{}å r=á
å o=ç
å n=ì
å â l(e)ä ù(e)==¿í
ä n í
ëƒ..e..ƒÑ
ë e
Ü
Ö ù(e)==°í
ë ó.ò(e)Ö ù(e)==ßí
ë ô(e)Ñ
å e=ò(e)èÀë e
Ü
Ü
å â t()ä o í
ë o
Ü
å e=û.”("*t")å e=ñ.§("%s_%s_%s.log",e.Û,e.Á,e.day)o=e
ë e
Ü
å â i(n)å e=t()∆.Æ(e,n,"a+")Ü
å â t(t)å e=û.”("*t")å o=û.Ω()å n=t
ä r í
n=ñ.§("[%s-%s-%s %02s:%02s:%02s %s]\n%s",e.Û,e.Á,e.day,e.Ú,e.min,e.sec,o,t)Ñ
n=t
Ü
¨(n)i(n)i('\n')Ü
â ¢.showLogTime(e)r=e
Ü
â ¢.setLogPath(e)o=e
Ü
â ¢.clear()å e=getLogPath()ä é û.exist(e)í
ë
Ü
∆.Æ(e,‡)Ü
â ¢.i(...)à n,e ã £({...})É
å e=l(e)t(e)Ü
Ü
â ¢.w(...)û.™("echo. & color 0E")à n,e ã £({...})É
å e=l(e)t(e)Ü
Ü
â ¢.e(...)û.™("echo. & color 0C")¢.i(...)å e=n
n=á
¢(©.‰(‡,2))n=e
Ü
â ¢.f(e,...)t(ñ.§(e,...))Ü
â ¢.“(e,...)e=e è"nil"å e=ñ.§(e,...)å e=©.‰(e,2)t(e)Ü
ë ¢
Ü)ü.†['sllib.os_ext']=(â(...)å n=ö"lfs"â û.sleep(e)e=e è 1
û.™(Ë..Œ(e+1)..…)Ü
å â e(e)e=ñ.±(e,€,æ)ä ñ.∞(e,-1,-1)==æí
e=ñ.∞(e,1,-2)Ü
ë e
Ü
å â r(e)ë ñ.◊(e,"^%a:")Ü
â û.newfile(e)û.∏(e)å e="echo.>"..e
û.™(e)Ü
â û.·()ë n.·()Ü
â û.chdir(e)ë n.chdir(e)Ü
â û.filetime(t)t=e(t)å e=n.®(t)ë e Å e.modification è 0
Ü
â û.‘(t)t=e(t)å e=n.®(t)ë e Å e.Ù=="directory"Ü
â û.isfile(t)t=e(t)å e=n.®(t)ë e Å e.Ù=="file"Ü
â û.exist(t)t=e(t)å e=n.®(t)ë ç~=e
Ü
â û.filesize(t)t=e(t)å e=n.®(t)ë e.size
Ü
â û.¥(n)n=e(n)å e=#n
å t=ñ.∞(n,e,e)ï e>0 Å t~=æÉ
e=e-1
t=ñ.∞(n,e,e)Ü
ä e==0 í
ë‡,n
Ü
å t=ñ.∞(n,1,e-1)å e=ñ.∞(n,e+1)ë t,e
Ü
â û.ﬁ(n)å e={}å t=n
å n
ï ì É
t,n=û.¥(t)ä ç==n è‡==n í
Ç
Ü
ó.õ(e,n)Ü
e=¬.reverse(e)ë e,#e
Ü
â û.√(e)å e,n=û.¥(e)ë e
Ü
â û.Õ(e)å n,e=û.¥(e)ë e
Ü
â û.extension(e)ë ñ.◊(e,"%.%w*$")Ü
â û.ª(t)t=e(t)å t=û.ﬁ(t)å e=‡à o=1,#t É
e=e..t[o]ä é r(t[o])Å é û.‘(e)í
å e,n=n.ª(e)ä ç==e í
ë e,n
Ü
Ü
e=e..æÜ
ë ì
Ü
â û.∏(n)n=e(n)å e=û.√(n)ä e Å e~=‡í
ë û.ª(e)Ü
ë ì
Ü
â û.rmdir(n,e)ä é û.‘(n)í
ä e í
¨("os.rmdir error:not dir:"..n)Ü
ë
Ü
n=ñ.±(n,æ,€)å t
ä e í
t=Â..n
Ñ
t=Â..n..µÜ
ä e==ì í
e=¨
Ü
ä e í e(t)Ü
ë û.™(t)Ü
â û.movedir(t,n,o)ä ç==o í
o=ì
Ü
t=e(t)n=e(n)ä o í
å e=û.Õ(t)n=n..æ..e
Ü
û.∏(n)å e,o=û.¯(t,n)ä é e í
¨("movedir failed",t,n)Ü
ë e
Ü
â û.copydir(n,t,o)n=e(n)t=e(t)ä é û.‘(n)í
¨("path error",n,t)ë á
Ü
n=ñ.±(n,æ,€)t=ñ.±(t,æ,€)å e
ä o í
e=≈..n.." "..t
Ñ
e=≈..n.." "..t..µÜ
ä o==ì í
o=¨
Ü
ä o í o(e)Ü
û.™(e)Ü
â û.copyfile(o,n,e)û.∏(n)o=ñ.±(o,æ,€)n=ñ.±(n,æ,€)å t
ä e í
t=È..o.." "..n
Ñ
t=È..o.." "..n..µÜ
ä e==ì í
e=¨
Ü
ä e í e(t)Ü
ë û.™(t)Ü
â û.movefile(n,e)û.ª(e)å t=û.Õ(n)e=e..æ..t
ë û.¯(n,e)Ü
â û.dirempty(e)å e=û.dir(e,ì)ë ó.empty(e)Ü
â û.dir(o,e,l)ä ñ.∞(o,-1,-1)==æí
o=ñ.∞(o,1,-2)Ü
å t=30
ä ù(e)=="boolean"í
e=e==á Å 1 è t
Ö ù(e)==ßí
e=e
Ñ
e=t
Ü
å r={}å i={}å â a(o,t)t=t-1
à e ã n.dir(o)É
ä e~='.'Å e~='..'í
å e=o..'/'..e
å n=n.®(e)ä n==ç í
Ç
Ü
å n=n.Ù=='directory'ä ç==l è l(e,n)í
ä n í
ó.õ(r,e)Ñ
ó.õ(i,e)Ü
ä n Å t>0 í
a(e,t)Ü
Ü
Ü
Ü
Ü
a(o,e)ë i,r
Ü
Ü)ü.†['sllib.profiler']=(â(...)å e={}â e:setLogFunc(e)ú.∑=e
Ü
â e:Ì(e)ú.Ÿ=e
Ü
â e:start(e)e=e èÒú.∑=¨
ä e=="trace"í
©.÷(bind(ú.œ,ú),'c')Ñ
ú.´={}ú.„=û.Ω()ú.Ÿ=3
©.÷(bind(ú.»,ú),'cr')Ü
Ü
â e:stop(e)e=e èÒ©.÷()ä e=="trace"í
ë
Ü
ú.Í=û.Ω()å n=ú.Í-ú.„
ä n<.001 í
ú.∑("total time less 0.001s")ë
Ü
å e=ó.values(ú.´)ó.sort(e,â(n,e)ë n.¶>e.¶
Ü)à t,e ã £(e)É
å n=(e.¶/n)*100
ä n<1 í
Ç
Ü
å e=ñ.§("time:%6.3f, percet:%.2f%%, count:%d, %s",e.¶,n,e.≥,e.title)ú.∑(e)Ü
Ü
â e:œ()å e=©.’(ú.Ÿ,'nS')å e=ñ.§("file:%s line:%d function:%s()",e.«,e.º,e. è‡)ú.∑(e)Ü
â e:›(e)å n=e. è'anonymous'å t=e.« è'C_FUNC'å e=e.º è 0
ë ñ.§("file:%s line:%s function:%s",t,e,n)Ü
â e:∂(e)å n=ú:›(e)å e=ú.´[n]ä é e í
e={title=n,≥=0,¶=0,}ú.´[n]=e
Ü
ë e
Ü
â e:»(n)å o=â(e)å e=ú:∂(e)e.Ø=û.Ω()e.≥=e.≥+1
Ü
å t=â(e)å n=û.Ω()å e=ú:∂(e)ä e.Ø Å e.Ø>0 í
e.¶=e.¶+(n-e.Ø)e.Ø=0
Ü
Ü
å e=©.’(ú.Ÿ,'nS')ä n=="call"í
o(e)Ö n=="return"í
t(e)Ü
Ü
ë e
Ü)ü.†['sllib.string_ext']=(â(...)â ñ.strtox16(e)ë ñ.±(e,".",â(e)ë ñ.§("%02X",ñ.byte(e))Ü)Ü
â ñ.x16tostr(e)ë ñ.±(e,"..",â(e)å e=Œ(e,16)ë ñ.char(e)Ü)Ü
â ñ.dumpex(e)ë ñ.±(e,".",â(e)ë ñ.§("%02X ",ñ.byte(e))Ü)Ü
â ñ.iterateString(n,e,t)e=e è'\n'ä é ñ.◊(n,e)í
t(n)ë
Ü
à e ã ñ.gmatch(n,"(.-)"..e)É
t(e)Ü
ä ñ.∞(n,#n-#e+1)==e í
t(‡)ë
Ü
å e=ñ.◊(n,".+"..e.."(.*)$")ä e í
t(e)Ü
Ü
â ñ.split(n,o)å e=1
å t=1
å t={}ï e É
å r,o=ñ.find(n,o,e)ä r Å o í
ó.õ(t,ñ.∞(n,e,r-1))e=o+1
Ñ
ä e<=#n í
ó.õ(t,ñ.∞(n,e,-1))Ü
Ç
Ü
Ü
ë t
Ü
Ü)ü.†['sllib.table_ext']=(â(...)å â o(t,e)à n,e ã •(e)É
t[n]=e
Ü
Ü
å â g(e,n)à n,t ã •(n)É
e[n]=e[n]è t
Ü
Ü
å e={≤=á,—=ì,}o(ó,e)å â r(r)ä é ≤ í
ë{}Ü
å t={}å o={}å â n(e)ä t[e]í
o[e]=e
ë
Ü
t[e]=e
à e,t ã •(e)É
ä ù(e)==°í
n(e)Ö ù(t)==°í
n(t)Ü
Ü
Ü
n(r)ë o
Ü
å â c(c,u,d)å n=ó.õ
å f=ó.ø
å a={}å r=r(c)å â s(o,l,t)l=l Å(l-1)è 30
ä l<0 í
ë t.."..."Ü
t=t è‡ä next(o)==ç í
ë t.."{}"Ü
ä ≤ í
a[o]=o
Ü
å e={}n(e,t.."{")ä r[o]í
n(e,≠(o))Ü
n(e,⁄)t=t..Ïä — è#o==0 í
à i,r ã •(o)É
n(e,t)ä ù(i)==°í
ä a[o]í
n(e,≠(o))Ñ
ˆ(e)n(e,s(i,l,t))Ü
Ö ù(i)==ßí
n(e,"["..ô(i).."]")Ñ
å t=‚.ò(i)n(e,'["'..t..'"]')Ü
n(e," = ")ä ù(r)==°í
ä a[r]í
n(e,≠(r))Ñ
n(e,⁄)n(e,s(r,l,t))Ü
Ö ù(r)==ßí
n(e,ô(r))Ö ù(r)==¿í
n(e,ƒ..r..ƒ)Ñ
n(e,‚.ò(r))Ü
n(e,",\n")Ü
Ñ
à r,o ã £(o)É
n(e,t)n(e,"["..ô(r).."]")n(e," = ")ä ù(o)==°í
n(e,⁄)ä a[o]í
n(e,≠(o))Ñ
n(e,s(o,l,t))Ü
Ö ù(o)==ßí
n(e,ô(o))Ñ
n(e,ƒ..‚.ò(o)..ƒ)Ü
n(e,",\n")Ü
Ü
e[#e]=","n(e,⁄..ñ.∞(t,1,-3).."}")ë f(e)Ü
ë s(c,u,d)Ü
å â l(t,o)å n=ó.õ
å i=ó.ø
o=o Å(o-1)è 10
ä o<0 í
ë"..."Ü
å e={}n(e,"{")à r,t ã •(t)É
ä ù(r)==°í
n(e,l(r,o))n(e,"=")Ö ù(r)==ßí
Ñ
n(e,'["'..‚.ò(r)..'"]')n(e,"=")Ü
ä ù(t)==°í
n(e,l(t,o))Ö ù(t)==ßí
n(e,ô(t))Ö ù(t)==¿í
n(e,ƒ..t..ƒ)Ñ
n(e,‚.ò(t))Ü
n(e,",")Ü
n(e,"}")ë i(e)Ü
å e={["empty"]=â(e)ë next(e)==ç
Ü,["size"]=â(n)å e=0
à n,n ã •(n)É
e=e+1
Ü
ë e
Ü,["keys"]=â(n)å e={}à n,t ã •(n è{})É
ó.õ(e,n)Ü
ë e
Ü,["values"]=â(n)å e={}à t,n ã •(n è{})É
ó.õ(e,n)Ü
ë e
Ü,["invert"]=â(n)å e={}à t,n ã •(n è{})É
e[n]=t
Ü
ë e
Ü,["clone"]=â(n,t)å e={}ä é t í
‹(e,getmetatable(n))Ü
à t,n ã •(n)É
e[t]=n
Ü
ë e
Ü,["merge"]=â(...)å e={}à t,n ã £({...})É
à n,t ã •(n)É
e[n]=t
Ü
Ü
ë e
Ü,["address"]=â(n)å e
ä rawget(‚,"_tostring")í
e=_tostring(n)Ñ
e=c(n)Ü
ë ñ.±(e,"^table: ",‡)è‡Ü,["tostring"]=c,["tostringex"]=l,["print"]=â(e)ä ù(e)~=°í
‚.¨(e)Ñ
‚.¨(ó.ò(e))Ü
Ü,}g(ó,e)Ü)ü.†['sllib.list_ext']=(â(...)¬=¬ è{}å â r(e,n)à n,t ã •(n)É
e[n]=e[n]è t
Ü
Ü
å e={["append"]=â(e,n)ó.õ(e,n)ë e
Ü,["concat"]=â(...)å e={}à t,n ã £({...})É
à t,n ã £(n)É
ó.õ(e,n)Ü
Ü
ë e
Ü,["remove"]=â(e,t)à n,o ã £(e)É
ä o==t í
ó.ˆ(e,n)Ç
Ü
Ü
ë e
Ü,["sub"]=â(n,o,e)e=e è#n
å t={}à e=o,e É
ó.õ(t,n[e])Ü
ë t
Ü,["cut"]=â(n,e)å n=¬.∞(1,e)å e=¬.∞(e+1)ë n,e
Ü,["exist"]=â(n,e)à t,n ã £(n)É
ä n==e í
ë ì
Ü
Ü
ë á
Ü,["reverse"]=â(e)å n={}à t=#e,1,-1 É
ó.õ(n,e[t])Ü
ë n
Ü,["mirror"]=â(n)å e={}à t,n ã £(n)É
e[n]=n
Ü
ë e
Ü,["merge"]=â(...)å e=¬.ø(...)e=ó.˜(e)ë ó.keys(e)Ü,["project"]=â(e,t)å n={}à o,e ã £(e)É
n[e[t]]=e
Ü
ë n
Ü,}r(¬,e)Ü)ü.†['sllib.time']=(â(...)π=π è{}å â t(n,e)à e,t ã •(e)É
n[e]=n[e]è t
Ü
Ü
å e={["time"]=â()ë û.π()Ü,["clock"]=â()ë û.Ω()Ü,["millitime"]=â()ö"socket.core"ë ∫.–(socket.gettime()*1e3)Ü,["sleep"]=â(e)e=e è 0
û.™(Ë..Œ(e+1)..…)Ü,["getstr"]=â(n,e)n=n è'%c'e=e è û.π()ë û.”(n,e)Ü,["getendofday"]=â(e)e=e è û.π()å e=û.”('*t',e)å e=û.”('*t',û.π({Û=e["year"],Á=e["month"],day=e["day"],Ú=23,min=59,sec=59}))å e=û.π(e)ë e
Ü,["tohour"]=â(e)å n=∫.–(e/3600)å t=∫.–(∫.Ô(e,3600)/60)å e=∫.Ô(e,60)ë{Ú=n,min=t,sec=e}Ü,}t(π,e)Ü)rawset(‚,"SLLIB_VERSION","1.1.2")ö"sllib.global"ö"sllib.io_ext"ö"sllib.os_ext"ö"sllib.table_ext"ö"sllib.string_ext"ö"sllib.list_ext"ö"sllib.debug_ext"ö"sllib.time"ö"sllib.logs"ö"sllib.class"enum=ó.˜
log=log è ¢.i
logw=logw è ¢.w
loge=loge è ¢.e
“=“ è ¢.“
Î=Î è ¢.clear
ﬂ=ﬂ è ó.ﬂ
¡=¡ è load
â ÿ(e)ä ù(e)==¿í
ëƒ..e..ƒÖ ù(e)==°í
ë ó.ò(e)Ö ù(e)==ßí
ë ô(e)Ñ
å e=ò(e)èÀë e
Ü
Ü
]===], '@sllib_base.lua'))()