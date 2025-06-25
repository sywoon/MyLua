loadstring = loadstring or load 
local base_char,keywords=128,{"and","break","do","else","elseif","end","false","for","function","if","in","local","nil","not","or","repeat","return","then","true","until","while","string","table","insert","require","tostring","console","print","ipairs","package","preload","numbertostring","self","format","os","time","list","type","execute","set","logs","timer","\"table\"","pairs","gsub","sub","debug","totaltime","\"number\"","math","attributes","concat","getTimestamp","millitime","remove","reportsByTitle","checkJsInstall","resetColor","setColor","isSupportLineColor","tableAddress","defaultColor","writeFile","any2str","calltime","__showInnerRef","rawset","getFuncReport","\"/\"","splitpath","callcount","clock","elems","_showLogs","logFunc","setmetatable","cmd","basename","mkpredir","mkdir","member","match","linedefined","'jsmin.exe < \"%s\" > \"%s\"'","count","\"\"","\"string\"","dirname","loadstring","modf","name","io","'\"'","short_src","_sortCbks","month","profilingHandler","\"\\n\"","invert","resume","endCbk","rename","\" localhost > NUL\"","unpack","printe","date","tolist","\"\\\\\"","readFile","subClass","\"Unknown object!\"","tonumber","tracingHandler","__keyCanBeNum","find","s_debug","_G","isdir","new","level","close","exist","sethook","year","trace","getinfo","'\\t'",}; function prettify(code) return code:gsub("["..string.char(base_char).."-"..string.char(base_char+#keywords).."]", 
	function (c) return keywords[c:byte()-base_char]; end) end return assert(loadstring(prettify[===[û.ü['sllib.console']=(â(...)å e=_VERSION=="Lua 5.3"Å 1 è 0
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
å e=ñ.¢("color %02X",n)ë £.ß(e)Ü
Ü
â õ.∫()ä e==1 í
õ.ª(õ.æ)Ñ
å e=ñ.¢("color %02X",õ.æ)ë £.ß(e)Ü
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
Ü)û.ü['sllib.global']=(â(...)â †(e)ä e<0 í
ë"-"..†(-e)Ü
ä e<=10^13 í
ë ö(e)Ü
ä ≤.⁄(e)~=e í
ë ö(e)Ü
å n=≤.fmod(e,10^13)å e=≤.⁄(e/10^13)å e=ñ.¢("%s%013s",ö(e),ö(n))ë e
Ü
â ¿(e,n)ä ¶(e)==◊í
ä n Å e~=‚í
ë›..e..›Ñ
ë e
Ü
Ö ¶(e)==´í
ë ó.ö(e)Ö ¶(e)==±í
ë †(e)Ñ
å e=ö(e)èÔë e
Ü
Ü
â _F(e,...)ë ñ.¢(e,...)Ü
å e=õ.º()â printw(...)õ.ª(14)ú(...)ä e í õ.∫()Ü
Ü
â È(...)õ.ª(12)ú(...)ä e í õ.∫()Ü
Ü
â π(e,t,r)å n=â(...)ä t í
ú(...)Ü
Ü
å o="where "..e.."  >nul 2>&1"å o,i,i=£.ß(o)ä é o í
ä t í ú(e.." not exist, will install...")Ü
å t="npm install -g "..e.." >nul 2>&1"å t=£.ß(t)ä t~=0 í
n(e.." install failed")ä r í £.exit(1)Ü
ë á
Ñ
n(e.." install success")ë ì
Ü
Ñ
n(e.." already installed")ë ì
Ü
Ü
â invalid()å e=§.gettimestamp({¸=2026,‡=5,day=19})ë £.§()<e;Ü
Ü)û.ü['sllib.lang']=(â(...)ä _VERSION=="Lua 5.1"í
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
Ü)û.ü['sllib.io_ext']=(â(...)â ‹.Ì(n,e)e=e è"r"å e=‹.open(n,e)ä e==ç í
ë ç
Ü
å n=e:read("*a")e:˘()ë n
Ü
â ‹.ø(t,n,e)e=e è"w"å e=‹.open(t,e)ä e==ç í
ë á
Ü
e:write(n)e:˘()ë ì
Ü
â ‹.fileSize(e)å n=0
å e=‹.open(e,"r")ä e í
å t=e:seek()n=e:seek("end")e:seek("set",t)‹.˘(e)Ü
ë n
Ü
â ‹.readJsonFile(e,n)å e=‹.Ì(e)ä ç==e è e==÷í
ë ç
Ü
ä n í
e=n(e)Ü
å n=ô"cjson"è ô"json"å e=n.decode(e)ë e
Ü
â ‹.writeJsonFile(t,r,n,o)ä ç==n í n=ì Ü
å e=£.ÿ(t)£.–(e)å e=ô"cjson"è ô"json"å e=e.encode(r)ä n í
e=ñ.≠(e,"\\/",≈)e=ñ.≠(e,"\\\\",Ï)Ü
ä o í
e=o(e)Ü
‹.ø(t,e)ë ì
Ü
â ‹.readLuaFile(e,n)å e=‹.Ì(e)ä ç==e í
ë ç
Ü
ä n í
e=n(e)Ü
å n=Ÿ è load
å e=n(e)()ë e
Ü
â ‹.writeLuaFile(t,o,n)å e=£.ÿ(t)£.–(e)ä ç==ó.ö í
ë á
Ü
å e=ó.ö(o)ä ç==e í
ë á
Ü
ä n í
e=n(e)Ü
‹.ø(t,e)ë ì
Ü
Ü)û.ü['sllib.os_ext']=(â(...)å n=ô"lfs"â £.Ø(e)Ù=e
Ü
â £.pause(e)ä e í
£.ß(_F('cmd /c echo "%s" && pause',e))Ñ
£.ß("cmd /c pause")Ü
Ü
â £.sleep(e)e=e è 1
£.ß("ping -n "..(e+1)..Á)Ü
å â e(e,n)e=ñ.≠(e,Ï,≈)e=ñ.≠(e,"//",≈)ä ñ.byte(e,-1)==47 í
ä é n í
e=ñ.Æ(e,1,-2)Ü
Ñ
ä n í
e=e..≈Ü
Ü
ë e
Ü
£.fixPath=e
å â r(e)ë ñ.“(e,"^%a:")Ü
â £.newfile(e)£.œ(e)å e="echo.>"..e
£.ß(e)Ü
â £.currentdir()ë n.currentdir()Ü
â £.chdir(e)ë n.chdir(e)Ü
â £.filetime(t)t=e(t)å e=n.≥(t)ë e Å e.modification è 0
Ü
â £.ˆ(t)t=e(t)å e=n.≥(t)ë e Å e.mode=="directory"Ü
â £.isfile(t)t=e(t)å e=n.≥(t)ë e Å e.mode=="file"Ü
â £.˙(t)t=e(t)å e=n.≥(t)ë ç~=e
Ü
â £.filesize(t)t=e(t)å e=n.≥(t)ë e.size
Ü
â £.∆(n)n=e(n)å e=#n
å t=ñ.Æ(n,e,e)ï e>0 Å t~=≈É
e=e-1
t=ñ.Æ(n,e,e)Ü
ä e==0 í
ë÷,n
Ü
å t=ñ.Æ(n,1,e-1)å e=ñ.Æ(n,e+1)ë t,e
Ü
â £.splitpathex(n)å e={}å t=n
å n
ï ì É
t,n=£.∆(t)ä ç==n è÷==n í
Ç
Ü
ó.ò(e,n)Ü
e=•.reverse(e)ë e,#e
Ü
â £.ÿ(e)å e,n=£.∆(e)ë e
Ü
â £.Œ(e)å n,e=£.∆(e)ë e
Ü
â £.filename(e)å e=£.Œ(e)å n,t=ñ.“(e,"^(.*)%.(%w*)$")ä n í
ë n,t
Ü
ë e
Ü
â £.extension(e)ë ñ.“(e,"%.%w*$")Ü
â £.–(t)t=e(t)ä Ù í ú("os.mkdir",t)Ü
å t=£.splitpathex(t)å e=÷à o=1,#t É
e=e..t[o]ä é r(t[o])Å é £.ˆ(e)í
å t,n=n.–(e)ä ç==t í
ä Ù í ú("os.mkdir failed",e,n)Ü
ë t,n
Ü
Ü
e=e..≈Ü
ë ì
Ü
â £.œ(n)n=e(n)å e=£.ÿ(n)ä e Å e~=÷í
ë £.–(e)Ü
ë ì
Ü
â £.rmdir(n,e)ä é £.ˆ(n)í
ä e í
ú("os.rmdir error:not dir:"..n)Ü
ë
Ü
n=ñ.≠(n,≈,Ï)å t
ä e í
t=ñ.¢('rd /S /Q  "%s"',n)Ñ
t=ñ.¢('rd /S /Q  "%s" 1>nul',n)Ü
ä e==ì í
e=ú
Ü
ä e í e(t)Ü
ë £.ß(t)Ü
â £.movedir(t,n,o)ä ç==o í
o=ì
Ü
t=e(t)n=e(n)ä o í
å e=£.Œ(t)n=n..≈..e
Ü
£.œ(n)å e,o=£.Ê(t,n)ä é e í
ú("movedir failed",t,n,o)Ü
ë e
Ü
â £.copydir(n,t,o)n=e(n)t=e(t)ä é £.ˆ(n)í
ú("path error",n,t)ë á
Ü
n=ñ.≠(n,≈,Ï)t=ñ.≠(t,≈,Ï)å e
ä o í
e=ñ.¢('xcopy /Y /E /I /Q "%s" "%s"',n,t)Ñ
e=ñ.¢('xcopy /Y /E /I /Q "%s" "%s" 1>nul',n,t)Ü
ä o==ì í
o=ú
Ü
ä o í o(e)Ü
£.ß(e)ë ì
Ü
â £.copyfile(t,e,n)£.œ(e)t=ñ.≠(t,≈,Ï)e=ñ.≠(e,≈,Ï)å o
ä n í
o=ñ.¢('copy /Y "%s" "%s"',t,e)Ñ
o=ñ.¢('copy /Y "%s" "%s"  1>nul',t,e)Ü
ä n==ì í
n=ú
Ü
ä n í n(o)Ü
ë £.ß(o)Ü
â £.movefile(t,n,o)t=e(t)n=e(n)ä é £.˙(t)í
ä o í
ú("[movefile] file not exist",t,n)Ü
ë
Ü
£.–(n)å e=£.Œ(t)n=n..≈..e
£.∑(n)å e,r=£.Ê(t,n)ä é e í
ä o í
ú("[movefile] failed",t,n,r)Ü
Ü
ë e
Ü
â £.dirempty(e)å e=£.dir(e,ì)ë ó.empty(e)Ü
â £.dir(t,e,o)ä ñ.Æ(t,-1,-1)==≈í
t=ñ.Æ(t,1,-2)Ü
å r=30
ä ¶(e)=="boolean"í
e=e==á Å 1 è r
Ö ¶(e)==±í
e=e
Ñ
e=r
Ü
å i={}å r={}å â s(l,t)t=t-1
à e ã n.dir(l)É
ä e~='.'Å e~='..'í
å e=l..'/'..e
å n=n.≥(e)ä n==ç í
ú("file can't read",e)Ñ
å n=n.mode=='directory'ä ç==o è o(e,n)í
ä n í
ó.ò(i,e)Ñ
ó.ò(r,e)Ü
ä n Å t>0 í
s(e,t)Ü
Ü
Ü
Ü
Ü
Ü
s(t,e)ë r,i
Ü
â £.dirext(e,n,t)å t=ó.„(t)ë £.dir(e,n,â(e,n)ä n í
ë ì
Ü
å e=£.extension(e)ä t[e]í
ë ì
Ü
ë á
Ü)Ü
Ü)û.ü['sllib.table_ext']=(â(...)å â e(e,n)à n,t ã ¨(n)É
e[n]=t
Ü
Ü
å n={¬=á,Ú=ì,}e(ó,n)å â r(r)ä é ¬ í
ë{}Ü
å t={}å o={}å â n(e)ä t[e]í
o[e]=e
ë
Ü
t[e]=e
à e,t ã ¨(e)É
ä ¶(e)==´í
n(e)Ö ¶(t)==´í
n(t)Ü
Ü
Ü
n(r)ë o
Ü
å â d(c,u,d)å n=ó.ò
å f=ó.¥
å a={}å r=r(c)å â s(o,i,t)i=i Å(i-1)è 30
ä i<0 í
ë t.."..."Ü
t=t è÷ä next(o)==ç í
ë t.."{}"Ü
ä ¬ í
a[o]=o
Ü
å e={}n(e,t.."{")ä r[o]í
n(e,Ω(o))Ü
n(e,‚)t=t.."  "ä Ú è#o==0 í
à l,r ã ¨(o)É
n(e,t)ä ¶(l)==´í
ä a[o]í
n(e,Ω(o))Ñ
∑(e)n(e,s(l,i,t))Ü
Ö ¶(l)==±í
n(e,"["..†(l).."]")Ñ
å t=ı.ö(l)n(e,'["'..t..'"]')Ü
n(e," = ")ä ¶(r)==´í
ä a[r]í
n(e,Ω(r))Ñ
n(e,‚)n(e,s(r,i,t))Ü
Ö ¶(r)==±í
n(e,†(r))Ö ¶(r)==◊í
n(e,›..r..›)Ñ
n(e,ı.ö(r))Ü
n(e,",\n")Ü
Ñ
à r,o ã ù(o)É
n(e,t)n(e,"["..†(r).."]")n(e," = ")ä ¶(o)==´í
n(e,‚)ä a[o]í
n(e,Ω(o))Ñ
n(e,s(o,i,t))Ü
Ö ¶(o)==±í
n(e,†(o))Ñ
n(e,›..ı.ö(o)..›)Ü
n(e,",\n")Ü
Ü
e[#e]=","n(e,‚..ñ.Æ(t,1,-3).."}")ë f(e)Ü
ë s(c,u,d)Ü
å â i(t,o)å n=ó.ò
å l=ó.¥
o=o Å(o-1)è 10
ä o<0 í
ë"..."Ü
å e={}n(e,"{")à r,t ã ¨(t)É
ä ¶(r)==´í
n(e,i(r,o))n(e,"=")Ö ¶(r)==±í
Ñ
n(e,'["'..ı.ö(r)..'"]')n(e,"=")Ü
ä ¶(t)==´í
n(e,i(t,o))Ö ¶(t)==±í
n(e,†(t))Ö ¶(t)==◊í
n(e,›..t..›)Ñ
n(e,ı.ö(t))Ü
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
â ó.„(n)å e={}à n,t ã ¨(n è{})É
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
à n,t ã ¨(n)É
e[n]=t
Ü
Ü
ë e
Ü
â ó.address(n)å e
ä rawget(ı,"_tostring")í
e=_tostring(n)Ñ
e=d(n)Ü
ë ñ.≠(e,"^table: ",÷)è÷Ü
ó.ö=d
ó.tostringex=i
â ó.ú(e)ä ¶(e)~=´í
ı.ú(e)Ñ
ı.ú(ó.ö(e))Ü
Ü
Ü)û.ü['sllib.string_ext']=(â(...)â ñ.strtox16(e)ë ñ.≠(e,".",â(e)ë ñ.¢("%02X",ñ.byte(e))Ü)Ü
â ñ.x16tostr(e)ë ñ.≠(e,"..",â(e)å e=(e,16)ë ñ.char(e)Ü)Ü
â ñ.dumpex(e)ë ñ.≠(e,".",â(e)ë ñ.¢("%02X ",ñ.byte(e))Ü)Ü
â ñ.rfind(o,t)å n,e=ñ.Û(o,t,1,ì)å r,i=n,e
ï n~=ç É
r,i=n,e
n,e=ñ.Û(o,t,e,ì)Ü
ë r,i
Ü
â ñ.trim(n,e)e=e è"both"ä e=="begin"í
ë(ñ.≠(n,"^%s*",÷))Ö e=="end"í
ë(ñ.≠(n,"%s*$",÷))Ö e=="both"í
n=ñ.≠(n,"^%s*",÷)ë(ñ.≠(n,"%s*$",÷))Ü
Ü
â ñ.iterateString(n,e,t)e=e è'\n'ä é ñ.“(n,e)í
t(n)ë
Ü
à e ã ñ.gmatch(n,"(.-)"..e)É
t(e)Ü
ä ñ.Æ(n,#n-#e+1)==e í
t(÷)ë
Ü
å e=ñ.“(n,".+"..e.."(.*)$")ä e í
t(e)Ü
Ü
â ñ.split(n,o)å e=1
å t=1
å t={}ï e É
å o,r=ñ.Û(n,o,e)ä o Å r í
ó.ò(t,ñ.Æ(n,e,o-1))e=r+1
Ñ
ä e<=#n í
ó.ò(t,ñ.Æ(n,e,-1))Ü
Ç
Ü
Ü
ë t
Ü
â ñ.cut(n,t,e)e=e è#n
å t=ñ.Æ(n,1,t-1)è÷å e=ñ.Æ(n,e+1)è÷ë t..e
Ü
â ñ.cutsub(n,t,e)e=e è 1
å t,o=ñ.Û(n,t,e,ì)ä t==ç í
ë n,-1
Ü
å e=÷ä t>1 í
e=e..ñ.Æ(n,1,t-1)Ü
ä o<#n í
e=e..ñ.Æ(n,o+1)Ü
ë e,t
Ü
â ñ.replacesub(n,t,r,e)e=e è 1
å t,o=ñ.Û(n,t,e,ì)ä t==ç í
ë n,-1
Ü
å e=÷ä t>1 í
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
Ü)û.ü['sllib.math_ext']=(â(...)ä é ≤.pow í
≤.pow=â(n,e)ë n^e
Ü
Ü
â ≤.cutf(e,n)å t,e=≤.⁄(e)å e=e*≤.pow(10,n)e=≤.⁄(e)e=e/≤.pow(10,n)ë t+e
Ü
Ü)û.ü['sllib.debug_ext']=(â(...)å r=ô"sllib.profiler"å s=10
å l=100
â Ø.tracevalue(e,t)e=e è 2
t=t è 2
å r={}ó.ò(r,"stack tracevalue:")å i=á
å n="  "å t=e+t
ï e<t É
å t=Ø.˛(e,"nS")i=t.what=="main"å o={}ó.ò(o,ñ.¢(n.."file:%s line:%d function:%s()\n",t.ﬁ,t.”,t.€ è÷))n=n.."  "à n=1,s É
å n,e=Ø.getlocal(e,n)ä ç==n í
Ç
Ü
ä ¶(e)~="function"Å n~="self"í
å t
ä ¶(e)==´í
t=ñ.Æ(ó.tostringex(e),1,l)Ñ
t=¿(e)Ü
ó.ò(o,¿(n).."="..t)ó.ò(o,‚)Ü
Ü
ó.ò(r,ó.¥(o,n))ä i í
Ç
Ü
e=e+1
n=n.."  "Ü
ë ó.¥(r,‚)Ü
Ø.startanalysis=â(e)r:setLevel(3)r:start(e)Ü
Ø.stopanalysis=â(e)r:stop(e)Ü
Ü)û.ü['sllib.list_ext']=(â(...)•=• è{}â •.map(e,t)à n,o ã ù(e)É
e[n]=t(o,n)Ü
ë e
Ü
â •.filter(e,r)å n={}à o,t ã ù(e)É
ä r(t,o)í
ó.ò(n,t)Ü
Ü
e=n
ë e
Ü
â •.append(e,n)ó.ò(e,n)ë e
Ü
â •.appendList(e,...)à t,n ã ù({...})É
à t,n ã ù(n)É
ó.ò(e,n)Ü
Ü
ë e
Ü
â •.¥(...)å e={}à t,n ã ù({...})É
à t,n ã ù(n)É
ó.ò(e,n)Ü
Ü
ë e
Ü
â •.indexOf(e,n)à e,t ã ù(e)É
ä t==n í
ë e
Ü
Ü
ë-1
Ü
â •.∑(e,t)à n,o ã ù(e)É
ä o==t í
ó.∑(e,n)Ç
Ü
Ü
ë e
Ü
â •.Æ(t,o,e)e=e è#t
å n={}à e=o,e É
ó.ò(n,t[e])Ü
ë n
Ü
â •.cut(n,e)å n=•.Æ(1,e)å e=•.Æ(e+1)ë n,e
Ü
â •.˙(n,e)à t,n ã ù(n)É
ä n==e í
ë ì
Ü
Ü
ë á
Ü
â •.reverse(e)å n={}à t=#e,1,-1 É
ó.ò(n,e[t])Ü
ë n
Ü
â •.mirror(n)å e={}à t,n ã ù(n)É
e[n]=n
Ü
ë e
Ü
â •.merge(...)å e=•.¥(...)e=ó.„(e)ë ó.keys(e)Ü
â •.mergeex(n,...)å e=•.¥(...)e=•.project(e,n)ë ó.values(e)Ü
â •.project(n,t)å e={}à o,n ã ù(n)É
e[n[t]]=n
Ü
ë e
Ü
Ü)û.ü['sllib.coroutine_ext']=(â(...)å n={}å o={}å e=coroutine
â e.start(n,...)å n=e.create(n)e.‰(n,...)ë n
Ü
â e.lock()å t=e.running()ë â()•.∑(n,t)e.‰(t)Ü
Ü
â e.wait()å t=e.running()ó.ò(n,t)e.yield(t)ä o[t]í
o[t]=ç
ë ì
Ü
ë á
Ü
â e.stop(t)o[cc]=ì
•.∑(n,t)e.‰(t)Ü
â e.stopAll()à r,t ã ù(n)É
o[t]=ì
e.‰(t)Ü
n={}Ü
Ü)û.ü['sllib.set']=(â(...)ä rawget(ı,"set")í
â ®.intersection(e,t)å n=®.˜({})à e ã ¨(e)É
ä ®.—(t,e)í
®.ò(n,e)Ü
Ü
ë n
Ü
â ®.Î(n)å e={}à n ã ¨(n)É
ó.ò(e,n)Ü
ë e
Ü
â ®.ú(e)å e=®.Î(e)ó.ú(e)Ü
ë
Ü
å e={}®={}®.…=¨
â ®.˜(n)å e=Ã({},e)à t,n ã ù(n è{})É
®.ò(e,n)Ü
ë e
Ü
â ®.—(e,n)ë rawget(e,n)==ì
Ü
â ®.ò(n,e)√(n,e,ì)Ü
â ®.delete(n,e)√(n,e,ç)Ü
â ®.intersection(e,t)å n=®.˜()à e ã ®.…(e)É
ä ®.—(t,e)í
®.ò(n,e)Ü
Ü
ë n
Ü
â ®.Î(n)å e={}à n ã ®.…(n)É
ó.ò(e,n)Ü
ë e
Ü
â ®.ú(e)å e=®.Î(e)ó.ú(e)Ü
å â i(t,n)å e=®.˜()à n ã ®.…(t)É
®.ò(e,n)Ü
à n ã ®.…(n)É
®.ò(e,n)Ü
ë e
Ü
å â o(n,t)å e=®.˜()à n ã ®.…(n)É
ä é ®.—(t,n)í
®.ò(e,n)Ü
Ü
ë e
Ü
å â r(e,n)à e ã ®.…(e)É
ä é ®.—(n,e)í
ë á
Ü
Ü
ë ì
Ü
å â l(t,n)ë ®.subset(t,n)Å é ®.subset(n,t)Ü
e.__index=®
e.__add=i
e.__sub=o
e.__le=r
e.__lt=l
Ü)û.ü['sllib.time']=(â(...)§=§ è{}â §.§()ë £.§()Ü
â §.»()ë £.»()Ü
â §.∂()ä £.∂ í
ë £.∂()Ü
å e=ô"socket.core"ë(≤.⁄(e.gettime()*1e3))Ü
â §.sleep(e)e=e è 0
£.ß("ping -n "..(e+1)..Á)Ü
â §.getstr(e,n)e=e è'%c'n=n è £.§()ë £.Í(e,n)Ü
â §.getendofday(e)e=e è £.§()å e=£.Í('*t',e)å e=£.Í('*t',£.§({¸=e["year"],‡=e["month"],day=e["day"],hour=23,min=59,sec=59}))å e=£.§(e)ë e
Ü
â §.tohour(e)å t=≤.⁄(e/3600)å n=≤.⁄(≤.fmod(e,3600)/60)å e=≤.fmod(e,60)ë{hour=t,min=n,sec=e}Ü
â §.gettimestamp(e)å e=£.Í('*t',£.§({¸=e["year"],‡=e["month"],day=e["day"],hour=e["hour"]è 23,min=e["min"]è 59,sec=e["sec"]è 59}))å e=£.§(e)ë e
Ü
Ü)û.ü['sllib.timer']=(â(...)å t=ô"ctimer"™=™ è{}ä é t í
ë ™
Ü
å n={}â ™.after(o,e,r)å t=t.µ()å e={loop=á,’=1,§=o+t,€=r,cbk=e}ó.ò(n,e)™.ﬂ()Ü
â ™.repeats(r,i,o,e)o=o è 0
e=e è{}å t=t.µ()å t=e.runsoon Å t è r+t
å e={loop=ì,’=o,§=t,€=e.€,cbk=i,interval=r,Â=e.Â}ó.ò(n,e)™.ﬂ()Ü
â ™.cancel(e)à t,o ã ù(n)É
ä o.€==e í
ó.∑(n,t)Ç
Ü
Ü
Ü
â ™.ﬂ()ó.sort(n,â(n,e)ë n.§<e.§
Ü)Ü
â ™._doUpdate(e)å o=t.µ()å t=0
à i,e ã ù(n)É
ä e.§<o í
å r=e.loop
ä e.loop Å e.’>0 í
e.’=e.’-1
ä e.’==0 í
r=á
Ü
Ü
e.cbk(o)ä r í
e.§=e.interval+o
ó.ò(n,e)Ñ
ä e.Â í
e.Â(o)Ü
Ü
t=i
Ü
Ü
ä t>0 Å t<=#n í
n=•.Æ(n,t+1)Ü
Ü
â ™.startUpdate()t.startUpdate(™._doUpdate,1e3)Ü
â ™.stopUpdate()t.stopUpdate()Ü
â ™.waitUpdate()t.waitUpdate()Ü
â ™.∂()ë t.µ()Ü
â ™.§()ë ≤.floor(t.µ()/1e3+.5)Ü
â ™.timeinfo()ë t.getTime()Ü
ë ™ Ü)û.ü['sllib.logs']=(â(...)©=© è{}å s=á
å n=ç
å a=ì
å l=õ.º()å r={}å â e(e)å e=ñ.≠(e,"[\r\n\t]",÷)ä e==÷í
ë ì
Ü
ë á
Ü
å t=ì
å â c(e)ë ¿(e,t)Ü
å â i()ä n í
ë n
Ü
å e=£.Í("*t")å e=ñ.¢("%s_%s_%s.log",e.¸,e.‡,e.day)n=e
ë e
Ü
å â d(e)ä é a í
ë
Ü
å n=i()‹.ø(n,e,"a+")Ü
å â o(t,e)e=á
å e=£.Í("*t")å o=£.»()å n=t
ä s í
n=ñ.¢("[%s-%s-%s %02s:%02s:%02s %s]%s",e.¸,e.‡,e.day,e.hour,e.min,e.sec,o,t)Ü
d(n..'\n')Ü
â ©.writeInFile(e)a=e
Ü
â ©.showLogTime(e)s=e
Ü
â ©.setLogPath(e)n=e
Ü
â ©.clear()å e=i()ä é £.˙(e)í
ë
Ü
‹.ø(e,÷)Ü
â ©. (...)å n={...}å e=#n
å e={}à t,n ã ù(n)É
å n=c(n)ó.ò(e,n)Ü
o(ó.¥(e,ˇ))Ü
â ©.i(...)©. (...)Ü
â ©.w(...)õ.ª(14)©. (...)ä l í õ.∫()Ü
Ü
â ©.e(...)õ.ª(12)©. (...)å e=t
t=á
o(Ø.traceback(÷,2))t=e
ä l í õ.∫()Ü
Ü
â ©.f(e,...)o(ñ.¢(e,...))Ü
â ©.˝(e,...)e=e è"nil"å e=ñ.¢(e,...)å e=Ø.traceback(e,2)o(e)Ü
â ©.§(e)e=ö(e)r[e]=§.∂()Ü
â ©.timeEnd(e)e=ö(e)ä é r[e]í
ë
Ü
å n=§.∂()-r[e]ú(_F("%s:%d",e,n))Ü
ë ©
Ü)û.ü['sllib.class']=(â(...)å n={}å â o(e)e.__index=e
ë Ã({},e)Ü
â class(t,r)å e
ä r í
e=r:Ó(t)Ñ
e=n:Ó(t)Ü
e.˜=â(...)å n=o(e)n.__class=e
n:ctor(...)ë n
Ü
e.create=â(n,...)ë e.˜(...)Ü
ë e
Ü
â n:ctor(...)Ü
â n:dtor()Ü
â n:Ó(n)å e=o(°)e.__name=n
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
à e,n ã ¨(e)É
°[e]=n
Ü
Ü
Ü
â n:delegate(n,e)à t,e ã ù(e)É
°[e]=â(t,...)ë n[e](n,...)Ü
Ü
Ü
Ü)û.ü['sllib.profiler']=(â(...)å e={}â e:setLogFunc(e)°.À=e
Ü
â e:setLevel(e)°.¯=e
Ü
â e:start(e)e=e è"profile"°.À=ú
ä e=="trace"í
Ø.˚(bind(°.Ò,°),'c')Ñ
°.∏={}°.startTime=£.»()°.¯=3
Ø.˚(bind(°.·,°),'cr')Ü
Ü
â e:stop(e)e=e è"profile"Ø.˚()ä e=="trace"í
ë
Ü
°.stopTime=£.»()å n=°.stopTime-°.startTime
ä n<.001 í
°.À("total time less 0.001s")ë
Ü
å e=ó.values(°.∏)ó.sort(e,â(n,e)ë n.∞>e.∞
Ü)à t,e ã ù(e)É
å n=(e.∞/n)*100
ä n<1 í
Ç
Ü
å e=ñ.¢("time:%6.3f, percent:%.2f%%, count:%d, %s",e.∞,n,e.«,e.title)°.À(e)Ü
Ü
â e:Ò()å e=Ø.˛(°.¯,'nS')å e=ñ.¢("file:%s line:%d function:%s()",e.ﬁ,e.”,e.€ è÷)°.À(e)Ü
â e:getFuncTitle(e)å n=e.€ è'anonymous'å t=e.ﬁ è'C_FUNC'å e=e.” è 0
ë ñ.¢("file:%s line:%s function:%s",t,e,n)Ü
â e:ƒ(e)å n=°:getFuncTitle(e)å e=°.∏[n]ä é e í
e={title=n,«=0,∞=0,}°.∏[n]=e
Ü
ë e
Ü
â e:·(n)å t=â(e)å e=°:ƒ(e)e.¡=£.»()e.«=e.«+1
Ü
å o=â(e)å n=£.»()å e=°:ƒ(e)ä e.¡ Å e.¡>0 í
e.∞=e.∞+(n-e.¡)e.¡=0
Ü
Ü
å e=Ø.˛(°.¯,'nS')ä e í
ä n=="call"í
t(e)Ö n=="return"í
o(e)Ü
Ü
Ü
ë e
Ü)û.ü['sllib.cmd']=(â(...)Õ=Õ è{}√(ı,"cmd",Õ)Õ.showcmd=á
â Õ:setOutputCall(e,n)°.outputCall=e è ú
°.outputCallE=n è È
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
å e,n,t=£.ß(e)ä é e í
r(n.." cmd execute failed:"..Õ)Ü
Ö n==2 í
å e=‹.popen(e)å n=e:read("*a")t(n)e:˘()Ü
Ü
ë Õ
Ü)û.ü['sllib.jscompress']=(â(...)å o={}√(ı,"jscompress",o)â o:π(e,n)π("terser",e,n)π("javascript-obfuscator",e,n)Ü
â o:jsmin(e,n,t)ä e==n í
å o=e..".tmp"å r=_F(‘,e,o)Õ:run(r,t)£.∑(e)£.Ê(o,n)Ñ
å e=_F(‘,e,n)Õ:run(e,t)Ü
Ü
â o:terser(e,n,t)å e=_F('terser %s -c -m -o %s',e,n)Õ:run(e,t)Ü
â o:encode(o,e,i,r)å t=e
ä ñ.“(e,"%.js$")==ç í
t=e..".js"Ü
å n=_F('javascript-obfuscator %s --output %s',o,e)ä r==1 í
n=_F('javascript-obfuscator %s --output %s --compact true --control-flow-flattening false --dead-code-injection false --debug-protection false --disable-console-output false --identifier-names-generator mangled --rename-globals false  --self-defending false --string-array false --transform-object-keys false  --unicode-escape-sequence false',o,t)Ö r==2 í
n=_F('javascript-obfuscator %s --output %s --compact true --identifier-names-generator hexadecimal --string-array true --string-array-threshold 0.5 --string-array-encoding base64 --disable-console-output false --transform-object-keys true --self-defending false --control-flow-flattening false --unicode-escape-sequence false',o,t)Ö r==3 í
n=_F('javascript-obfuscator %s --output %s --compact true --control-flow-flattening true --dead-code-injection true --debug-protection true --disable-console-output false --self-defending true --string-array true --string-array-encoding base64 --string-array-threshold 1 --unicode-escape-sequence true',o,t)Ü
n=n.." >nul 2>&1"Õ:run(n,i)ä e~=t í
£.∑(e)£.Ê(t,e)Ü
Ü
ë o
Ü)√(ı,"SLLIB_VERSION","1.1.3")ô"sllib.console"ô"sllib.global"ô"sllib.lang"ô"sllib.io_ext"ô"sllib.os_ext"ô"sllib.table_ext"ô"sllib.string_ext"ô"sllib.list_ext"ô"sllib.set"ô"sllib.math_ext"ô"sllib.debug_ext"ô"sllib.coroutine_ext"ô"sllib.time"ô"sllib.timer"ô"sllib.logs"ô"sllib.class"ô"sllib.cmd"ô"sllib.jscompress"enum=ó.„
log=log è ©.i
logw=logw è ©.w
loge=loge è ©.e
logf=logf è ©.f
˝=˝ è ©.˝
clearLog=clearLog è ©.clear
writeLogInFile=©.writeInFile
Ë=Ë è ó.Ë
Ÿ=Ÿ è load
√(ı,"bind",â(e,...)å n={...}assert(e,"bind params error")ë â(...)å n=•.¥(n,{...})ë e(Ë(n))Ü
Ü)â ¿(e)ä ¶(e)==◊í
ë›..e..›Ö ¶(e)==´í
ë ó.ö(e)Ö ¶(e)==±í
ë †(e)Ñ
å e=ö(e)èÔë e
Ü
Ü
]===], '@sllib_base.lua'))()