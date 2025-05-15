loadstring = loadstring or load 
local base_char,keywords=128,{"and","break","do","else","elseif","end","false","for","function","if","in","local","nil","not","or","repeat","return","then","true","until","while","string","table","insert","require","tostring","console","print","ipairs","preload","package","numbertostring","self","format","os","list","logs","execute","set","type","time","timer","\"table\"","pairs","gsub","sub","debug","totaltime","\"number\"","attributes","math","concat","getTimestamp","millitime","remove","checkJsInstall","reportsByTitle","resetColor","setColor","isSupportLineColor","tableAddress","defaultColor","writeFile","any2str","calltime","__showInnerRef","rawset","_showLogs","elems","splitpath","logFunc","clock","\"/\"","getFuncReport","callcount","setmetatable","cmd","mkpredir","basename","match","\"\"","'jsmin.exe < \"%s\" > \"%s\"'","linedefined","count","mkdir","member","\"string\"","loadstring","modf","dirname","name","io","'\"'","short_src","_sortCbks","endCbk","rename","invert","\"\\n\"","tolist","unpack","\" localhost > NUL\"","resume","profilingHandler","printe","tonumber","\"\\\\\"","readFile","\"Unknown object!\"","subClass","tracingHandler","exist","date","isdir","s_debug","_G","__keyCanBeNum","close","sethook","trace","level","find","getinfo","new","intersection","getFuncTitle","'\\t'",}; function prettify(code) return code:gsub("["..string.char(base_char).."-"..string.char(base_char+#keywords).."]", 
	function (c) return keywords[c:byte()-base_char]; end) end return assert(loadstring(prettify[===[ü.û['sllib.console']=(â(...)å e=_VERSION=="Lua 5.3"Å 1 è 0
å t
ä e==1 í
t=ô"console.core"Ü
õ=õ è{}õ.æ=7
â õ.º()ë e==1
Ü
â õ.setDefaultColor(e)õ.æ=e
Ü
â õ.ª(n)ä e==1 í
ë t:setTextColor(n)Ñ
å e=ñ.¢("color %02X",n)ë £.¶(e)Ü
Ü
â õ.∫()ä e==1 í
õ.ª(õ.æ)Ñ
å e=ñ.¢("color %02X",õ.æ)ë £.¶(e)Ü
Ü
â õ.describe()å e=[[
    0x07 background:black foreground:white
    0	=	Black	 	8	=	Gray
    1	=	Blue	 	9	=	Light Blue
    2	=	Green	 	A	=	Light Green
    3	=	Aqua	 	B	=	Light Aqua
    4	=	Red	 	C	=	Light Red
    5	=	Purple	 	D	=	Light Purple
    6	=	Yellow	 	E	=	Light Yellow
    7	=	White	 	F	=	Bright White
]]ú(e)Ü
Ü)ü.û['sllib.global']=(â(...)â †(e)ä e<0 í
ë"-"..†(-e)Ü
ä e<=10^13 í
ë ö(e)Ü
ä ≥.Ÿ(e)~=e í
ë ö(e)Ü
å n=≥.fmod(e,10^13)å e=≥.Ÿ(e/10^13)å e=ñ.¢("%s%013s",ö(e),ö(n))ë e
Ü
â ¿(e,n)ä ®(e)==◊í
ä n Å e~=„í
ë›..e..›Ñ
ë e
Ü
Ö ®(e)==´í
ë ó.ö(e)Ö ®(e)==±í
ë †(e)Ñ
å e=ö(e)èÌë e
Ü
Ü
â _F(e,...)ë ñ.¢(e,...)Ü
å e=õ.º()â printw(...)õ.ª(14)ú(...)ä e í õ.∫()Ü
Ü
â È(...)õ.ª(12)ú(...)ä e í õ.∫()Ü
Ü
â ∏(e,t,o)å n=â(...)ä t í
ú(...)Ü
Ü
å r="where "..e.."  >nul 2>&1"å r,i,i=£.¶(r)ä é r í
ä t í ú(e.." not exist, will install...")Ü
å t="npm install -g "..e.." >nul 2>&1"å t=£.¶(t)ä t~=0 í
n(e.." install failed")ä o í £.exit(1)Ü
ë á
Ñ
n(e.." install success")ë ì
Ü
Ñ
n(e.." already installed")ë ì
Ü
Ü
Ü)ü.û['sllib.lang']=(â(...)ä _VERSION=="Lua 5.1"í
printu=ú
ë
Ü
å n=ô"charset"â _U2A(e)e=ö(e)ë n.u2a(e)Ü
â _A2U(e)e=ö(e)ë n.a2u(e)Ü
å â n(e,...)e=e èˇå t={...}å n={}à t,e ã ù(t)É
ó.ò(n,_U2A(¿(e)))Ü
å e=ó.¥(n,e)ë e
Ü
â printu(...)å e=n(ˇ,...)ú(e)Ü
â printuw(...)å e=n(ˇ,...)printw(e)Ü
â printue(...)å e=n(ˇ,...)È(e)Ü
Ü)ü.û['sllib.io_ext']=(â(...)â ‹.Ï(n,e)e=e è"r"å e=‹.open(n,e)ä e==ç í
ë ç
Ü
å n=e:read("*a")e:ˆ()ë n
Ü
â ‹.ø(n,t,e)e=e è"w"å e=‹.open(n,e)ä e==ç í
ë á
Ü
e:write(t)e:ˆ()ë ì
Ü
â ‹.fileSize(e)å n=0
å e=‹.open(e,"r")ä e í
å t=e:seek()n=e:seek("end")e:seek("set",t)‹.ˆ(e)Ü
ë n
Ü
â ‹.readJsonFile(e,n)å e=‹.Ï(e)ä ç==e è e==—í
ë ç
Ü
ä n í
e=n(e)Ü
å n=ô"cjson"è ô"json"å e=n.decode(e)ë e
Ü
â ‹.writeJsonFile(t,r,n,o)ä ç==n í n=ì Ü
å e=£.⁄(t)£.’(e)å e=ô"cjson"è ô"json"å e=e.encode(r)ä n í
e=ñ.≠(e,"\\/",…)e=ñ.≠(e,"\\\\",Î)Ü
ä o í
e=o(e)Ü
‹.ø(t,e)ë ì
Ü
â ‹.readLuaFile(e,n)å e=‹.Ï(e)ä ç==e í
ë ç
Ü
ä n í
e=n(e)Ü
å n=ÿ è load
å e=n(e)()ë e
Ü
â ‹.writeLuaFile(n,o,t)å e=£.⁄(n)£.’(e)ä ç==ó.ö í
ë á
Ü
å e=ó.ö(o)ä ç==e í
ë á
Ü
ä t í
e=t(e)Ü
‹.ø(n,e)ë ì
Ü
Ü)ü.û['sllib.os_ext']=(â(...)å n=ô"lfs"â £.Ø(e)Û=e
Ü
â £.pause(e)ä e í
£.¶(_F('cmd /c echo "%s" && pause',e))Ñ
£.¶("cmd /c pause")Ü
Ü
â £.sleep(e)e=e è 1
£.¶("ping -n "..Í(e+1)..Ê)Ü
å â e(e,n)e=ñ.≠(e,Î,…)e=ñ.≠(e,"//",…)ä ñ.byte(e,-1)==47 í
ä é n í
e=ñ.Æ(e,1,-2)Ü
Ñ
ä n í
e=e..…Ü
Ü
ë e
Ü
£.fixPath=e
å â r(e)ë ñ.–(e,"^%a:")Ü
â £.newfile(e)£.Œ(e)å e="echo.>"..e
£.¶(e)Ü
â £.currentdir()ë n.currentdir()Ü
â £.chdir(e)ë n.chdir(e)Ü
â £.filetime(t)t=e(t)å e=n.≤(t)ë e Å e.modification è 0
Ü
â £.Ú(t)t=e(t)å e=n.≤(t)ë e Å e.mode=="directory"Ü
â £.isfile(t)t=e(t)å e=n.≤(t)ë e Å e.mode=="file"Ü
â £.(t)t=e(t)å e=n.≤(t)ë ç~=e
Ü
â £.filesize(t)t=e(t)å e=n.≤(t)ë e.size
Ü
â £.∆(n)n=e(n)å e=#n
å t=ñ.Æ(n,e,e)ï e>0 Å t~=…É
e=e-1
t=ñ.Æ(n,e,e)Ü
ä e==0 í
ë—,n
Ü
å t=ñ.Æ(n,1,e-1)å e=ñ.Æ(n,e+1)ë t,e
Ü
â £.splitpathex(n)å e={}å t=n
å n
ï ì É
t,n=£.∆(t)ä ç==n è—==n í
Ç
Ü
ó.ò(e,n)Ü
e=§.reverse(e)ë e,#e
Ü
â £.⁄(e)å e,n=£.∆(e)ë e
Ü
â £.œ(e)å n,e=£.∆(e)ë e
Ü
â £.filename(e)å n=£.œ(e)å e,t=ñ.–(n,"^(.*)%.(%w*)$")ä e í
ë e,t
Ü
ë n
Ü
â £.extension(e)ë ñ.–(e,"%.%w*$")Ü
â £.’(t)t=e(t)ä Û í ú("os.mkdir",t)Ü
å t=£.splitpathex(t)å e=—à o=1,#t É
e=e..t[o]ä é r(t[o])Å é £.Ú(e)í
å n,t=n.’(e)ä ç==n í
ä Û í ú("os.mkdir failed",e,t)Ü
ë n,t
Ü
Ü
e=e..…Ü
ë ì
Ü
â £.Œ(n)n=e(n)å e=£.⁄(n)ä e Å e~=—í
ë £.’(e)Ü
ë ì
Ü
â £.rmdir(n,e)ä é £.Ú(n)í
ä e í
ú("os.rmdir error:not dir:"..n)Ü
ë
Ü
n=ñ.≠(n,…,Î)å t
ä e í
t=ñ.¢('rd /S /Q  "%s"',n)Ñ
t=ñ.¢('rd /S /Q  "%s" 1>nul',n)Ü
ä e==ì í
e=ú
Ü
ä e í e(t)Ü
ë £.¶(t)Ü
â £.movedir(t,n,o)ä ç==o í
o=ì
Ü
t=e(t)n=e(n)ä o í
å e=£.œ(t)n=n..…..e
Ü
£.Œ(n)å e,o=£.·(t,n)ä é e í
ú("movedir failed",t,n,o)Ü
ë e
Ü
â £.copydir(n,t,o)n=e(n)t=e(t)ä é £.Ú(n)í
ú("path error",n,t)ë á
Ü
n=ñ.≠(n,…,Î)t=ñ.≠(t,…,Î)å e
ä o í
e=ñ.¢('xcopy /Y /E /I /Q "%s" "%s"',n,t)Ñ
e=ñ.¢('xcopy /Y /E /I /Q "%s" "%s" 1>nul',n,t)Ü
ä o==ì í
o=ú
Ü
ä o í o(e)Ü
£.¶(e)ë ì
Ü
â £.copyfile(t,n,e)£.Œ(n)t=ñ.≠(t,…,Î)n=ñ.≠(n,…,Î)å o
ä e í
o=ñ.¢('copy /Y "%s" "%s"',t,n)Ñ
o=ñ.¢('copy /Y "%s" "%s"  1>nul',t,n)Ü
ä e==ì í
e=ú
Ü
ä e í e(o)Ü
ë £.¶(o)Ü
â £.movefile(t,n,o)t=e(t)n=e(n)ä é £.(t)í
ä o í
ú("[movefile] file not exist",t,n)Ü
ë
Ü
£.’(n)å e=£.œ(t)n=n..…..e
£.∑(n)å e,r=£.·(t,n)ä é e í
ä o í
ú("[movefile] failed",t,n,r)Ü
Ü
ë e
Ü
â £.dirempty(e)å e=£.dir(e,ì)ë ó.empty(e)Ü
â £.dir(o,e,i)ä ñ.Æ(o,-1,-1)==…í
o=ñ.Æ(o,1,-2)Ü
å t=30
ä ®(e)=="boolean"í
e=e==á Å 1 è t
Ö ®(e)==±í
e=e
Ñ
e=t
Ü
å r={}å l={}å â s(o,t)t=t-1
à e ã n.dir(o)É
ä e~='.'Å e~='..'í
å e=o..'/'..e
å n=n.≤(e)ä n==ç í
ú("file can't read",e)Ñ
å n=n.mode=='directory'ä ç==i è i(e,n)í
ä n í
ó.ò(r,e)Ñ
ó.ò(l,e)Ü
ä n Å t>0 í
s(e,t)Ü
Ü
Ü
Ü
Ü
Ü
s(o,e)ë l,r
Ü
â £.dirext(t,e,n)å n=ó.‚(n)ë £.dir(t,e,â(e,t)ä t í
ë ì
Ü
å e=£.extension(e)ä n[e]í
ë ì
Ü
ë á
Ü)Ü
Ü)ü.û['sllib.table_ext']=(â(...)å â t(t,e)à n,e ã ¨(e)É
t[n]=e
Ü
Ü
å e={¬=á,ı=ì,}t(ó,e)å â i(r)ä é ¬ í
ë{}Ü
å o={}å t={}å â n(e)ä o[e]í
t[e]=e
ë
Ü
o[e]=e
à t,e ã ¨(e)É
ä ®(t)==´í
n(t)Ö ®(e)==´í
n(e)Ü
Ü
Ü
n(r)ë t
Ü
å â d(c,d,u)å n=ó.ò
å f=ó.¥
å s={}å r=i(c)å â a(o,i,t)i=i Å(i-1)è 30
ä i<0 í
ë t.."..."Ü
t=t è—ä next(o)==ç í
ë t.."{}"Ü
ä ¬ í
s[o]=o
Ü
å e={}n(e,t.."{")ä r[o]í
n(e,Ω(o))Ü
n(e,„)t=t.."  "ä ı è#o==0 í
à l,r ã ¨(o)É
n(e,t)ä ®(l)==´í
ä s[o]í
n(e,Ω(o))Ñ
∑(e)n(e,a(l,i,t))Ü
Ö ®(l)==±í
n(e,"["..†(l).."]")Ñ
å t=Ù.ö(l)n(e,'["'..t..'"]')Ü
n(e," = ")ä ®(r)==´í
ä s[r]í
n(e,Ω(r))Ñ
n(e,„)n(e,a(r,i,t))Ü
Ö ®(r)==±í
n(e,†(r))Ö ®(r)==◊í
n(e,›..r..›)Ñ
n(e,Ù.ö(r))Ü
n(e,",\n")Ü
Ñ
à r,o ã ù(o)É
n(e,t)n(e,"["..†(r).."]")n(e," = ")ä ®(o)==´í
n(e,„)ä s[o]í
n(e,Ω(o))Ñ
n(e,a(o,i,t))Ü
Ö ®(o)==±í
n(e,†(o))Ñ
n(e,›..Ù.ö(o)..›)Ü
n(e,",\n")Ü
Ü
e[#e]=","n(e,„..ñ.Æ(t,1,-3).."}")ë f(e)Ü
ë a(c,d,u)Ü
å â i(t,o)å n=ó.ò
å l=ó.¥
o=o Å(o-1)è 10
ä o<0 í
ë"..."Ü
å e={}n(e,"{")à r,t ã ¨(t)É
ä ®(r)==´í
n(e,i(r,o))n(e,"=")Ö ®(r)==±í
Ñ
n(e,'["'..Ù.ö(r)..'"]')n(e,"=")Ü
ä ®(t)==´í
n(e,i(t,o))Ö ®(t)==±í
n(e,†(t))Ö ®(t)==◊í
n(e,›..t..›)Ñ
n(e,Ù.ö(t))Ü
n(e,",")Ü
n(e,"}")ë l(e)Ü
â ó.empty(e)ë next(e)==ç
Ü
â ó.size(n)å e=0
à n,n ã ¨(n)É
e=e+1
Ü
ë e
Ü
â ó.keys(n)å e={}à n,t ã ¨(n è{})É
ó.ò(e,n)Ü
ë e
Ü
â ó.values(n)å e={}à t,n ã ¨(n è{})É
ó.ò(e,n)Ü
ë e
Ü
â ó.‚(n)å e={}à n,t ã ¨(n è{})É
e[t]=n
Ü
ë e
Ü
â ó.clone(n,t)å e={}ä é t í
Ã(e,getmetatable(n))Ü
à n,t ã ¨(n)É
e[n]=t
Ü
ë e
Ü
â ó.merge(...)å e={}à t,n ã ù({...})É
à t,n ã ¨(n)É
e[t]=n
Ü
Ü
ë e
Ü
â ó.address(n)å e
ä rawget(Ù,"_tostring")í
e=_tostring(n)Ñ
e=d(n)Ü
ë ñ.≠(e,"^table: ",—)è—Ü
ó.ö=d
ó.tostringex=i
â ó.ú(e)ä ®(e)~=´í
Ù.ú(e)Ñ
Ù.ú(ó.ö(e))Ü
Ü
Ü)ü.û['sllib.string_ext']=(â(...)â ñ.strtox16(e)ë ñ.≠(e,".",â(e)ë ñ.¢("%02X",ñ.byte(e))Ü)Ü
â ñ.x16tostr(e)ë ñ.≠(e,"..",â(e)å e=Í(e,16)ë ñ.char(e)Ü)Ü
â ñ.dumpex(e)ë ñ.≠(e,".",â(e)ë ñ.¢("%02X ",ñ.byte(e))Ü)Ü
â ñ.rfind(i,r)å e,n=ñ.˙(i,r,1,ì)å o,t=e,n
ï e~=ç É
o,t=e,n
e,n=ñ.˙(i,r,n,ì)Ü
ë o,t
Ü
â ñ.trim(n,e)e=e è"both"ä e=="begin"í
ë(ñ.≠(n,"^%s*",—))Ö e=="end"í
ë(ñ.≠(n,"%s*$",—))Ö e=="both"í
n=ñ.≠(n,"^%s*",—)ë(ñ.≠(n,"%s*$",—))Ü
Ü
â ñ.iterateString(n,e,t)e=e è'\n'ä é ñ.–(n,e)í
t(n)ë
Ü
à e ã ñ.gmatch(n,"(.-)"..e)É
t(e)Ü
ä ñ.Æ(n,#n-#e+1)==e í
t(—)ë
Ü
å e=ñ.–(n,".+"..e.."(.*)$")ä e í
t(e)Ü
Ü
â ñ.split(n,o)å e=1
å t=1
å t={}ï e É
å r,o=ñ.˙(n,o,e)ä r Å o í
ó.ò(t,ñ.Æ(n,e,r-1))e=o+1
Ñ
ä e<=#n í
ó.ò(t,ñ.Æ(n,e,-1))Ü
Ç
Ü
Ü
ë t
Ü
â ñ.cut(n,t,e)e=e è#n
å t=ñ.Æ(n,1,t-1)è—å e=ñ.Æ(n,e+1)è—ë t..e
Ü
â ñ.cutsub(n,t,e)e=e è 1
å t,o=ñ.˙(n,t,e,ì)ä t==ç í
ë n,-1
Ü
å e=—ä t>1 í
e=e..ñ.Æ(n,1,t-1)Ü
ä o<#n í
e=e..ñ.Æ(n,o+1)Ü
ë e,t
Ü
â ñ.replacesub(n,t,r,e)e=e è 1
å t,o=ñ.˙(n,t,e,ì)ä t==ç í
ë n,-1
Ü
å e=—ä t>1 í
e=e..ñ.Æ(n,1,t-1)Ü
e=e..r
å t=ñ.len(e)+1
ä o<#n í
e=e..ñ.Æ(n,o+1)Ü
ë e,t
Ü
â ñ.replacesubAll(n,t,o,e)e=e è 1
å e=e
ê
n,e=ñ.replacesub(n,t,o,e)î e==-1
ë n
Ü
Ü)ü.û['sllib.math_ext']=(â(...)ä é ≥.pow í
≥.pow=â(n,e)ë n^e
Ü
Ü
â ≥.cutf(e,n)å t,e=≥.Ÿ(e)å e=e*≥.pow(10,n)e=≥.Ÿ(e)e=e/≥.pow(10,n)ë t+e
Ü
Ü)ü.û['sllib.debug_ext']=(â(...)å r=ô"sllib.profiler"å l=10
å s=100
â Ø.tracevalue(e,t)e=e è 2
t=t è 2
å r={}ó.ò(r,"stack tracevalue:")å i=á
å n="  "å t=e+t
ï e<t É
å o=Ø.˚(e,"nS")i=o.what=="main"å t={}ó.ò(t,ñ.¢(n.."file:%s line:%d function:%s()\n",o.ﬁ,o.”,o.€ è—))n=n.."  "à n=1,l É
å n,e=Ø.getlocal(e,n)ä ç==n í
Ç
Ü
ä ®(e)~="function"Å n~="self"í
å o
ä ®(e)==´í
o=ñ.Æ(ó.tostringex(e),1,s)Ñ
o=¿(e)Ü
ó.ò(t,¿(n).."="..o)ó.ò(t,„)Ü
Ü
ó.ò(r,ó.¥(t,n))ä i í
Ç
Ü
e=e+1
n=n.."  "Ü
ë ó.¥(r,„)Ü
Ø.startanalysis=â(e)r:setLevel(3)r:start(e)Ü
Ø.stopanalysis=â(e)r:stop(e)Ü
Ü)ü.û['sllib.list_ext']=(â(...)§=§ è{}â §.map(e,o)à n,t ã ù(e)É
e[n]=o(t,n)Ü
ë e
Ü
â §.filter(e,r)å n={}à o,t ã ù(e)É
ä r(t,o)í
ó.ò(n,t)Ü
Ü
e=n
ë e
Ü
â §.append(e,n)ó.ò(e,n)ë e
Ü
â §.appendList(e,...)à t,n ã ù({...})É
à t,n ã ù(n)É
ó.ò(e,n)Ü
Ü
ë e
Ü
â §.¥(...)å e={}à t,n ã ù({...})É
à t,n ã ù(n)É
ó.ò(e,n)Ü
Ü
ë e
Ü
â §.indexOf(n,e)à t,n ã ù(n)É
ä n==e í
ë t
Ü
Ü
ë-1
Ü
â §.∑(e,o)à t,n ã ù(e)É
ä n==o í
ó.∑(e,t)Ç
Ü
Ü
ë e
Ü
â §.Æ(n,o,e)e=e è#n
å t={}à e=o,e É
ó.ò(t,n[e])Ü
ë t
Ü
â §.cut(n,e)å n=§.Æ(1,e)å e=§.Æ(e+1)ë n,e
Ü
â §.(e,n)à t,e ã ù(e)É
ä e==n í
ë ì
Ü
Ü
ë á
Ü
â §.reverse(e)å n={}à t=#e,1,-1 É
ó.ò(n,e[t])Ü
ë n
Ü
â §.mirror(n)å e={}à t,n ã ù(n)É
e[n]=n
Ü
ë e
Ü
â §.merge(...)å e=§.¥(...)e=ó.‚(e)ë ó.keys(e)Ü
â §.mergeex(n,...)å e=§.¥(...)e=§.project(e,n)ë ó.values(e)Ü
â §.project(n,t)å e={}à o,n ã ù(n)É
e[n[t]]=n
Ü
ë e
Ü
Ü)ü.û['sllib.coroutine_ext']=(â(...)å n={}å o={}å e=coroutine
â e.start(n,...)å n=e.create(n)e.Á(n,...)ë n
Ü
â e.lock()å t=e.running()ë â()§.∑(n,t)e.Á(t)Ü
Ü
â e.wait()å t=e.running()ó.ò(n,t)e.yield(t)ä o[t]í
o[t]=ç
ë ì
Ü
ë á
Ü
â e.stop(t)o[cc]=ì
§.∑(n,t)e.Á(t)Ü
â e.stopAll()à r,t ã ù(n)É
o[t]=ì
e.Á(t)Ü
n={}Ü
Ü)ü.û['sllib.set']=(â(...)ä rawget(Ù,"set")í
â ß.˝(n,t)å e=ß.¸({})à n ã ¨(n)É
ä ß.÷(t,n)í
ß.ò(e,n)Ü
Ü
ë e
Ü
â ß.‰(n)å e={}à n ã ¨(n)É
ó.ò(e,n)Ü
ë e
Ü
â ß.ú(e)å e=ß.‰(e)ó.ú(e)Ü
ë
Ü
å e={}ß={}ß.≈=¨
â ß.¸(n)å e=Ã({},e)à t,n ã ù(n è{})É
ß.ò(e,n)Ü
ë e
Ü
â ß.÷(e,n)ë rawget(e,n)==ì
Ü
â ß.ò(n,e)√(n,e,ì)Ü
â ß.delete(n,e)√(n,e,ç)Ü
â ß.˝(e,t)å n=ß.¸()à e ã ß.≈(e)É
ä ß.÷(t,e)í
ß.ò(n,e)Ü
Ü
ë n
Ü
â ß.‰(n)å e={}à n ã ß.≈(n)É
ó.ò(e,n)Ü
ë e
Ü
â ß.ú(e)å e=ß.‰(e)ó.ú(e)Ü
å â l(n,t)å e=ß.¸()à n ã ß.≈(n)É
ß.ò(e,n)Ü
à n ã ß.≈(t)É
ß.ò(e,n)Ü
ë e
Ü
å â r(e,t)å n=ß.¸()à e ã ß.≈(e)É
ä é ß.÷(t,e)í
ß.ò(n,e)Ü
Ü
ë n
Ü
å â i(n,e)à n ã ß.≈(n)É
ä é ß.÷(e,n)í
ë á
Ü
Ü
ë ì
Ü
å â o(n,t)ë ß.subset(n,t)Å é ß.subset(t,n)Ü
e.__index=ß
e.__add=l
e.__sub=r
e.__le=i
e.__lt=o
Ü)ü.û['sllib.time']=(â(...)©=© è{}â ©.©()ë £.©()Ü
â ©.»()ë £.»()Ü
â ©.∂()ä £.∂ í
ë £.∂()Ü
å e=ô"socket.core"ë(≥.Ÿ(e.gettime()*1e3))Ü
â ©.sleep(e)e=e è 0
£.¶("ping -n "..Í(e+1)..Ê)Ü
â ©.getstr(e,n)e=e è'%c'n=n è £.©()ë £.Ò(e,n)Ü
â ©.getendofday(e)e=e è £.©()å e=£.Ò('*t',e)å e=£.Ò('*t',£.©({year=e["year"],month=e["month"],day=e["day"],hour=23,min=59,sec=59}))å e=£.©(e)ë e
Ü
â ©.tohour(e)å n=≥.Ÿ(e/3600)å t=≥.Ÿ(≥.fmod(e,3600)/60)å e=≥.fmod(e,60)ë{hour=n,min=t,sec=e}Ü
Ü)ü.û['sllib.timer']=(â(...)å t=ô"ctimer"™=™ è{}ä é t í
ë ™
Ü
å n={}â ™.after(e,o,r)å t=t.µ()å e={loop=á,‘=1,©=e+t,€=r,cbk=o}ó.ò(n,e)™.ﬂ()Ü
â ™.repeats(r,i,o,e)o=o è 0
e=e è{}å t=t.µ()å t=e.runsoon Å t è r+t
å e={loop=ì,‘=o,©=t,€=e.€,cbk=i,interval=r,‡=e.‡}ó.ò(n,e)™.ﬂ()Ü
â ™.cancel(o)à t,e ã ù(n)É
ä e.€==o í
ó.∑(n,t)Ç
Ü
Ü
Ü
â ™.ﬂ()ó.sort(n,â(e,n)ë e.©<n.©
Ü)Ü
â ™._doUpdate(e)å o=t.µ()å t=0
à i,e ã ù(n)É
ä e.©<o í
å r=e.loop
ä e.loop Å e.‘>0 í
e.‘=e.‘-1
ä e.‘==0 í
r=á
Ü
Ü
e.cbk(o)ä r í
e.©=e.interval+o
ó.ò(n,e)Ñ
ä e.‡ í
e.‡(o)Ü
Ü
t=i
Ü
Ü
ä t>0 Å t<=#n í
n=§.Æ(n,t+1)Ü
Ü
â ™.startUpdate()t.startUpdate(™._doUpdate,1e3)Ü
â ™.stopUpdate()t.stopUpdate()Ü
â ™.waitUpdate()t.waitUpdate()Ü
â ™.∂()ë t.µ()Ü
â ™.©()ë ≥.floor(t.µ()/1e3+.5)Ü
â ™.timeinfo()ë t.getTime()Ü
ë ™ Ü)ü.û['sllib.logs']=(â(...)•=• è{}å i=á
å n=ç
å s=ì
å a=õ.º()å r={}å â e(e)å e=ñ.≠(e,"[\r\n\t]",—)ä e==—í
ë ì
Ü
ë á
Ü
å t=ì
å â d(e)ë ¿(e,t)Ü
å â l()ä n í
ë n
Ü
å e=£.Ò("*t")å e=ñ.¢("%s_%s_%s.log",e.year,e.month,e.day)n=e
ë e
Ü
å â c(e)ä é s í
ë
Ü
å n=l()‹.ø(n,e,"a+")Ü
å â o(n,e)e=á
å e=£.Ò("*t")å o=£.»()å t=n
ä i í
t=ñ.¢("[%s-%s-%s %02s:%02s:%02s %s]%s",e.year,e.month,e.day,e.hour,e.min,e.sec,o,n)Ü
c(t..'\n')Ü
â •.writeInFile(e)s=e
Ü
â •.showLogTime(e)i=e
Ü
â •.setLogPath(e)n=e
Ü
â •.clear()å e=l()ä é £.(e)í
ë
Ü
‹.ø(e,—)Ü
â •.ƒ(...)å n={...}å e=#n
å e={}à t,n ã ù(n)É
å n=d(n)ó.ò(e,n)Ü
o(ó.¥(e,ˇ))Ü
â •.i(...)•.ƒ(...)Ü
â •.w(...)õ.ª(14)•.ƒ(...)ä a í õ.∫()Ü
Ü
â •.e(...)õ.ª(12)•.ƒ(...)å e=t
t=á
o(Ø.traceback(—,2))t=e
ä a í õ.∫()Ü
Ü
â •.f(e,...)o(ñ.¢(e,...))Ü
â •.¯(e,...)e=e è"nil"å e=ñ.¢(e,...)å e=Ø.traceback(e,2)o(e)Ü
â •.©(e)e=ö(e)r[e]=©.∂()Ü
â •.timeEnd(e)e=ö(e)ä é r[e]í
ë
Ü
å n=©.∂()-r[e]ú(_F("%s:%d",e,n))Ü
ë •
Ü)ü.û['sllib.class']=(â(...)å n={}å â r(e)e.__index=e
ë Ã({},e)Ü
â class(o,t)å e
ä t í
e=t:Ó(o)Ñ
e=n:Ó(o)Ü
e.¸=â(...)å n=r(e)n.__class=e
n:ctor(...)ë n
Ü
e.create=â(n,...)ë e.¸(...)Ü
ë e
Ü
â n:ctor(...)Ü
â n:dtor()Ü
â n:Ó(n)å e=r(°)e.__name=n
e.super=°
ë e
Ü
â n:attrReader(...)à n,e ã ù({...})É
å n="get"..ñ.upper(ñ.Æ(e,1,1))..ñ.Æ(e,2)°[n]=â(n)ë n[e]Ü
Ü
Ü
â n:attrWriter(...)à n,e ã ù({...})É
å n="set"..ñ.upper(ñ.Æ(e,1,1))..ñ.Æ(e,2)°[n]=â(n,t)n[e]=t
Ü
Ü
Ü
â n:include(...)à n,e ã ù({...})É
à n,e ã ¨(e)É
°[n]=e
Ü
Ü
Ü
â n:delegate(e,n)à t,n ã ù(n)É
°[n]=â(t,...)ë e[n](e,...)Ü
Ü
Ü
Ü)ü.û['sllib.profiler']=(â(...)å e={}â e:setLogFunc(e)°.«=e
Ü
â e:setLevel(e)°.˘=e
Ü
â e:start(e)e=e è"profile"°.«=ú
ä e=="trace"í
Ø.˜(bind(°.Ô,°),'c')Ñ
°.π={}°.startTime=£.»()°.˘=3
Ø.˜(bind(°.Ë,°),'cr')Ü
Ü
â e:stop(e)e=e è"profile"Ø.˜()ä e=="trace"í
ë
Ü
°.stopTime=£.»()å n=°.stopTime-°.startTime
ä n<.001 í
°.«("total time less 0.001s")ë
Ü
å e=ó.values(°.π)ó.sort(e,â(n,e)ë n.∞>e.∞
Ü)à t,e ã ù(e)É
å n=(e.∞/n)*100
ä n<1 í
Ç
Ü
å e=ñ.¢("time:%6.3f, percent:%.2f%%, count:%d, %s",e.∞,n,e.À,e.title)°.«(e)Ü
Ü
â e:Ô()å e=Ø.˚(°.˘,'nS')å e=ñ.¢("file:%s line:%d function:%s()",e.ﬁ,e.”,e.€ è—)°.«(e)Ü
â e:˛(e)å t=e.€ è'anonymous'å n=e.ﬁ è'C_FUNC'å e=e.” è 0
ë ñ.¢("file:%s line:%s function:%s",n,e,t)Ü
â e: (e)å n=°:˛(e)å e=°.π[n]ä é e í
e={title=n,À=0,∞=0,}°.π[n]=e
Ü
ë e
Ü
â e:Ë(n)å o=â(e)å e=°: (e)e.¡=£.»()e.À=e.À+1
Ü
å t=â(e)å n=£.»()å e=°: (e)ä e.¡ Å e.¡>0 í
e.∞=e.∞+(n-e.¡)e.¡=0
Ü
Ü
å e=Ø.˚(°.˘,'nS')ä e í
ä n=="call"í
o(e)Ö n=="return"í
t(e)Ü
Ü
Ü
ë e
Ü)ü.û['sllib.cmd']=(â(...)Õ=Õ è{}√(Ù,"cmd",Õ)Õ.showcmd=á
â Õ:setOutputCall(n,e)°.outputCall=n è ú
°.outputCallE=e è È
Ü
â Õ:run(e,o,n)n=n è 1
å t=°.outputCall è ú
å r=°.outputCallE è È
ä o í
å n='set "path='..o..';%path%" & 'e=n..e
Ü
ä °.showcmd í
ä t~=ú í
ú("cmd:run",e)Ü
t("cmd:run "..e)Ü
ä n==1 í
å n,e,t=£.¶(e)ä é n í
r(e.." cmd execute failed:"..Õ)Ü
Ö n==2 í
å e=‹.popen(e)å n=e:read("*a")t(n)e:ˆ()Ü
Ü
ë Õ
Ü)ü.û['sllib.jscompress']=(â(...)å n={}√(Ù,"jscompress",n)â n:∏(n,e)∏("terser",n,e)∏("javascript-obfuscator",n,e)Ü
â n:jsmin(e,n,t)ä e==n í
å o=e..".tmp"å r=_F(“,e,o)Õ:run(r,t)£.∑(e)£.·(o,n)Ñ
å e=_F(“,e,n)Õ:run(e,t)Ü
Ü
â n:terser(e,t,n)å e=_F('terser %s -c -m -o %s',e,t)Õ:run(e,n)Ü
â n:encode(o,e,i,r)å t=e
ä ñ.–(e,"%.js$")==ç í
t=e..".js"Ü
å n=_F('javascript-obfuscator %s --output %s',o,e)ä r==1 í
n=_F('javascript-obfuscator %s --output %s --compact true --control-flow-flattening false --dead-code-injection false --debug-protection false --disable-console-output false --identifier-names-generator mangled --rename-globals false  --self-defending false --string-array false --transform-object-keys false  --unicode-escape-sequence false',o,t)Ö r==2 í
n=_F('javascript-obfuscator %s --output %s --compact true --identifier-names-generator hexadecimal --string-array true --string-array-threshold 0.5 --string-array-encoding base64 --disable-console-output true --transform-object-keys true --self-defending false --control-flow-flattening false --unicode-escape-sequence false',o,t)Ö r==3 í
n=_F('javascript-obfuscator %s --output %s --compact true --control-flow-flattening true --dead-code-injection true --debug-protection true --disable-console-output true --self-defending true --string-array true --string-array-encoding base64 --string-array-threshold 1 --unicode-escape-sequence true',o,t)Ü
n=n.." >nul 2>&1"Õ:run(n,i)ä e~=t í
£.∑(e)£.·(t,e)Ü
Ü
ë n
Ü)√(Ù,"SLLIB_VERSION","1.1.3")ô"sllib.console"ô"sllib.global"ô"sllib.lang"ô"sllib.io_ext"ô"sllib.os_ext"ô"sllib.table_ext"ô"sllib.string_ext"ô"sllib.list_ext"ô"sllib.set"ô"sllib.math_ext"ô"sllib.debug_ext"ô"sllib.coroutine_ext"ô"sllib.time"ô"sllib.timer"ô"sllib.logs"ô"sllib.class"ô"sllib.cmd"ô"sllib.jscompress"enum=ó.‚
log=log è •.i
logw=logw è •.w
loge=loge è •.e
logf=logf è •.f
¯=¯ è •.¯
clearLog=clearLog è •.clear
writeLogInFile=•.writeInFile
Â=Â è ó.Â
ÿ=ÿ è load
√(Ù,"bind",â(e,...)å n={...}assert(e,"bind params error")ë â(...)å n=§.¥(n,{...})ë e(Â(n))Ü
Ü)â ¿(e)ä ®(e)==◊í
ë›..e..›Ö ®(e)==´í
ë ó.ö(e)Ö ®(e)==±í
ë †(e)Ñ
å e=ö(e)èÌë e
Ü
Ü
]===], '@sllib_base.lua'))()