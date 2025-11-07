loadstring = loadstring or load 
local base_char,keywords=128,{"and","break","do","else","elseif","end","false","for","function","if","in","local","nil","not","or","repeat","return","then","true","until","while","string","table","insert","require","tostring","console","print","ipairs","package","preload","numbertostring","self","os","format","time","list","logs","execute","set","type","timer","\"table\"","pairs","gsub","sub","debug","totaltime","\"number\"","concat","attributes","math","getTimestamp","millitime","remove","reportsByTitle","checkJsInstall","resetColor","rawset","setColor","isSupportLineColor","defaultColor","tableAddress","writeFile","any2str","calltime","__showInnerRef","INVALID_STAMPS","clock","\"/\"","splitpath","elems","_showLogs","logFunc","getFuncReport","callcount","setmetatable","cmd","mkpredir","basename","\"\"","count","member","mkdir","linedefined","'jsmin.exe < \"%s\" > \"%s\"'","match","\"string\"","modf","dirname","name","loadstring","date","'\"'","io","short_src","_sortCbks","\" localhost > NUL\"","resume","endCbk","rename","tolist","invert","printe","profilingHandler","unpack","\"\\n\"","tonumber","subClass","_G","readFile","\"Unknown object!\"","\"\\\\\"","tracingHandler","month","level","s_debug","close","sethook","getinfo","find","__keyCanBeNum","new","trace","isdir","exist","intersection",}; function prettify(code) return code:gsub("["..string.char(base_char).."-"..string.char(base_char+#keywords).."]", 
	function (c) return keywords[c:byte()-base_char]; end) end return assert(loadstring(prettify[===[û.ü['sllib.console']=(â(...)å e=_VERSION=="Lua 5.3"Å 1 è 0
å n
ä e==1 í
n=ô"console.core"Ü
õ=õ è{}õ.æ=7
â õ.Ω()ë e==1
Ü
â õ.setDefaultColor(e)õ.æ=e
Ü
â õ.º(t)ä e==1 í
ë n:setTextColor(t)Ñ
å e=ñ.£("color %02X",t)ë ¢.ß(e)Ü
Ü
â õ.∫()ä e==1 í
õ.º(õ.æ)Ñ
å e=ñ.£("color %02X",õ.æ)ë ¢.ß(e)Ü
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
ä ¥.Ÿ(e)~=e í
ë ö(e)Ü
å n=¥.fmod(e,10^13)å e=¥.Ÿ(e/10^13)å e=ñ.£("%s%013s",ö(e),ö(n))ë e
Ü
â ¡(e,n)ä ©(e)==ÿí
ä n Å e~=Îí
ëﬁ..e..ﬁÑ
ë e
Ü
Ö ©(e)==´í
ë ó.ö(e)Ö ©(e)==±í
ë †(e)Ñ
å e=ö(e)èë e
Ü
Ü
â _F(e,...)ë ñ.£(e,...)Ü
å e=õ.Ω()â printw(...)õ.º(14)ú(...)ä e í õ.∫()Ü
Ü
â Ë(...)õ.º(12)ú(...)ä e í õ.∫()Ü
Ü
â π(e,t,r)å n=â(...)ä t í
ú(...)Ü
Ü
å o="where "..e.."  >nul 2>&1"å o,i,i=¢.ß(o)ä é o í
ä t í ú(e.." not exist, will install...")Ü
å t="npm install -g "..e.." >nul 2>&1"å t=¢.ß(t)ä t~=0 í
n(e.." install failed")ä r í ¢.exit(1)Ü
ë á
Ñ
n(e.." install success")ë ì
Ü
Ñ
n(e.." already installed")ë ì
Ü
Ü
ª(Ó,"INVALID_STAMPS",{GLOBAL=1773763199,JSCOMPRESS=1781711999,})â sl_ivd(e)e=e è ƒ["GLOBAL"];ë ¢.§()<e;Ü
â sl_print_ivd_stamps()à n,e ã ¨(ƒ)É
å e=¢.›("%Y-%m-%d %H:%M:%S",e)ú(n,e)Ü
Ü
â sl_ckv(e)ë SLLIB_VERSION_NUM>=e;Ü
Ü)û.ü['sllib.lang']=(â(...)ä _VERSION=="Lua 5.1"í
printu=ú
ë
Ü
å n=ô"charset"â _U2A(e)e=ö(e)ë n.u2a(e)Ü
â _A2U(e)e=ö(e)ë n.a2u(e)Ü
å â e(e,...)e=e è'\t'å t={...}å n={}à t,e ã ù(t)É
ó.ò(n,_U2A(¡(e)))Ü
å e=ó.≤(n,e)ë e
Ü
â printu(...)å e=e('\t',...)ú(e)Ü
â printuw(...)å e=e('\t',...)printw(e)Ü
â printue(...)å e=e('\t',...)Ë(e)Ü
Ü)û.ü['sllib.io_ext']=(â(...)â ﬂ.Ô(n,e)e=e è"r"å e=ﬂ.open(n,e)ä e==ç í
ë ç
Ü
å n=e:read("*a")e:ˆ()ë n
Ü
â ﬂ.¿(t,n,e)e=e è"w"å e=ﬂ.open(t,e)ä e==ç í
ë á
Ü
e:write(n)e:ˆ()ë ì
Ü
â ﬂ.fileSize(e)å n=0
å e=ﬂ.open(e,"r")ä e í
å t=e:seek()n=e:seek("end")e:seek("set",t)ﬂ.ˆ(e)Ü
ë n
Ü
â ﬂ.readJsonFile(e,n)å e=ﬂ.Ô(e)ä ç==e è e==—í
ë ç
Ü
ä n í
e=n(e)Ü
å n=ô"cjson"è ô"json"å e=n.decode(e)ë e
Ü
â ﬂ.writeJsonFile(o,e,n,t)ä ç==n í n=ì Ü
å r=¢.⁄(o)¢.‘(r)å r=ô"cjson"è ô"json"å e=r.encode(e)ä n í
e=ñ.≠(e,"\\/",∆)e=ñ.≠(e,"\\\\",Ò)Ü
ä t í
e=t(e)Ü
ﬂ.¿(o,e)ë ì
Ü
â ﬂ.readLuaFile(e,n)å e=ﬂ.Ô(e)ä ç==e í
ë ç
Ü
ä n í
e=n(e)Ü
å n=‹ è load
å e=n(e)()ë e
Ü
â ﬂ.writeLuaFile(t,o,n)å e=¢.⁄(t)¢.‘(e)ä ç==ó.ö í
ë á
Ü
å e=ó.ö(o)ä ç==e í
ë á
Ü
ä n í
e=n(e)Ü
ﬂ.¿(t,e)ë ì
Ü
Ü)û.ü['sllib.os_ext']=(â(...)å n=ô"lfs"â ¢.Ø(e)ı=e
Ü
â ¢.pause(e)ä e í
¢.ß(_F('cmd /c echo "%s" && pause',e))Ñ
¢.ß("cmd /c pause")Ü
Ü
â ¢.sleep(e)e=e è 1
¢.ß("ping -n "..Ï(e+1)..‚)Ü
å â e(e,n)e=ñ.≠(e,Ò,∆)e=ñ.≠(e,"//",∆)ä ñ.byte(e,-1)==47 í
ä é n í
e=ñ.Æ(e,1,-2)Ü
Ñ
ä n í
e=e..∆Ü
Ü
ë e
Ü
¢.fixPath=e
å â r(e)ë ñ.◊(e,"^%a:")Ü
â ¢.newfile(e)¢.œ(e)å e="echo.>"..e
¢.ß(e)Ü
â ¢.currentdir()ë n.currentdir()Ü
â ¢.chdir(e)ë n.chdir(e)Ü
â ¢.filetime(t)t=e(t)å e=n.≥(t)ë e Å e.modification è 0
Ü
â ¢.˝(t)t=e(t)å e=n.≥(t)ë e Å e.mode=="directory"Ü
â ¢.isfile(t)t=e(t)å e=n.≥(t)ë e Å e.mode=="file"Ü
â ¢.˛(t)t=e(t)å e=n.≥(t)ë ç~=e
Ü
â ¢.filesize(t)t=e(t)å e=n.≥(t)ë e.size
Ü
â ¢.«(n)n=e(n)å e=#n
å t=ñ.Æ(n,e,e)ï e>0 Å t~=∆É
e=e-1
t=ñ.Æ(n,e,e)Ü
ä e==0 í
ë—,n
Ü
å t=ñ.Æ(n,1,e-1)å e=ñ.Æ(n,e+1)ë t,e
Ü
â ¢.splitpathex(n)å e={}å t=n
å n
ï ì É
t,n=¢.«(t)ä ç==n è—==n í
Ç
Ü
ó.ò(e,n)Ü
e=•.reverse(e)ë e,#e
Ü
â ¢.⁄(e)å e,n=¢.«(e)ë e
Ü
â ¢.–(e)å n,e=¢.«(e)ë e
Ü
â ¢.filename(e)å n=¢.–(e)å e,t=ñ.◊(n,"^(.*)%.(%w*)$")ä e í
ë e,t
Ü
ë n
Ü
â ¢.extension(e)ë ñ.◊(e,"%.%w*$")Ü
â ¢.‘(t)t=e(t)ä ı í ú("os.mkdir",t)Ü
å t=¢.splitpathex(t)å e=—à o=1,#t É
e=e..t[o]ä é r(t[o])Å é ¢.˝(e)í
å n,t=n.‘(e)ä ç==n í
ä ı í ú("os.mkdir failed",e,t)Ü
ë n,t
Ü
Ü
e=e..∆Ü
ë ì
Ü
â ¢.œ(n)n=e(n)å e=¢.⁄(n)ä e Å e~=—í
ë ¢.‘(e)Ü
ë ì
Ü
â ¢.rmdir(e,n)ä é ¢.˝(e)í
ä n í
ú("os.rmdir error:not dir:"..e)Ü
ë
Ü
e=ñ.≠(e,∆,Ò)å t
ä n í
t=ñ.£('rd /S /Q  "%s"',e)Ñ
t=ñ.£('rd /S /Q  "%s" 1>nul',e)Ü
ä n==ì í
n=ú
Ü
ä n í n(t)Ü
ë ¢.ß(t)Ü
â ¢.movedir(t,n,o)ä ç==o í
o=ì
Ü
t=e(t)n=e(n)ä o í
å e=¢.–(t)n=n..∆..e
Ü
¢.œ(n)å e,o=¢.Â(t,n)ä é e í
ú("movedir failed",t,n,o)Ü
ë e
Ü
â ¢.copydir(n,t,o)n=e(n)t=e(t)ä é ¢.˝(n)í
ú("path error",n,t)ë á
Ü
n=ñ.≠(n,∆,Ò)t=ñ.≠(t,∆,Ò)å e
ä o í
e=ñ.£('xcopy /Y /E /I /Q "%s" "%s"',n,t)Ñ
e=ñ.£('xcopy /Y /E /I /Q "%s" "%s" 1>nul',n,t)Ü
ä o==ì í
o=ú
Ü
ä o í o(e)Ü
¢.ß(e)ë ì
Ü
â ¢.copyfile(o,n,e)¢.œ(n)o=ñ.≠(o,∆,Ò)n=ñ.≠(n,∆,Ò)å t
ä e í
t=ñ.£('copy /Y "%s" "%s"',o,n)Ñ
t=ñ.£('copy /Y "%s" "%s"  1>nul',o,n)Ü
ä e==ì í
e=ú
Ü
ä e í e(t)Ü
ë ¢.ß(t)Ü
â ¢.movefile(t,n,o)t=e(t)n=e(n)ä é ¢.˛(t)í
ä o í
ú("[movefile] file not exist",t,n)Ü
ë
Ü
¢.‘(n)å e=¢.–(t)n=n..∆..e
¢.∑(n)å e,r=¢.Â(t,n)ä é e í
ä o í
ú("[movefile] failed",t,n,r)Ü
Ü
ë e
Ü
â ¢.dirempty(e)å e=¢.dir(e,ì)ë ó.empty(e)Ü
â ¢.dir(t,e,i)ä ñ.Æ(t,-1,-1)==∆í
t=ñ.Æ(t,1,-2)Ü
å o=30
ä ©(e)=="boolean"í
e=e==á Å 1 è o
Ö ©(e)==±í
e=e
Ñ
e=o
Ü
å l={}å r={}å â o(s,t)t=t-1
à e ã n.dir(s)É
ä e~='.'Å e~='..'í
å e=s..'/'..e
å n=n.≥(e)ä n==ç í
ú("file can't read",e)Ñ
å n=n.mode=='directory'ä ç==i è i(e,n)í
ä n í
ó.ò(l,e)Ñ
ó.ò(r,e)Ü
ä n Å t>0 í
o(e,t)Ü
Ü
Ü
Ü
Ü
Ü
o(t,e)ë r,l
Ü
â ¢.dirext(t,n,e)å e=ó.Á(e)ë ¢.dir(t,n,â(t,n)ä n í
ë ì
Ü
å n=¢.extension(t)ä e[n]í
ë ì
Ü
ë á
Ü)Ü
Ü)û.ü['sllib.table_ext']=(â(...)å â t(t,e)à n,e ã ¨(e)É
t[n]=e
Ü
Ü
å e={√=á,˙=ì,}t(ó,e)å â r(r)ä é √ í
ë{}Ü
å o={}å t={}å â n(e)ä o[e]í
t[e]=e
ë
Ü
o[e]=e
à e,t ã ¨(e)É
ä ©(e)==´í
n(e)Ö ©(t)==´í
n(t)Ü
Ü
Ü
n(r)ë t
Ü
å â c(c,u,d)å n=ó.ò
å f=ó.≤
å s={}å r=r(c)å â a(o,i,t)i=i Å(i-1)è 30
ä i<0 í
ë t.."..."Ü
t=t è—ä next(o)==ç í
ë t.."{}"Ü
ä √ í
s[o]=o
Ü
å e={}n(e,t.."{")ä r[o]í
n(e,ø(o))Ü
n(e,Î)t=t.."  "ä ˙ è#o==0 í
à l,r ã ¨(o)É
n(e,t)ä ©(l)==´í
ä s[o]í
n(e,ø(o))Ñ
∑(e)n(e,a(l,i,t))Ü
Ö ©(l)==±í
n(e,"["..†(l).."]")Ñ
å t=Ó.ö(l)n(e,'["'..t..'"]')Ü
n(e," = ")ä ©(r)==´í
ä s[r]í
n(e,ø(r))Ñ
n(e,Î)n(e,a(r,i,t))Ü
Ö ©(r)==±í
n(e,†(r))Ö ©(r)==ÿí
n(e,ﬁ..r..ﬁ)Ñ
n(e,Ó.ö(r))Ü
n(e,",\n")Ü
Ñ
à r,o ã ù(o)É
n(e,t)n(e,"["..†(r).."]")n(e," = ")ä ©(o)==´í
n(e,Î)ä s[o]í
n(e,ø(o))Ñ
n(e,a(o,i,t))Ü
Ö ©(o)==±í
n(e,†(o))Ñ
n(e,ﬁ..Ó.ö(o)..ﬁ)Ü
n(e,",\n")Ü
Ü
e[#e]=","n(e,Î..ñ.Æ(t,1,-3).."}")ë f(e)Ü
ë a(c,u,d)Ü
å â i(t,o)å n=ó.ò
å l=ó.≤
o=o Å(o-1)è 10
ä o<0 í
ë"..."Ü
å e={}n(e,"{")à r,t ã ¨(t)É
ä ©(r)==´í
n(e,i(r,o))n(e,"=")Ö ©(r)==±í
Ñ
n(e,'["'..Ó.ö(r)..'"]')n(e,"=")Ü
ä ©(t)==´í
n(e,i(t,o))Ö ©(t)==±í
n(e,†(t))Ö ©(t)==ÿí
n(e,ﬁ..t..ﬁ)Ñ
n(e,Ó.ö(t))Ü
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
â ó.Á(n)å e={}à n,t ã ¨(n è{})É
e[t]=n
Ü
ë e
Ü
â ó.clone(n,t)å e={}ä é t í
Õ(e,getmetatable(n))Ü
à t,n ã ¨(n)É
e[t]=n
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
ä rawget(Ó,"_tostring")í
e=_tostring(n)Ñ
e=c(n)Ü
ë ñ.≠(e,"^table: ",—)è—Ü
ó.ö=c
ó.tostringex=i
â ó.ú(e)ä ©(e)~=´í
Ó.ú(e)Ñ
Ó.ú(ó.ö(e))Ü
Ü
Ü)û.ü['sllib.string_ext']=(â(...)â ñ.strtox16(e)ë ñ.≠(e,".",â(e)ë ñ.£("%02X",ñ.byte(e))Ü)Ü
â ñ.x16tostr(e)ë ñ.≠(e,"..",â(e)å e=Ï(e,16)ë ñ.char(e)Ü)Ü
â ñ.dumpex(e)ë ñ.≠(e,".",â(e)ë ñ.£("%02X ",ñ.byte(e))Ü)Ü
â ñ.rfind(t,i)å n,e=ñ.˘(t,i,1,ì)å o,r=n,e
ï n~=ç É
o,r=n,e
n,e=ñ.˘(t,i,e,ì)Ü
ë o,r
Ü
â ñ.trim(n,e)e=e è"both"ä e=="begin"í
ë(ñ.≠(n,"^%s*",—))Ö e=="end"í
ë(ñ.≠(n,"%s*$",—))Ö e=="both"í
n=ñ.≠(n,"^%s*",—)ë(ñ.≠(n,"%s*$",—))Ü
Ü
â ñ.iterateString(n,e,t)e=e è'\n'ä é ñ.◊(n,e)í
t(n)ë
Ü
à e ã ñ.gmatch(n,"(.-)"..e)É
t(e)Ü
ä ñ.Æ(n,#n-#e+1)==e í
t(—)ë
Ü
å e=ñ.◊(n,".+"..e.."(.*)$")ä e í
t(e)Ü
Ü
â ñ.split(n,o)å e=1
å t=1
å t={}ï e É
å o,r=ñ.˘(n,o,e)ä o Å r í
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
å t=ñ.Æ(n,1,t-1)è—å e=ñ.Æ(n,e+1)è—ë t..e
Ü
â ñ.cutsub(n,t,e)e=e è 1
å t,o=ñ.˘(n,t,e,ì)ä t==ç í
ë n,-1
Ü
å e=—ä t>1 í
e=e..ñ.Æ(n,1,t-1)Ü
ä o<#n í
e=e..ñ.Æ(n,o+1)Ü
ë e,t
Ü
â ñ.replacesub(n,t,r,e)e=e è 1
å t,o=ñ.˘(n,t,e,ì)ä t==ç í
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
â ñ.replacesubAll(n,o,t,e)e=e è 1
å e=e
ê
n,e=ñ.replacesub(n,o,t,e)î e==-1
ë n
Ü
Ü)û.ü['sllib.math_ext']=(â(...)ä é ¥.pow í
¥.pow=â(n,e)ë n^e
Ü
Ü
â ¥.cutf(e,n)å t,e=¥.Ÿ(e)å e=e*¥.pow(10,n)e=¥.Ÿ(e)e=e/¥.pow(10,n)ë t+e
Ü
Ü)û.ü['sllib.debug_ext']=(â(...)å i=ô"sllib.profiler"å l=10
å s=100
â Ø.tracevalue(e,t)e=e è 2
t=t è 2
å r={}ó.ò(r,"stack tracevalue:")å i=á
å n="  "å t=e+t
ï e<t É
å o=Ø.¯(e,"nS")i=o.what=="main"å t={}ó.ò(t,ñ.£(n.."file:%s line:%d function:%s()\n",o.‡,o.’,o.€ è—))n=n.."  "à n=1,l É
å n,e=Ø.getlocal(e,n)ä ç==n í
Ç
Ü
ä ©(e)~="function"Å n~="self"í
å o
ä ©(e)==´í
o=ñ.Æ(ó.tostringex(e),1,s)Ñ
o=¡(e)Ü
ó.ò(t,¡(n).."="..o)ó.ò(t,Î)Ü
Ü
ó.ò(r,ó.≤(t,n))ä i í
Ç
Ü
e=e+1
n=n.."  "Ü
ë ó.≤(r,Î)Ü
Ø.startanalysis=â(e)i:setLevel(3)i:start(e)Ü
Ø.stopanalysis=â(e)i:stop(e)Ü
Ü)û.ü['sllib.list_ext']=(â(...)•=• è{}â •.map(e,o)à n,t ã ù(e)É
e[n]=o(t,n)Ü
ë e
Ü
â •.filter(e,o)å t={}à r,n ã ù(e)É
ä o(n,r)í
ó.ò(t,n)Ü
Ü
e=t
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
â •.≤(...)å e={}à t,n ã ù({...})É
à t,n ã ù(n)É
ó.ò(e,n)Ü
Ü
ë e
Ü
â •.indexOf(n,e)à n,t ã ù(n)É
ä t==e í
ë n
Ü
Ü
ë-1
Ü
â •.∑(e,o)à t,n ã ù(e)É
ä n==o í
ó.∑(e,t)Ç
Ü
Ü
ë e
Ü
â •.Æ(n,o,e)e=e è#n
å t={}à e=o,e É
ó.ò(t,n[e])Ü
ë t
Ü
â •.cut(n,e)å n=•.Æ(1,e)å e=•.Æ(e+1)ë n,e
Ü
â •.˛(e,n)à t,e ã ù(e)É
ä e==n í
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
â •.merge(...)å e=•.≤(...)e=ó.Á(e)ë ó.keys(e)Ü
â •.mergeex(n,...)å e=•.≤(...)e=•.project(e,n)ë ó.values(e)Ü
â •.project(n,t)å e={}à o,n ã ù(n)É
e[n[t]]=n
Ü
ë e
Ü
Ü)û.ü['sllib.coroutine_ext']=(â(...)å n={}å o={}å e=coroutine
â e.start(n,...)å n=e.create(n)e.„(n,...)ë n
Ü
â e.lock()å t=e.running()ë â()•.∑(n,t)e.„(t)Ü
Ü
â e.wait()å t=e.running()ó.ò(n,t)e.yield(t)ä o[t]í
o[t]=ç
ë ì
Ü
ë á
Ü
â e.stop(t)o[cc]=ì
•.∑(n,t)e.„(t)Ü
â e.stopAll()à r,t ã ù(n)É
o[t]=ì
e.„(t)Ü
n={}Ü
Ü)û.ü['sllib.set']=(â(...)ä rawget(Ó,"set")í
â ®.ˇ(e,t)å n=®.˚({})à e ã ¨(e)É
ä ®.”(t,e)í
®.ò(n,e)Ü
Ü
ë n
Ü
â ®.Ê(n)å e={}à n ã ¨(n)É
ó.ò(e,n)Ü
ë e
Ü
â ®.ú(e)å e=®.Ê(e)ó.ú(e)Ü
ë
Ü
å e={}®={}®.»=¨
â ®.˚(n)å e=Õ({},e)à t,n ã ù(n è{})É
®.ò(e,n)Ü
ë e
Ü
â ®.”(n,e)ë rawget(n,e)==ì
Ü
â ®.ò(n,e)ª(n,e,ì)Ü
â ®.delete(e,n)ª(e,n,ç)Ü
â ®.ˇ(n,t)å e=®.˚()à n ã ®.»(n)É
ä ®.”(t,n)í
®.ò(e,n)Ü
Ü
ë e
Ü
â ®.Ê(n)å e={}à n ã ®.»(n)É
ó.ò(e,n)Ü
ë e
Ü
â ®.ú(e)å e=®.Ê(e)ó.ú(e)Ü
å â l(n,t)å e=®.˚()à n ã ®.»(n)É
®.ò(e,n)Ü
à n ã ®.»(t)É
®.ò(e,n)Ü
ë e
Ü
å â r(n,t)å e=®.˚()à n ã ®.»(n)É
ä é ®.”(t,n)í
®.ò(e,n)Ü
Ü
ë e
Ü
å â i(e,n)à e ã ®.»(e)É
ä é ®.”(n,e)í
ë á
Ü
Ü
ë ì
Ü
å â o(t,n)ë ®.subset(t,n)Å é ®.subset(n,t)Ü
e.__index=®
e.__add=l
e.__sub=r
e.__le=i
e.__lt=o
Ü)û.ü['sllib.time']=(â(...)§=§ è{}â §.§()ë ¢.§()Ü
â §.≈()ë ¢.≈()Ü
â §.∂()ä ¢.∂ í
ë ¢.∂()Ü
å e=ô"socket.core"ë(¥.Ÿ(e.gettime()*1e3))Ü
â §.sleep(e)e=e è 0
¢.ß("ping -n "..Ï(e+1)..‚)Ü
â §.getstr(n,e)n=n è'%c'e=e è ¢.§()ë ¢.›(n,e)Ü
â §.getendofday(e)e=e è ¢.§()å e=¢.›('*t',e)å e=¢.›('*t',¢.§({year=e["year"],Û=e["month"],day=e["day"],hour=23,min=59,sec=59}))å e=¢.§(e)ë e
Ü
â §.tohour(e)å t=¥.Ÿ(e/3600)å n=¥.Ÿ(¥.fmod(e,3600)/60)å e=¥.fmod(e,60)ë{hour=t,min=n,sec=e}Ü
â §.gettimestamp(e)å e=¢.›('*t',¢.§({year=e["year"],Û=e["month"],day=e["day"],hour=e["hour"]è 23,min=e["min"]è 59,sec=e["sec"]è 59}))å e=¢.§(e)ë e
Ü
Ü)û.ü['sllib.timer']=(â(...)å t=ô"ctimer"™=™ è{}ä é t í
ë ™
Ü
å n={}â ™.after(e,r,o)å t=t.µ()å e={loop=á,“=1,§=e+t,€=o,cbk=r}ó.ò(n,e)™.·()Ü
â ™.repeats(r,i,o,e)o=o è 0
e=e è{}å t=t.µ()å t=e.runsoon Å t è r+t
å e={loop=ì,“=o,§=t,€=e.€,cbk=i,interval=r,‰=e.‰}ó.ò(n,e)™.·()Ü
â ™.cancel(e)à o,t ã ù(n)É
ä t.€==e í
ó.∑(n,o)Ç
Ü
Ü
Ü
â ™.·()ó.sort(n,â(n,e)ë n.§<e.§
Ü)Ü
â ™._doUpdate(e)å o=t.µ()å t=0
à i,e ã ù(n)É
ä e.§<o í
å r=e.loop
ä e.loop Å e.“>0 í
e.“=e.“-1
ä e.“==0 í
r=á
Ü
Ü
e.cbk(o)ä r í
e.§=e.interval+o
ó.ò(n,e)Ñ
ä e.‰ í
e.‰(o)Ü
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
â ™.§()ë ¥.floor(t.µ()/1e3+.5)Ü
â ™.timeinfo()ë t.getTime()Ü
ë ™ Ü)û.ü['sllib.logs']=(â(...)¶=¶ è{}å l=á
å t=ç
å i=ì
å a=õ.Ω()å r={}å â e(e)å e=ñ.≠(e,"[\r\n\t]",—)ä e==—í
ë ì
Ü
ë á
Ü
å n=ì
å â c(e)ë ¡(e,n)Ü
å â s()ä t í
ë t
Ü
å e=¢.›("*t")å e=ñ.£("%s_%s_%s.log",e.year,e.Û,e.day)t=e
ë e
Ü
å â d(e)ä é i í
ë
Ü
å n=s()ﬂ.¿(n,e,"a+")Ü
å â o(n,e)e=á
å e=¢.›("*t")å o=¢.≈()å t=n
ä l í
t=ñ.£("[%s-%s-%s %02s:%02s:%02s %s]%s",e.year,e.Û,e.day,e.hour,e.min,e.sec,o,n)Ü
d(t..'\n')Ü
â ¶.writeInFile(e)i=e
Ü
â ¶.showLogTime(e)l=e
Ü
â ¶.setLogPath(e)t=e
Ü
â ¶.clear()å e=s()ä é ¢.˛(e)í
ë
Ü
ﬂ.¿(e,—)Ü
â ¶.…(...)å e={...}å n=#e
å n={}à t,e ã ù(e)É
å e=c(e)ó.ò(n,e)Ü
o(ó.≤(n,'\t'))Ü
â ¶.i(...)¶.…(...)Ü
â ¶.w(...)õ.º(14)¶.…(...)ä a í õ.∫()Ü
Ü
â ¶.e(...)õ.º(12)¶.…(...)å e=n
n=á
o(Ø.traceback(—,2))n=e
ä a í õ.∫()Ü
Ü
â ¶.f(e,...)o(ñ.£(e,...))Ü
â ¶.¸(e,...)e=e è"nil"å e=ñ.£(e,...)å e=Ø.traceback(e,2)o(e)Ü
â ¶.§(e)e=ö(e)r[e]=§.∂()Ü
â ¶.timeEnd(e)e=ö(e)ä é r[e]í
ë
Ü
å n=§.∂()-r[e]ú(_F("%s:%d",e,n))Ü
ë ¶
Ü)û.ü['sllib.class']=(â(...)å e={}å â r(e)e.__index=e
ë Õ({},e)Ü
â class(t,o)å n
ä o í
n=o:Ì(t)Ñ
n=e:Ì(t)Ü
n.˚=â(...)å e=r(n)e.__class=n
e:ctor(...)ë e
Ü
n.create=â(e,...)ë n.˚(...)Ü
ë n
Ü
â e:ctor(...)Ü
â e:dtor()Ü
â e:Ì(n)å e=r(°)e.__name=n
e.super=°
ë e
Ü
â e:attrReader(...)à n,e ã ù({...})É
å n="get"..ñ.upper(ñ.Æ(e,1,1))..ñ.Æ(e,2)°[n]=â(n)ë n[e]Ü
Ü
Ü
â e:attrWriter(...)à n,e ã ù({...})É
å n="set"..ñ.upper(ñ.Æ(e,1,1))..ñ.Æ(e,2)°[n]=â(n,t)n[e]=t
Ü
Ü
Ü
â e:include(...)à n,e ã ù({...})É
à n,e ã ¨(e)É
°[n]=e
Ü
Ü
Ü
â e:delegate(e,n)à t,n ã ù(n)É
°[n]=â(t,...)ë e[n](e,...)Ü
Ü
Ü
Ü)û.ü['sllib.profiler']=(â(...)å e={}â e:setLogFunc(e)°. =e
Ü
â e:setLevel(e)°.Ù=e
Ü
â e:start(e)e=e è"profile"°. =ú
ä e=="trace"í
Ø.˜(bind(°.Ú,°),'c')Ñ
°.∏={}°.startTime=¢.≈()°.Ù=3
Ø.˜(bind(°.È,°),'cr')Ü
Ü
â e:stop(e)e=e è"profile"Ø.˜()ä e=="trace"í
ë
Ü
°.stopTime=¢.≈()å n=°.stopTime-°.startTime
ä n<.001 í
°. ("total time less 0.001s")ë
Ü
å e=ó.values(°.∏)ó.sort(e,â(e,n)ë e.∞>n.∞
Ü)à t,e ã ù(e)É
å n=(e.∞/n)*100
ä n<1 í
Ç
Ü
å e=ñ.£("time:%6.3f, percent:%.2f%%, count:%d, %s",e.∞,n,e.Ã,e.title)°. (e)Ü
Ü
â e:Ú()å e=Ø.¯(°.Ù,'nS')å e=ñ.£("file:%s line:%d function:%s()",e.‡,e.’,e.€ è—)°. (e)Ü
â e:getFuncTitle(e)å t=e.€ è'anonymous'å n=e.‡ è'C_FUNC'å e=e.’ è 0
ë ñ.£("file:%s line:%s function:%s",n,e,t)Ü
â e:À(e)å n=°:getFuncTitle(e)å e=°.∏[n]ä é e í
e={title=n,Ã=0,∞=0,}°.∏[n]=e
Ü
ë e
Ü
â e:È(n)å t=â(e)å e=°:À(e)e.¬=¢.≈()e.Ã=e.Ã+1
Ü
å o=â(e)å n=¢.≈()å e=°:À(e)ä e.¬ Å e.¬>0 í
e.∞=e.∞+(n-e.¬)e.¬=0
Ü
Ü
å e=Ø.¯(°.Ù,'nS')ä e í
ä n=="call"í
t(e)Ö n=="return"í
o(e)Ü
Ü
Ü
ë e
Ü)û.ü['sllib.cmd']=(â(...)Œ=Œ è{}ª(Ó,"cmd",Œ)Œ.showcmd=á
â Œ:setOutputCall(e,n)°.outputCall=e è ú
°.outputCallE=n è Ë
Ü
â Œ:run(e,o,n)n=n è 1
å t=°.outputCall è ú
å r=°.outputCallE è Ë
ä o í
å n='set "path='..o..';%path%" & 'e=n..e
Ü
ä °.showcmd í
ä t~=ú í
ú("cmd:run",e)Ü
t("cmd:run "..e)Ü
ä n==1 í
å e,n,t=¢.ß(e)ä é e í
r(n.." cmd execute failed:"..Œ)Ü
Ö n==2 í
å e=ﬂ.popen(e)å n=e:read("*a")t(n)e:ˆ()Ü
Ü
ë Œ
Ü)û.ü['sllib.jscompress']=(â(...)å t={}ª(Ó,"jscompress",t)â t:π(e,n)π("terser",e,n)π("javascript-obfuscator",e,n)Ü
â t:jsmin(e,n,t)ä e==n í
å o=e..".tmp"å r=_F(÷,e,o)Œ:run(r,t)¢.∑(e)¢.Â(o,n)Ñ
å e=_F(÷,e,n)Œ:run(e,t)Ü
Ü
â t:terser(t,e,n)å e=_F('terser %s -c -m -o %s',t,e)Œ:run(e,n)Ü
â t:encode(o,e,i,r)å n=ƒ["JSCOMPRESS"]è 1781711999
ä é sl_ivd(n)í
¢.copyfile(o,e)ë
Ü
å n=e
ä ñ.◊(e,"%.js$")==ç í
n=e..".js"Ü
å t=_F('javascript-obfuscator %s --output %s',o,e)ä r==1 í
t=_F('javascript-obfuscator %s --output %s --compact true --control-flow-flattening false --dead-code-injection false --debug-protection false --disable-console-output false --identifier-names-generator mangled --rename-globals false  --self-defending false --string-array false --transform-object-keys false  --unicode-escape-sequence false',o,n)Ö r==2 í
t=_F('javascript-obfuscator %s --output %s --compact true --identifier-names-generator hexadecimal --string-array true --string-array-threshold 0.5 --string-array-encoding base64 --disable-console-output false --transform-object-keys true --self-defending false --control-flow-flattening false --unicode-escape-sequence false',o,n)Ö r==3 í
t=_F('javascript-obfuscator %s --output %s --compact true --control-flow-flattening true --dead-code-injection true --debug-protection true --disable-console-output false --self-defending true --string-array true --string-array-encoding base64 --string-array-threshold 1 --unicode-escape-sequence true',o,n)Ü
t=t.." >nul 2>&1"Œ:run(t,i)ä e~=n í
¢.∑(e)¢.Â(n,e)Ü
Ü
ë t
Ü)ª(Ó,"SLLIB_VERSION_NUM",1103)ª(Ó,"SLLIB_VERSION","1.1.3")ô"sllib.console"ô"sllib.global"ô"sllib.lang"ô"sllib.io_ext"ô"sllib.os_ext"ô"sllib.table_ext"ô"sllib.string_ext"ô"sllib.list_ext"ô"sllib.set"ô"sllib.math_ext"ô"sllib.debug_ext"ô"sllib.coroutine_ext"ô"sllib.time"ô"sllib.timer"ô"sllib.logs"ô"sllib.class"ô"sllib.cmd"ô"sllib.jscompress"enum=ó.Á
log=log è ¶.i
logw=logw è ¶.w
loge=loge è ¶.e
logf=logf è ¶.f
¸=¸ è ¶.¸
clearLog=clearLog è ¶.clear
writeLogInFile=¶.writeInFile
Í=Í è ó.Í
‹=‹ è load
ª(Ó,"bind",â(e,...)å n={...}assert(e,"bind params error")ë â(...)å n=•.≤(n,{...})ë e(Í(n))Ü
Ü)â ¡(e)ä ©(e)==ÿí
ëﬁ..e..ﬁÖ ©(e)==´í
ë ó.ö(e)Ö ©(e)==±í
ë †(e)Ñ
å e=ö(e)èë e
Ü
Ü
]===], '@sllib_base.lua'))()