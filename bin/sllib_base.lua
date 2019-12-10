loadstring = loadstring or load 
local base_char,keywords=128,{"and","break","do","else","elseif","end","false","for","function","if","in","local","nil","not","or","repeat","return","then","true","until","while","string","table","tostring","numbertostring","require","insert","self","type","os","preload","package","\"table\"","logs","ipairs","format","pairs","totaltime","\"number\"","attributes","debug","execute","reportsByTitle","math","print","tableAddress","writeFile","calltime","sub","gsub","__showInnerRef","concat","logFunc","getFuncReport","splitpath","list","callcount","\" 1>nul 2>nul\"","time","mkpredir","clock","mkdir","linedefined","\"/\"","\"string\"","modf","loadstring","dirname","'\"'","\"xcopy /Y /E /I /Q \"","io","short_src","profilingHandler","\" localhost > NUL\"","\"Unknown object!\"","tonumber","subClass","basename","readFile","tracingHandler","__keyCanBeNum","match","getinfo","any2str","sethook","\"\\n\"","level","trace","isdir","date","getFuncTitle","setmetatable","\"\\\\\"","splitpathex","unpack","\"\"","currentdir","\"rd /S /Q \"","_G","traceback","month","close","startTime","\"ping -n \"","\"  \"","clearLog","stopTime","\"copy /Y \"","setLevel","hour","name","mode","year","fmod","\"profile\"","open","seek","rename","remove","values","invert",}; function prettify(code) return code:gsub("["..string.char(base_char).."-"..string.char(base_char+#keywords).."]", 
	function (c) return keywords[c:byte()-base_char]; end) end return assert(loadstring(prettify[===[†.ü['sllib.class']=(â(...)å e={}â Class(t,n)ä n í
ë n:Õ(t)Ü
ë e:Õ(t)Ü
å n={}e.super=n
å â n(e)e.__index=e
ë ‹({},e)Ü
â e:new(...)å e=n(ú)e:ctor(...)ë e
Ü
â e:ctor(...)Ü
â e:dtor()Ü
â e:Õ(t)å e=n(ú)e.__name=t
e.super=ú
ë e
Ü
Ü)†.ü['sllib.debug_ext']=(â(...)å r=ö"sllib.profiler"å i=10
å a=100
â ©.tracevalue(e,t)e=e è 2
t=t è 2
å r={}ó.õ(r,"stack tracevalue:")å l=á
å n=Èå t=e+t
ï e<t É
å o=©.”(e,"nS")l=o.what=="main"å t={}ó.õ(t,ñ.§(n.."file:%s line:%d function:%s()\n",o.»,o.ø,o.Ô è‡))n=n..Èà n=1,i É
å n,e=©.getlocal(e,n)ä ç==n í
Ç
Ü
ä ù(e)~="function"Å n~="self"í
å o
ä ù(e)==°í
o=ñ.±(ó.tostringex(e),1,a)Ñ
o=‘(e)Ü
ó.õ(t,‘(n).."="..o)ó.õ(t,÷)Ü
Ü
ó.õ(r,ó.¥(t,n))ä l í
Ç
Ü
e=e+1
n=n..ÈÜ
ë ó.¥(r,÷)Ü
©.startanalysis=â(e)r:Ì(3)r:start(e)Ü
©.stopanalysis=â(e)r:stop(e)Ü
Ü)†.ü['sllib.global']=(â(...)â ô(e)ä e<0 í
ë"-"..ô(-e)Ü
ä e<=10^13 í
ë ò(e)Ü
ä ¨.¬(e)~=e í
ë ò(e)Ü
å n=¨.Ú(e,10^13)å e=¨.¬(e/10^13)å e=ñ.§("%s%013s",ò(e),ò(n))ë e
Ü
Ü)†.ü['sllib.io_ext']=(â(...)â «.œ(n,e)e=e è"r"å e=«.Ù(n,e)ä e==ç í
ë ç
Ü
å n=e:read("*a")e:Ê()ë n
Ü
â «.Ø(n,t,e)e=e è"w"å e=«.Ù(n,e)ä e==ç í
ë á
Ü
e:write(t)e:Ê()ë ì
Ü
â «.fileSize(e)å n=0
å e=«.Ù(e,"r")ä e í
å t=e:ı()n=e:ı("end")e:ı("set",t)«.Ê(e)Ü
ë n
Ü
â «.readJsonFile(e)å e=«.œ(e)ä ç==e è e==‡í
ë ç
Ü
å n=ö"cjson"è ö"json"å e=n.decode(e)ë e
Ü
â «.writeJsonFile(e,n)å t=û.ƒ(e)û.æ(t)å t=ö"cjson"è ö"json"«.Ø(e,t.encode(n))ë ì
Ü
â «.readLuaFile(e)å e=«.œ(e)ä ç==e í
ë ç
Ü
å n=√ è load
å e=n(e)()ë e
Ü
â «.writeLuaFile(e,n)å t=û.ƒ(e)û.æ(t)ä ç==ó.ò í
ë á
Ü
å n=ó.ò(n)ä ç==n í
ë á
Ü
«.Ø(e,n)ë ì
Ü
Ü)†.ü['sllib.logs']=(â(...)¢=¢ è{}å r=á
å o=ç
å n=ì
å â l(e)ä ù(e)==¡í
ä n í
ë≈..e..≈Ñ
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
å e=û.⁄("*t")å e=ñ.§("%s_%s_%s.log",e.Ò,e.Â,e.day)o=e
ë e
Ü
å â i(e)å n=t()«.Ø(n,e,"a+")Ü
å â t(t)å e=û.⁄("*t")å o=û.Ω()å n=t
ä r í
n=ñ.§("[%s-%s-%s %02s:%02s:%02s %s]\n%s",e.Ò,e.Â,e.day,e.Ó,e.min,e.sec,o,t)Ñ
n=t
Ü
≠(n)i(n)i('\n')Ü
â ¢.showLogTime(e)r=e
Ü
â ¢.setLogPath(e)o=e
Ü
â ¢.clear()å e=getLogPath()ä é û.exist(e)í
ë
Ü
«.Ø(e,‡)Ü
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
â ¢.ÿ(e,...)e=e è"nil"å e=ñ.§(e,...)å e=©.‰(e,2)t(e)Ü
ë ¢
Ü)†.ü['sllib.os_ext']=(â(...)å n=ö"lfs"â û.sleep(e)e=e è 1
û.™(Ë..Ã(e+1).. )Ü
å â e(e)e=ñ.≤(e,›,¿)ä ñ.±(e,-1,-1)==¿í
e=ñ.±(e,1,-2)Ü
ë e
Ü
å â r(e)ë ñ.“(e,"^%a:")Ü
â û.newfile(e)û.º(e)å e="echo.>"..e
û.™(e)Ü
â û.·()ë n.·()Ü
â û.chdir(e)ë n.chdir(e)Ü
â û.filetime(t)t=e(t)å e=n.®(t)ë e Å e.modification è 0
Ü
â û.Ÿ(t)t=e(t)å e=n.®(t)ë e Å e.=="directory"Ü
â û.isfile(t)t=e(t)å e=n.®(t)ë e Å e.=="file"Ü
â û.exist(t)t=e(t)å e=n.®(t)ë ç~=e
Ü
â û.filesize(t)t=e(t)å e=n.®(t)ë e.size
Ü
â û.∑(n)n=e(n)å e=#n
å t=ñ.±(n,e,e)ï e>0 Å t~=¿É
e=e-1
t=ñ.±(n,e,e)Ü
ä e==0 í
ë‡,n
Ü
å t=ñ.±(n,1,e-1)å e=ñ.±(n,e+1)ë t,e
Ü
â û.ﬁ(n)å e={}å t=n
å n
ï ì É
t,n=û.∑(t)ä ç==n è‡==n í
Ç
Ü
ó.õ(e,n)Ü
e=∏.reverse(e)ë e,#e
Ü
â û.ƒ(e)å e,n=û.∑(e)ë e
Ü
â û.Œ(e)å n,e=û.∑(e)ë e
Ü
â û.extension(e)ë ñ.“(e,"%.%w*$")Ü
â û.æ(t)t=e(t)å t=û.ﬁ(t)å e=‡à o=1,#t É
e=e..t[o]ä é r(t[o])Å é û.Ÿ(e)í
å e,n=n.æ(e)ä ç==e í
ë e,n
Ü
Ü
e=e..¿Ü
ë ì
Ü
â û.º(n)n=e(n)å e=û.ƒ(n)ä e Å e~=‡í
ë û.æ(e)Ü
ë ì
Ü
â û.rmdir(e,n)ä é û.Ÿ(e)í
ä n í
≠("os.rmdir error:not dir:"..e)Ü
ë
Ü
e=ñ.≤(e,¿,›)å t
ä n í
t=‚..e
Ñ
t=‚..e..∫Ü
ä n==ì í
n=≠
Ü
ä n í n(t)Ü
ë û.™(t)Ü
â û.movedir(t,n,o)ä ç==o í
o=ì
Ü
t=e(t)n=e(n)ä o í
å e=û.Œ(t)n=n..¿..e
Ü
û.º(n)å e,o=û.ˆ(t,n)ä é e í
≠("movedir failed",t,n)Ü
ë e
Ü
â û.copydir(n,t,o)n=e(n)t=e(t)ä é û.Ÿ(n)í
≠("path error",n,t)ë á
Ü
n=ñ.≤(n,¿,›)t=ñ.≤(t,¿,›)å e
ä o í
e=∆..n.." "..t
Ñ
e=∆..n.." "..t..∫Ü
ä o==ì í
o=≠
Ü
ä o í o(e)Ü
û.™(e)Ü
â û.copyfile(t,e,n)û.º(e)t=ñ.≤(t,¿,›)e=ñ.≤(e,¿,›)å o
ä n í
o=Ï..t.." "..e
Ñ
o=Ï..t.." "..e..∫Ü
ä n==ì í
n=≠
Ü
ä n í n(o)Ü
ë û.™(o)Ü
â û.movefile(n,e)û.æ(e)å t=û.Œ(n)e=e..¿..t
ë û.ˆ(n,e)Ü
â û.dirempty(e)å e=û.dir(e,ì)ë ó.empty(e)Ü
â û.dir(t,e,a)ä ñ.±(t,-1,-1)==¿í
t=ñ.±(t,1,-2)Ü
å o=30
ä ù(e)=="boolean"í
e=e==á Å 1 è o
Ö ù(e)==ßí
e=e
Ñ
e=o
Ü
å i={}å l={}å â r(o,t)t=t-1
à e ã n.dir(o)É
ä e~='.'Å e~='..'í
å e=o..'/'..e
å n=n.®(e)ä n==ç í
Ç
Ü
å n=n.=='directory'ä ç==a è a(e,n)í
ä n í
ó.õ(i,e)Ñ
ó.õ(l,e)Ü
ä n Å t>0 í
r(e,t)Ü
Ü
Ü
Ü
Ü
r(t,e)ë l,i
Ü
Ü)†.ü['sllib.profiler']=(â(...)å e={}â e:setLogFunc(e)ú.µ=e
Ü
â e:Ì(e)ú.◊=e
Ü
â e:start(e)e=e èÛú.µ=≠
ä e=="trace"í
©.’(bind(ú.–,ú),'c')Ñ
ú.´={}ú.Á=û.Ω()ú.◊=3
©.’(bind(ú.…,ú),'cr')Ü
Ü
â e:stop(e)e=e èÛ©.’()ä e=="trace"í
ë
Ü
ú.Î=û.Ω()å n=ú.Î-ú.Á
ä n<.001 í
ú.µ("total time less 0.001s")ë
Ü
å e=ó.¯(ú.´)ó.sort(e,â(e,n)ë e.¶>n.¶
Ü)à t,e ã £(e)É
å n=(e.¶/n)*100
ä n<1 í
Ç
Ü
å e=ñ.§("time:%6.3f, percent:%.2f%%, count:%d, %s",e.¶,n,e.π,e.title)ú.µ(e)Ü
Ü
â e:–()å e=©.”(ú.◊,'nS')å e=ñ.§("file:%s line:%d function:%s()",e.»,e.ø,e.Ô è‡)ú.µ(e)Ü
â e:€(e)å t=e.Ô è'anonymous'å n=e.» è'C_FUNC'å e=e.ø è 0
ë ñ.§("file:%s line:%s function:%s",n,e,t)Ü
â e:∂(e)å n=ú:€(e)å e=ú.´[n]ä é e í
e={title=n,π=0,¶=0,}ú.´[n]=e
Ü
ë e
Ü
â e:…(n)å o=â(e)å e=ú:∂(e)e.∞=û.Ω()e.π=e.π+1
Ü
å t=â(e)å n=û.Ω()å e=ú:∂(e)ä e.∞ Å e.∞>0 í
e.¶=e.¶+(n-e.∞)e.∞=0
Ü
Ü
å e=©.”(ú.◊,'nS')ä e í
ä n=="call"í
o(e)Ö n=="return"í
t(e)Ü
Ü
Ü
ë e
Ü)†.ü['sllib.string_ext']=(â(...)â ñ.strtox16(e)ë ñ.≤(e,".",â(e)ë ñ.§("%02X",ñ.byte(e))Ü)Ü
â ñ.x16tostr(e)ë ñ.≤(e,"..",â(e)å e=Ã(e,16)ë ñ.char(e)Ü)Ü
â ñ.dumpex(e)ë ñ.≤(e,".",â(e)ë ñ.§("%02X ",ñ.byte(e))Ü)Ü
â ñ.iterateString(n,e,t)e=e è'\n'ä é ñ.“(n,e)í
t(n)ë
Ü
à e ã ñ.gmatch(n,"(.-)"..e)É
t(e)Ü
ä ñ.±(n,#n-#e+1)==e í
t(‡)ë
Ü
å e=ñ.“(n,".+"..e.."(.*)$")ä e í
t(e)Ü
Ü
â ñ.split(n,o)å e=1
å t=1
å t={}ï e É
å r,o=ñ.find(n,o,e)ä r Å o í
ó.õ(t,ñ.±(n,e,r-1))e=o+1
Ñ
ä e<=#n í
ó.õ(t,ñ.±(n,e,-1))Ü
Ç
Ü
Ü
ë t
Ü
Ü)†.ü['sllib.table_ext']=(â(...)å â t(e,n)à n,t ã •(n)É
e[n]=t
Ü
Ü
å â g(e,n)à n,t ã •(n)É
e[n]=e[n]è t
Ü
Ü
å e={≥=á,—=ì,}t(ó,e)å â l(r)ä é ≥ í
ë{}Ü
å t={}å o={}å â n(e)ä t[e]í
o[e]=e
ë
Ü
t[e]=e
à t,e ã •(e)É
ä ù(t)==°í
n(t)Ö ù(e)==°í
n(e)Ü
Ü
Ü
n(r)ë o
Ü
å â d(c,f,d)å n=ó.õ
å u=ó.¥
å s={}å r=l(c)å â a(o,l,t)l=l Å(l-1)è 30
ä l<0 í
ë t.."..."Ü
t=t è‡ä next(o)==ç í
ë t.."{}"Ü
ä ≥ í
s[o]=o
Ü
å e={}n(e,t.."{")ä r[o]í
n(e,Æ(o))Ü
n(e,÷)t=t..Èä — è#o==0 í
à i,r ã •(o)É
n(e,t)ä ù(i)==°í
ä s[o]í
n(e,Æ(o))Ñ
˜(e)n(e,a(i,l,t))Ü
Ö ù(i)==ßí
n(e,"["..ô(i).."]")Ñ
å t=„.ò(i)n(e,'["'..t..'"]')Ü
n(e," = ")ä ù(r)==°í
ä s[r]í
n(e,Æ(r))Ñ
n(e,÷)n(e,a(r,l,t))Ü
Ö ù(r)==ßí
n(e,ô(r))Ö ù(r)==¡í
n(e,≈..r..≈)Ñ
n(e,„.ò(r))Ü
n(e,",\n")Ü
Ñ
à r,o ã £(o)É
n(e,t)n(e,"["..ô(r).."]")n(e," = ")ä ù(o)==°í
n(e,÷)ä s[o]í
n(e,Æ(o))Ñ
n(e,a(o,l,t))Ü
Ö ù(o)==ßí
n(e,ô(o))Ñ
n(e,≈..„.ò(o)..≈)Ü
n(e,",\n")Ü
Ü
e[#e]=","n(e,÷..ñ.±(t,1,-3).."}")ë u(e)Ü
ë a(c,f,d)Ü
å â l(t,o)å n=ó.õ
å i=ó.¥
o=o Å(o-1)è 10
ä o<0 í
ë"..."Ü
å e={}n(e,"{")à r,t ã •(t)É
ä ù(r)==°í
n(e,l(r,o))n(e,"=")Ö ù(r)==ßí
Ñ
n(e,'["'..„.ò(r)..'"]')n(e,"=")Ü
ä ù(t)==°í
n(e,l(t,o))Ö ù(t)==ßí
n(e,ô(t))Ö ù(t)==¡í
n(e,≈..t..≈)Ñ
n(e,„.ò(t))Ü
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
Ü,["invert"]=â(n)å e={}à n,t ã •(n è{})É
e[t]=n
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
ä rawget(„,"_tostring")í
e=_tostring(n)Ñ
e=d(n)Ü
ë ñ.≤(e,"^table: ",‡)è‡Ü,["tostring"]=d,["tostringex"]=l,["print"]=â(e)ä ù(e)~=°í
„.≠(e)Ñ
„.≠(ó.ò(e))Ü
Ü,}g(ó,e)Ü)†.ü['sllib.list_ext']=(â(...)∏=∏ è{}å â o(n,e)à e,t ã •(e)É
n[e]=n[e]è t
Ü
Ü
å e={["append"]=â(e,n)ó.õ(e,n)ë e
Ü,["concat"]=â(...)å e={}à t,n ã £({...})É
à t,n ã £(n)É
ó.õ(e,n)Ü
Ü
ë e
Ü,["remove"]=â(e,n)à t,o ã £(e)É
ä o==n í
ó.˜(e,t)Ç
Ü
Ü
ë e
Ü,["sub"]=â(t,o,e)e=e è#t
å n={}à e=o,e É
ó.õ(n,t[e])Ü
ë n
Ü,["cut"]=â(n,e)å n=∏.±(1,e)å e=∏.±(e+1)ë n,e
Ü,["exist"]=â(e,n)à t,e ã £(e)É
ä e==n í
ë ì
Ü
Ü
ë á
Ü,["reverse"]=â(e)å n={}à t=#e,1,-1 É
ó.õ(n,e[t])Ü
ë n
Ü,["mirror"]=â(e)å n={}à t,e ã £(e)É
n[e]=e
Ü
ë n
Ü,["merge"]=â(...)å e=∏.¥(...)e=ó.˘(e)ë ó.keys(e)Ü,["mergeex"]=â(n,...)å e=∏.¥(...)e=∏.project(e,n)ë ó.¯(e)Ü,["project"]=â(n,t)å e={}à o,n ã £(n)É
e[n[t]]=n
Ü
ë e
Ü,}o(∏,e)Ü)†.ü['sllib.time']=(â(...)ª=ª è{}å â o(n,e)à e,t ã •(e)É
n[e]=n[e]è t
Ü
Ü
å e={["time"]=â()ë û.ª()Ü,["clock"]=â()ë û.Ω()Ü,["millitime"]=â()ö"socket.core"ë ¨.¬(socket.gettime()*1e3)Ü,["sleep"]=â(e)e=e è 0
û.™(Ë..Ã(e+1).. )Ü,["getstr"]=â(e,n)e=e è'%c'n=n è û.ª()ë û.⁄(e,n)Ü,["getendofday"]=â(e)e=e è û.ª()å e=û.⁄('*t',e)å e=û.⁄('*t',û.ª({Ò=e["year"],Â=e["month"],day=e["day"],Ó=23,min=59,sec=59}))å e=û.ª(e)ë e
Ü,["tohour"]=â(e)å t=¨.¬(e/3600)å n=¨.¬(¨.Ú(e,3600)/60)å e=¨.Ú(e,60)ë{Ó=t,min=n,sec=e}Ü,}o(ª,e)Ü)†.ü['sllib.math_ext']=(â(...)â ¨.cutf(e,n)å t,e=¨.¬(e)å e=e*¨.pow(10,n)e=¨.¬(e)e=e/¨.pow(10,n)ë t+e
Ü
Ü)rawset(„,"SLLIB_VERSION","1.1.2")ö"sllib.global"ö"sllib.io_ext"ö"sllib.os_ext"ö"sllib.table_ext"ö"sllib.string_ext"ö"sllib.list_ext"ö"sllib.math_ext"ö"sllib.debug_ext"ö"sllib.time"ö"sllib.logs"ö"sllib.class"enum=ó.˘
log=log è ¢.i
logw=logw è ¢.w
loge=loge è ¢.e
logf=logf è ¢.f
ÿ=ÿ è ¢.ÿ
Í=Í è ¢.clear
ﬂ=ﬂ è ó.ﬂ
√=√ è load
â ‘(e)ä ù(e)==¡í
ë≈..e..≈Ö ù(e)==°í
ë ó.ò(e)Ö ù(e)==ßí
ë ô(e)Ñ
å e=ò(e)èÀë e
Ü
Ü
]===], '@sllib_base.lua'))()