loadstring = loadstring or load 
local base_char,keywords=128,{"and","break","do","else","elseif","end","false","for","function","if","in","local","nil","not","or","repeat","return","then","true","until","while","string","table","insert","require","tostring","console","ipairs","print","package","preload","numbertostring","self","format","os","list","type","logs","time","set","timer","execute","\"table\"","pairs","gsub","sub","debug","totaltime","\"number\"","math","concat","attributes","getTimestamp","remove","millitime","reportsByTitle","resetColor","setColor","isSupportLineColor","defaultColor","tableAddress","writeFile","any2str","calltime","__showInnerRef","rawset","splitpath","\"/\"","logFunc","_showLogs","getFuncReport","elems","clock","callcount","cmd","setmetatable","basename","mkpredir","mkdir","member","linedefined","count","\"\"","match","'jsmin.exe < \"%s\" > \"%s\"'","\"string\"","modf","name","dirname","loadstring","'\"'","io","_sortCbks","short_src","printe","endCbk","invert","rename","profilingHandler","\" localhost > NUL\"","unpack","tolist","\"\\n\"","resume","tonumber","\"\\\\\"","readFile","\"Unknown object!\"","subClass","tracingHandler","getinfo","new","close","find","trace","exist","sethook","isdir","date","level","_G","s_debug","__keyCanBeNum","getFuncTitle","intersection","'\\t'","values",}; function prettify(code) return code:gsub("["..string.char(base_char).."-"..string.char(base_char+#keywords).."]", 
	function (c) return keywords[c:byte()-base_char]; end) end return assert(loadstring(prettify[===[û.ü['sllib.console']=(â(...)å e=_VERSION=="Lua 5.3"Å 1 è 0
å n
ä e==1 í
n=ô"console.core"Ü
õ=õ è{}õ.º=7
â õ.ª()ë e==1
Ü
â õ.setDefaultColor(e)õ.º=e
Ü
â õ.∫(t)ä e==1 í
ë n:setTextColor(t)Ñ
å e=ñ.¢("color %02X",t)ë £.™(e)Ü
Ü
â õ.π()ä e==1 í
õ.∫(õ.º)Ñ
å e=ñ.¢("color %02X",õ.º)ë £.™(e)Ü
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
]]ù(e)Ü
Ü)û.ü['sllib.global']=(â(...)â †(e)ä e<0 í
ë"-"..†(-e)Ü
ä e<=10^13 í
ë ö(e)Ü
ä ≤.◊(e)~=e í
ë ö(e)Ü
å n=≤.fmod(e,10^13)å e=≤.◊(e/10^13)å e=ñ.¢("%s%013s",ö(e),ö(n))ë e
Ü
â ø(e,n)ä •(e)==÷í
ä n Å e~=Áí
ë€..e..€Ñ
ë e
Ü
Ö •(e)==´í
ë ó.ö(e)Ö •(e)==±í
ë †(e)Ñ
å e=ö(e)èÏë e
Ü
Ü
â _F(e,...)ë ñ.¢(e,...)Ü
å e=õ.ª()â printw(...)õ.∫(14)ù(...)ä e í õ.π()Ü
Ü
â ﬂ(...)õ.∫(12)ù(...)ä e í õ.π()Ü
Ü
Ü)û.ü['sllib.lang']=(â(...)ä _VERSION=="Lua 5.1"í
printu=ù
ë
Ü
å n=ô"charset"â _U2A(e)e=ö(e)ë n.u2a(e)Ü
â _A2U(e)e=ö(e)ë n.a2u(e)Ü
å â n(e,...)e=e è˛å t={...}å n={}à t,e ã ú(t)É
ó.ò(n,_U2A(ø(e)))Ü
å e=ó.≥(n,e)ë e
Ü
â printu(...)å e=n(˛,...)ù(e)Ü
â printuw(...)å e=n(˛,...)printw(e)Ü
â printue(...)å e=n(˛,...)ﬂ(e)Ü
Ü)û.ü['sllib.io_ext']=(â(...)â ‹.Î(n,e)e=e è"r"å e=‹.open(n,e)ä e==ç í
ë ç
Ü
å n=e:read("*a")e:Ò()ë n
Ü
â ‹.æ(t,n,e)e=e è"w"å e=‹.open(t,e)ä e==ç í
ë á
Ü
e:write(n)e:Ò()ë ì
Ü
â ‹.fileSize(e)å n=0
å e=‹.open(e,"r")ä e í
å t=e:seek()n=e:seek("end")e:seek("set",t)‹.Ò(e)Ü
ë n
Ü
â ‹.readJsonFile(e,n)å e=‹.Î(e)ä ç==e è e==”í
ë ç
Ü
ä n í
e=n(e)Ü
å n=ô"cjson"è ô"json"å e=n.decode(e)ë e
Ü
â ‹.writeJsonFile(o,r,n,t)ä ç==n í n=ì Ü
å e=£.Ÿ(o)£.œ(e)å e=ô"cjson"è ô"json"å e=e.encode(r)ä n í
e=ñ.≠(e,"\\/",ƒ)e=ñ.≠(e,"\\\\",Í)Ü
ä t í
e=t(e)Ü
‹.æ(o,e)ë ì
Ü
â ‹.readLuaFile(e,n)å e=‹.Î(e)ä ç==e í
ë ç
Ü
ä n í
e=n(e)Ü
å n=⁄ è load
å e=n(e)()ë e
Ü
â ‹.writeLuaFile(n,e,t)å o=£.Ÿ(n)£.œ(o)ä ç==ó.ö í
ë á
Ü
å e=ó.ö(e)ä ç==e í
ë á
Ü
ä t í
e=t(e)Ü
‹.æ(n,e)ë ì
Ü
Ü)û.ü['sllib.os_ext']=(â(...)å n=ô"lfs"â £.Ø(e)˙=e
Ü
â £.pause(e)ä e í
£.™(_F('cmd /c echo "%s" && pause',e))Ñ
£.™("cmd /c pause")Ü
Ü
â £.sleep(e)e=e è 1
£.™("ping -n "..È(e+1)..‰)Ü
å â e(e,n)e=ñ.≠(e,Í,ƒ)e=ñ.≠(e,"//",ƒ)ä ñ.byte(e,-1)==47 í
ä é n í
e=ñ.Æ(e,1,-2)Ü
Ñ
ä n í
e=e..ƒÜ
Ü
ë e
Ü
£.fixPath=e
å â r(e)ë ñ.‘(e,"^%a:")Ü
â £.newfile(e)£.Œ(e)å e="echo.>"..e
£.™(e)Ü
â £.currentdir()ë n.currentdir()Ü
â £.chdir(e)ë n.chdir(e)Ü
â £.filetime(t)t=e(t)å e=n.¥(t)ë e Å e.modification è 0
Ü
â £.ˆ(t)t=e(t)å e=n.¥(t)ë e Å e.mode=="directory"Ü
â £.isfile(t)t=e(t)å e=n.¥(t)ë e Å e.mode=="file"Ü
â £.Ù(t)t=e(t)å e=n.¥(t)ë ç~=e
Ü
â £.filesize(t)t=e(t)å e=n.¥(t)ë e.size
Ü
â £.√(n)n=e(n)å e=#n
å t=ñ.Æ(n,e,e)ï e>0 Å t~=ƒÉ
e=e-1
t=ñ.Æ(n,e,e)Ü
ä e==0 í
ë”,n
Ü
å t=ñ.Æ(n,1,e-1)å e=ñ.Æ(n,e+1)ë t,e
Ü
â £.splitpathex(n)å e={}å t=n
å n
ï ì É
t,n=£.√(t)ä ç==n è”==n í
Ç
Ü
ó.ò(e,n)Ü
e=§.reverse(e)ë e,#e
Ü
â £.Ÿ(e)å e,n=£.√(e)ë e
Ü
â £.Õ(e)å n,e=£.√(e)ë e
Ü
â £.filename(e)å e=£.Õ(e)å n,t=ñ.‘(e,"^(.*)%.(%w*)$")ä n í
ë n,t
Ü
ë e
Ü
â £.extension(e)ë ñ.‘(e,"%.%w*$")Ü
â £.œ(t)t=e(t)ä ˙ í ù("os.mkdir",t)Ü
å t=£.splitpathex(t)å e=”à o=1,#t É
e=e..t[o]ä é r(t[o])Å é £.ˆ(e)í
å n,t=n.œ(e)ä ç==n í
ä ˙ í ù("os.mkdir failed",e,t)Ü
ë n,t
Ü
Ü
e=e..ƒÜ
ë ì
Ü
â £.Œ(n)n=e(n)å e=£.Ÿ(n)ä e Å e~=”í
ë £.œ(e)Ü
ë ì
Ü
â £.rmdir(n,e)ä é £.ˆ(n)í
ä e í
ù("os.rmdir error:not dir:"..n)Ü
ë
Ü
n=ñ.≠(n,ƒ,Í)å t
ä e í
t=ñ.¢('rd /S /Q  "%s"',n)Ñ
t=ñ.¢('rd /S /Q  "%s" 1>nul',n)Ü
ä e==ì í
e=ù
Ü
ä e í e(t)Ü
ë £.™(t)Ü
â £.movedir(t,n,o)ä ç==o í
o=ì
Ü
t=e(t)n=e(n)ä o í
å e=£.Õ(t)n=n..ƒ..e
Ü
£.Œ(n)å e,o=£.‚(t,n)ä é e í
ù("movedir failed",t,n,o)Ü
ë e
Ü
â £.copydir(n,t,o)n=e(n)t=e(t)ä é £.ˆ(n)í
ù("path error",n,t)ë á
Ü
n=ñ.≠(n,ƒ,Í)t=ñ.≠(t,ƒ,Í)å e
ä o í
e=ñ.¢('xcopy /Y /E /I /Q "%s" "%s"',n,t)Ñ
e=ñ.¢('xcopy /Y /E /I /Q "%s" "%s" 1>nul',n,t)Ü
ä o==ì í
o=ù
Ü
ä o í o(e)Ü
£.™(e)ë ì
Ü
â £.copyfile(t,n,e)£.Œ(n)t=ñ.≠(t,ƒ,Í)n=ñ.≠(n,ƒ,Í)å o
ä e í
o=ñ.¢('copy /Y "%s" "%s"',t,n)Ñ
o=ñ.¢('copy /Y "%s" "%s"  1>nul',t,n)Ü
ä e==ì í
e=ù
Ü
ä e í e(o)Ü
ë £.™(o)Ü
â £.movefile(t,n,o)t=e(t)n=e(n)ä é £.Ù(t)í
ä o í
ù("[movefile] file not exist",t,n)Ü
ë
Ü
£.œ(n)å e=£.Õ(t)n=n..ƒ..e
£.∂(n)å e,r=£.‚(t,n)ä é e í
ä o í
ù("[movefile] failed",t,n,r)Ü
Ü
ë e
Ü
â £.dirempty(e)å e=£.dir(e,ì)ë ó.empty(e)Ü
â £.dir(t,e,s)ä ñ.Æ(t,-1,-1)==ƒí
t=ñ.Æ(t,1,-2)Ü
å o=30
ä •(e)=="boolean"í
e=e==á Å 1 è o
Ö •(e)==±í
e=e
Ñ
e=o
Ü
å l={}å i={}å â o(r,t)t=t-1
à e ã n.dir(r)É
ä e~='.'Å e~='..'í
å e=r..'/'..e
å n=n.¥(e)ä n==ç í
ù("file can't read",e)Ñ
å n=n.mode=='directory'ä ç==s è s(e,n)í
ä n í
ó.ò(l,e)Ñ
ó.ò(i,e)Ü
ä n Å t>0 í
o(e,t)Ü
Ü
Ü
Ü
Ü
Ü
o(t,e)ë i,l
Ü
â £.dirext(o,n,e)å t=ó.·(e)ë £.dir(o,n,â(n,e)ä e í
ë ì
Ü
å e=£.extension(n)ä t[e]í
ë ì
Ü
ë á
Ü)Ü
Ü)û.ü['sllib.table_ext']=(â(...)å â n(e,n)à n,t ã ¨(n)É
e[n]=t
Ü
Ü
å e={¡=á,˚=ì,}n(ó,e)å â i(r)ä é ¡ í
ë{}Ü
å t={}å o={}å â n(e)ä t[e]í
o[e]=e
ë
Ü
t[e]=e
à e,t ã ¨(e)É
ä •(e)==´í
n(e)Ö •(t)==´í
n(t)Ü
Ü
Ü
n(r)ë o
Ü
å â d(c,f,u)å n=ó.ò
å d=ó.≥
å a={}å r=i(c)å â s(o,i,t)i=i Å(i-1)è 30
ä i<0 í
ë t.."..."Ü
t=t è”ä next(o)==ç í
ë t.."{}"Ü
ä ¡ í
a[o]=o
Ü
å e={}n(e,t.."{")ä r[o]í
n(e,Ω(o))Ü
n(e,Á)t=t.."  "ä ˚ è#o==0 í
à l,r ã ¨(o)É
n(e,t)ä •(l)==´í
ä a[o]í
n(e,Ω(o))Ñ
∂(e)n(e,s(l,i,t))Ü
Ö •(l)==±í
n(e,"["..†(l).."]")Ñ
å t=˘.ö(l)n(e,'["'..t..'"]')Ü
n(e," = ")ä •(r)==´í
ä a[r]í
n(e,Ω(r))Ñ
n(e,Á)n(e,s(r,i,t))Ü
Ö •(r)==±í
n(e,†(r))Ö •(r)==÷í
n(e,€..r..€)Ñ
n(e,˘.ö(r))Ü
n(e,",\n")Ü
Ñ
à r,o ã ú(o)É
n(e,t)n(e,"["..†(r).."]")n(e," = ")ä •(o)==´í
n(e,Á)ä a[o]í
n(e,Ω(o))Ñ
n(e,s(o,i,t))Ü
Ö •(o)==±í
n(e,†(o))Ñ
n(e,€..˘.ö(o)..€)Ü
n(e,",\n")Ü
Ü
e[#e]=","n(e,Á..ñ.Æ(t,1,-3).."}")ë d(e)Ü
ë s(c,f,u)Ü
å â i(t,o)å n=ó.ò
å l=ó.≥
o=o Å(o-1)è 10
ä o<0 í
ë"..."Ü
å e={}n(e,"{")à r,t ã ¨(t)É
ä •(r)==´í
n(e,i(r,o))n(e,"=")Ö •(r)==±í
Ñ
n(e,'["'..˘.ö(r)..'"]')n(e,"=")Ü
ä •(t)==´í
n(e,i(t,o))Ö •(t)==±í
n(e,†(t))Ö •(t)==÷í
n(e,€..t..€)Ñ
n(e,˘.ö(t))Ü
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
â ó.ˇ(n)å e={}à t,n ã ¨(n è{})É
ó.ò(e,n)Ü
ë e
Ü
â ó.·(n)å e={}à t,n ã ¨(n è{})É
e[n]=t
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
â ó.merge(...)å e={}à t,n ã ú({...})É
à n,t ã ¨(n)É
e[n]=t
Ü
Ü
ë e
Ü
â ó.address(n)å e
ä rawget(˘,"_tostring")í
e=_tostring(n)Ñ
e=d(n)Ü
ë ñ.≠(e,"^table: ",”)è”Ü
ó.ö=d
ó.tostringex=i
â ó.ù(e)ä •(e)~=´í
˘.ù(e)Ñ
˘.ù(ó.ö(e))Ü
Ü
Ü)û.ü['sllib.string_ext']=(â(...)â ñ.strtox16(e)ë ñ.≠(e,".",â(e)ë ñ.¢("%02X",ñ.byte(e))Ü)Ü
â ñ.x16tostr(e)ë ñ.≠(e,"..",â(e)å e=È(e,16)ë ñ.char(e)Ü)Ü
â ñ.dumpex(e)ë ñ.≠(e,".",â(e)ë ñ.¢("%02X ",ñ.byte(e))Ü)Ü
â ñ.rfind(i,r)å e,n=ñ.Ú(i,r,1,ì)å t,o=e,n
ï e~=ç É
t,o=e,n
e,n=ñ.Ú(i,r,n,ì)Ü
ë t,o
Ü
â ñ.trim(n,e)e=e è"both"ä e=="begin"í
ë(ñ.≠(n,"^%s*",”))Ö e=="end"í
ë(ñ.≠(n,"%s*$",”))Ö e=="both"í
n=ñ.≠(n,"^%s*",”)ë(ñ.≠(n,"%s*$",”))Ü
Ü
â ñ.iterateString(n,e,t)e=e è'\n'ä é ñ.‘(n,e)í
t(n)ë
Ü
à e ã ñ.gmatch(n,"(.-)"..e)É
t(e)Ü
ä ñ.Æ(n,#n-#e+1)==e í
t(”)ë
Ü
å e=ñ.‘(n,".+"..e.."(.*)$")ä e í
t(e)Ü
Ü
â ñ.split(n,o)å e=1
å t=1
å t={}ï e É
å o,r=ñ.Ú(n,o,e)ä o Å r í
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
å t=ñ.Æ(n,1,t-1)è”å e=ñ.Æ(n,e+1)è”ë t..e
Ü
â ñ.cutsub(n,t,e)e=e è 1
å t,o=ñ.Ú(n,t,e,ì)ä t==ç í
ë n,-1
Ü
å e=”ä t>1 í
e=e..ñ.Æ(n,1,t-1)Ü
ä o<#n í
e=e..ñ.Æ(n,o+1)Ü
ë e,t
Ü
â ñ.replacesub(n,t,r,e)e=e è 1
å t,o=ñ.Ú(n,t,e,ì)ä t==ç í
ë n,-1
Ü
å e=”ä t>1 í
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
Ü)û.ü['sllib.math_ext']=(â(...)ä é ≤.pow í
≤.pow=â(e,n)ë e^n
Ü
Ü
â ≤.cutf(e,n)å t,e=≤.◊(e)å e=e*≤.pow(10,n)e=≤.◊(e)e=e/≤.pow(10,n)ë t+e
Ü
Ü)û.ü['sllib.debug_ext']=(â(...)å r=ô"sllib.profiler"å s=10
å l=100
â Ø.tracevalue(e,t)e=e è 2
t=t è 2
å r={}ó.ò(r,"stack tracevalue:")å i=á
å n="  "å t=e+t
ï e<t É
å o=Ø.Ô(e,"nS")i=o.what=="main"å t={}ó.ò(t,ñ.¢(n.."file:%s line:%d function:%s()\n",o.ﬁ,o.—,o.ÿ è”))n=n.."  "à n=1,s É
å o,e=Ø.getlocal(e,n)ä ç==o í
Ç
Ü
ä •(e)~="function"Å o~="self"í
å n
ä •(e)==´í
n=ñ.Æ(ó.tostringex(e),1,l)Ñ
n=ø(e)Ü
ó.ò(t,ø(o).."="..n)ó.ò(t,Á)Ü
Ü
ó.ò(r,ó.≥(t,n))ä i í
Ç
Ü
e=e+1
n=n.."  "Ü
ë ó.≥(r,Á)Ü
Ø.startanalysis=â(e)r:setLevel(3)r:start(e)Ü
Ø.stopanalysis=â(e)r:stop(e)Ü
Ü)û.ü['sllib.list_ext']=(â(...)§=§ è{}â §.map(e,t)à n,o ã ú(e)É
e[n]=t(o,n)Ü
ë e
Ü
â §.filter(e,r)å n={}à o,t ã ú(e)É
ä r(t,o)í
ó.ò(n,t)Ü
Ü
e=n
ë e
Ü
â §.append(e,n)ó.ò(e,n)ë e
Ü
â §.appendList(e,...)à t,n ã ú({...})É
à t,n ã ú(n)É
ó.ò(e,n)Ü
Ü
ë e
Ü
â §.≥(...)å e={}à t,n ã ú({...})É
à t,n ã ú(n)É
ó.ò(e,n)Ü
Ü
ë e
Ü
â §.indexOf(n,e)à t,n ã ú(n)É
ä n==e í
ë t
Ü
Ü
ë-1
Ü
â §.∂(e,n)à o,t ã ú(e)É
ä t==n í
ó.∂(e,o)Ç
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
â §.Ù(n,e)à t,n ã ú(n)É
ä n==e í
ë ì
Ü
Ü
ë á
Ü
â §.reverse(n)å e={}à t=#n,1,-1 É
ó.ò(e,n[t])Ü
ë e
Ü
â §.mirror(n)å e={}à t,n ã ú(n)É
e[n]=n
Ü
ë e
Ü
â §.merge(...)å e=§.≥(...)e=ó.·(e)ë ó.keys(e)Ü
â §.mergeex(n,...)å e=§.≥(...)e=§.project(e,n)ë ó.ˇ(e)Ü
â §.project(e,t)å n={}à o,e ã ú(e)É
n[e[t]]=e
Ü
ë n
Ü
Ü)û.ü['sllib.coroutine_ext']=(â(...)å n={}å o={}å e=coroutine
â e.start(n,...)å n=e.create(n)e.Ë(n,...)ë n
Ü
â e.lock()å t=e.running()ë â()§.∂(n,t)e.Ë(t)Ü
Ü
â e.wait()å t=e.running()ó.ò(n,t)e.yield(t)ä o[t]í
o[t]=ç
ë ì
Ü
ë á
Ü
â e.stop(t)o[cc]=ì
§.∂(n,t)e.Ë(t)Ü
â e.stopAll()à r,t ã ú(n)É
o[t]=ì
e.Ë(t)Ü
n={}Ü
Ü)û.ü['sllib.set']=(â(...)ä rawget(˘,"set")í
â ®.˝(e,t)å n=®.({})à e ã ¨(e)É
ä ®.–(t,e)í
®.ò(n,e)Ü
Ü
ë n
Ü
â ®.Ê(n)å e={}à n ã ¨(n)É
ó.ò(e,n)Ü
ë e
Ü
â ®.ù(e)å e=®.Ê(e)ó.ù(e)Ü
ë
Ü
å e={}®={}®.»=¨
â ®.(n)å e=Ã({},e)à t,n ã ú(n è{})É
®.ò(e,n)Ü
ë e
Ü
â ®.–(n,e)ë rawget(n,e)==ì
Ü
â ®.ò(e,n)¬(e,n,ì)Ü
â ®.delete(n,e)¬(n,e,ç)Ü
â ®.˝(e,t)å n=®.()à e ã ®.»(e)É
ä ®.–(t,e)í
®.ò(n,e)Ü
Ü
ë n
Ü
â ®.Ê(n)å e={}à n ã ®.»(n)É
ó.ò(e,n)Ü
ë e
Ü
â ®.ù(e)å e=®.Ê(e)ó.ù(e)Ü
å â l(t,n)å e=®.()à n ã ®.»(t)É
®.ò(e,n)Ü
à n ã ®.»(n)É
®.ò(e,n)Ü
ë e
Ü
å â i(n,t)å e=®.()à n ã ®.»(n)É
ä é ®.–(t,n)í
®.ò(e,n)Ü
Ü
ë e
Ü
å â o(e,n)à e ã ®.»(e)É
ä é ®.–(n,e)í
ë á
Ü
Ü
ë ì
Ü
å â r(n,t)ë ®.subset(n,t)Å é ®.subset(t,n)Ü
e.__index=®
e.__add=l
e.__sub=i
e.__le=o
e.__lt=r
Ü)û.ü['sllib.time']=(â(...)ß=ß è{}â ß.ß()ë £.ß()Ü
â ß.…()ë £.…()Ü
â ß.∑()ä £.∑ í
ë £.∑()Ü
å e=ô"socket.core"ë(≤.◊(e.gettime()*1e3))Ü
â ß.sleep(e)e=e è 0
£.™("ping -n "..È(e+1)..‰)Ü
â ß.getstr(n,e)n=n è'%c'e=e è £.ß()ë £.˜(n,e)Ü
â ß.getendofday(e)e=e è £.ß()å e=£.˜('*t',e)å e=£.˜('*t',£.ß({year=e["year"],month=e["month"],day=e["day"],hour=23,min=59,sec=59}))å e=£.ß(e)ë e
Ü
â ß.tohour(e)å n=≤.◊(e/3600)å t=≤.◊(≤.fmod(e,3600)/60)å e=≤.fmod(e,60)ë{hour=n,min=t,sec=e}Ü
Ü)û.ü['sllib.timer']=(â(...)å n=ô"ctimer"©=© è{}ä é n í
ë ©
Ü
å t={}â ©.after(r,i,o)å e=n.µ()å e={loop=á,“=1,ß=r+e,ÿ=o,cbk=i}ó.ò(t,e)©.›()Ü
â ©.repeats(r,i,o,e)o=o è 0
e=e è{}å n=n.µ()å n=e.runsoon Å n è r+n
å e={loop=ì,“=o,ß=n,ÿ=e.ÿ,cbk=i,interval=r,‡=e.‡}ó.ò(t,e)©.›()Ü
â ©.cancel(e)à o,n ã ú(t)É
ä n.ÿ==e í
ó.∂(t,o)Ç
Ü
Ü
Ü
â ©.›()ó.sort(t,â(n,e)ë n.ß<e.ß
Ü)Ü
â ©._doUpdate(e)å n=n.µ()å o=0
à i,e ã ú(t)É
ä e.ß<n í
å r=e.loop
ä e.loop Å e.“>0 í
e.“=e.“-1
ä e.“==0 í
r=á
Ü
Ü
e.cbk(n)ä r í
e.ß=e.interval+n
ó.ò(t,e)Ñ
ä e.‡ í
e.‡(n)Ü
Ü
o=i
Ü
Ü
ä o>0 Å o<=#t í
t=§.Æ(t,o+1)Ü
Ü
â ©.startUpdate()n.startUpdate(©._doUpdate,1e3)Ü
â ©.stopUpdate()n.stopUpdate()Ü
â ©.waitUpdate()n.waitUpdate()Ü
â ©.∑()ë n.µ()Ü
â ©.ß()ë ≤.floor(n.µ()/1e3+.5)Ü
â ©.timeinfo()ë n.getTime()Ü
ë © Ü)û.ü['sllib.logs']=(â(...)¶=¶ è{}å a=á
å n=ç
å l=ì
å i=õ.ª()å r={}å â e(e)å e=ñ.≠(e,"[\r\n\t]",”)ä e==”í
ë ì
Ü
ë á
Ü
å o=ì
å â d(e)ë ø(e,o)Ü
å â s()ä n í
ë n
Ü
å e=£.˜("*t")å e=ñ.¢("%s_%s_%s.log",e.year,e.month,e.day)n=e
ë e
Ü
å â c(n)ä é l í
ë
Ü
å e=s()‹.æ(e,n,"a+")Ü
å â t(t,e)e=á
å e=£.˜("*t")å o=£.…()å n=t
ä a í
n=ñ.¢("[%s-%s-%s %02s:%02s:%02s %s]%s",e.year,e.month,e.day,e.hour,e.min,e.sec,o,t)Ü
c(n..'\n')Ü
â ¶.writeInFile(e)l=e
Ü
â ¶.showLogTime(e)a=e
Ü
â ¶.setLogPath(e)n=e
Ü
â ¶.clear()å e=s()ä é £.Ù(e)í
ë
Ü
‹.æ(e,”)Ü
â ¶.∆(...)å e={...}å n=#e
å n={}à o,e ã ú(e)É
å e=d(e)ó.ò(n,e)Ü
t(ó.≥(n,˛))Ü
â ¶.i(...)¶.∆(...)Ü
â ¶.w(...)õ.∫(14)¶.∆(...)ä i í õ.π()Ü
Ü
â ¶.e(...)õ.∫(12)¶.∆(...)å e=o
o=á
t(Ø.traceback(”,2))o=e
ä i í õ.π()Ü
Ü
â ¶.f(e,...)t(ñ.¢(e,...))Ü
â ¶.Û(e,...)e=e è"nil"å e=ñ.¢(e,...)å e=Ø.traceback(e,2)t(e)Ü
â ¶.ß(e)e=ö(e)r[e]=ß.∑()Ü
â ¶.timeEnd(e)e=ö(e)ä é r[e]í
ë
Ü
å n=ß.∑()-r[e]ù(_F("%s:%d",e,n))Ü
ë ¶
Ü)û.ü['sllib.class']=(â(...)å e={}å â t(e)e.__index=e
ë Ã({},e)Ü
â class(o,r)å n
ä r í
n=r:Ì(o)Ñ
n=e:Ì(o)Ü
n.=â(...)å e=t(n)e.__class=n
e:ctor(...)ë e
Ü
n.create=â(e,...)ë n.(...)Ü
ë n
Ü
â e:ctor(...)Ü
â e:dtor()Ü
â e:Ì(n)å e=t(°)e.__name=n
e.super=°
ë e
Ü
â e:attrReader(...)à n,e ã ú({...})É
å n="get"..ñ.upper(ñ.Æ(e,1,1))..ñ.Æ(e,2)°[n]=â(n)ë n[e]Ü
Ü
Ü
â e:attrWriter(...)à n,e ã ú({...})É
å n="set"..ñ.upper(ñ.Æ(e,1,1))..ñ.Æ(e,2)°[n]=â(n,t)n[e]=t
Ü
Ü
Ü
â e:include(...)à n,e ã ú({...})É
à e,n ã ¨(e)É
°[e]=n
Ü
Ü
Ü
â e:delegate(n,e)à t,e ã ú(e)É
°[e]=â(t,...)ë n[e](n,...)Ü
Ü
Ü
Ü)û.ü['sllib.profiler']=(â(...)å e={}â e:setLogFunc(e)°.≈=e
Ü
â e:setLevel(e)°.¯=e
Ü
â e:start(e)e=e è"profile"°.≈=ù
ä e=="trace"í
Ø.ı(bind(°.Ó,°),'c')Ñ
°.∏={}°.startTime=£.…()°.¯=3
Ø.ı(bind(°.„,°),'cr')Ü
Ü
â e:stop(e)e=e è"profile"Ø.ı()ä e=="trace"í
ë
Ü
°.stopTime=£.…()å n=°.stopTime-°.startTime
ä n<.001 í
°.≈("total time less 0.001s")ë
Ü
å e=ó.ˇ(°.∏)ó.sort(e,â(n,e)ë n.∞>e.∞
Ü)à t,e ã ú(e)É
å n=(e.∞/n)*100
ä n<1 í
Ç
Ü
å e=ñ.¢("time:%6.3f, percent:%.2f%%, count:%d, %s",e.∞,n,e. ,e.title)°.≈(e)Ü
Ü
â e:Ó()å e=Ø.Ô(°.¯,'nS')å e=ñ.¢("file:%s line:%d function:%s()",e.ﬁ,e.—,e.ÿ è”)°.≈(e)Ü
â e:¸(e)å t=e.ÿ è'anonymous'å n=e.ﬁ è'C_FUNC'å e=e.— è 0
ë ñ.¢("file:%s line:%s function:%s",n,e,t)Ü
â e:«(e)å n=°:¸(e)å e=°.∏[n]ä é e í
e={title=n, =0,∞=0,}°.∏[n]=e
Ü
ë e
Ü
â e:„(n)å t=â(e)å e=°:«(e)e.¿=£.…()e. =e. +1
Ü
å o=â(e)å n=£.…()å e=°:«(e)ä e.¿ Å e.¿>0 í
e.∞=e.∞+(n-e.¿)e.¿=0
Ü
Ü
å e=Ø.Ô(°.¯,'nS')ä e í
ä n=="call"í
t(e)Ö n=="return"í
o(e)Ü
Ü
Ü
ë e
Ü)û.ü['sllib.cmd']=(â(...)À=À è{}¬(˘,"cmd",À)À.showcmd=á
â À:setOutputCall(n,e)°.outputCall=n è ù
°.outputCallE=e è ﬂ
Ü
â À:run(e,o,n)n=n è 1
å t=°.outputCall è ù
å r=°.outputCallE è ﬂ
ä o í
å n='set "path='..o..';%path%" & 'e=n..e
Ü
ä °.showcmd í
ä t~=ù í
ù("cmd:run",e)Ü
t("cmd:run "..e)Ü
ä n==1 í
å e,n,t=£.™(e)ä é e í
r(n.." cmd execute failed:"..À)Ü
Ö n==2 í
å e=‹.popen(e)å n=e:read("*a")t(n)e:Ò()Ü
Ü
ë À
Ü)û.ü['sllib.jscompress']=(â(...)å t={}¬(˘,"jscompress",t)â t:jsmin(e,n,o)ä e==n í
å t=e..".tmp"å r=_F(’,e,t)À:run(r,o)£.∂(e)£.‚(t,n)Ñ
å e=_F(’,e,n)À:run(e,o)Ü
Ü
â t:terser(t,e,n)å e=_F('terser %s -c -m -o %s',t,e)À:run(e,n)Ü
â t:encode(t,e,i,r)å n=e
ä ñ.‘(e,"%.js$")==ç í
n=e..".js"Ü
å o=_F('javascript-obfuscator %s --output %s',t,e)ä r==1 í
o=_F('javascript-obfuscator %s --output %s --compact true --control-flow-flattening false --dead-code-injection false --debug-protection false --disable-console-output false --identifier-names-generator mangled --rename-globals false  --self-defending false --string-array false --transform-object-keys false  --unicode-escape-sequence false',t,n)Ö r==2 í
o=_F('javascript-obfuscator %s --output %s --compact true --identifier-names-generator hexadecimal --string-array true --string-array-threshold 0.5 --string-array-encoding base64 --disable-console-output true --transform-object-keys true --self-defending false --control-flow-flattening false --unicode-escape-sequence false',t,n)Ö r==3 í
o=_F('javascript-obfuscator %s --output %s --compact true --control-flow-flattening true --dead-code-injection true --debug-protection true --disable-console-output true --self-defending true --string-array true --string-array-encoding base64 --string-array-threshold 1 --unicode-escape-sequence true',t,n)Ü
À:run(o,i)ä e~=n í
£.∂(e)£.‚(n,e)Ü
Ü
ë t
Ü)¬(˘,"SLLIB_VERSION","1.1.3")ô"sllib.console"ô"sllib.global"ô"sllib.lang"ô"sllib.io_ext"ô"sllib.os_ext"ô"sllib.table_ext"ô"sllib.string_ext"ô"sllib.list_ext"ô"sllib.set"ô"sllib.math_ext"ô"sllib.debug_ext"ô"sllib.coroutine_ext"ô"sllib.time"ô"sllib.timer"ô"sllib.logs"ô"sllib.class"ô"sllib.cmd"ô"sllib.jscompress"enum=ó.·
log=log è ¶.i
logw=logw è ¶.w
loge=loge è ¶.e
logf=logf è ¶.f
Û=Û è ¶.Û
clearLog=clearLog è ¶.clear
writeLogInFile=¶.writeInFile
Â=Â è ó.Â
⁄=⁄ è load
¬(˘,"bind",â(e,...)å n={...}assert(e,"bind params error")ë â(...)å n=§.≥(n,{...})ë e(Â(n))Ü
Ü)â ø(e)ä •(e)==÷í
ë€..e..€Ö •(e)==´í
ë ó.ö(e)Ö •(e)==±í
ë †(e)Ñ
å e=ö(e)èÏë e
Ü
Ü
]===], '@sllib_base.lua'))()