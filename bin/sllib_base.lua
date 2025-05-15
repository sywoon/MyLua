loadstring = loadstring or load 
local base_char,keywords=128,{"and","break","do","else","elseif","end","false","for","function","if","in","local","nil","not","or","repeat","return","then","true","until","while","string","table","insert","require","tostring","console","ipairs","print","preload","package","numbertostring","self","format","os","list","type","time","set","logs","timer","execute","\"table\"","pairs","gsub","sub","totaltime","debug","\"number\"","attributes","math","concat","getTimestamp","millitime","reportsByTitle","resetColor","setColor","remove","isSupportLineColor","defaultColor","tableAddress","writeFile","any2str","calltime","__showInnerRef","rawset","callcount","logFunc","\"/\"","clock","splitpath","elems","_showLogs","getFuncReport","setmetatable","cmd","mkpredir","basename","\"\"","count","linedefined","'jsmin.exe < \"%s\" > \"%s\"'","member","mkdir","\"string\"","name","loadstring","dirname","modf","io","'\"'","short_src","_sortCbks","match","printe","\"\\n\"","resume","\" localhost > NUL\"","profilingHandler","unpack","invert","tolist","endCbk","tonumber","\"\\\\\"","subClass","\"Unknown object!\"","readFile","tracingHandler","getinfo","isdir","sethook","new","close","exist","level","s_debug","date","_G","find","trace","__keyCanBeNum","getFuncTitle","intersection","'\\t'","splitpathex","startUpdate",}; function prettify(code) return code:gsub("["..string.char(base_char).."-"..string.char(base_char+#keywords).."]", 
	function (c) return keywords[c:byte()-base_char]; end) end return assert(loadstring(prettify[===[ü.û['sllib.console']=(â(...)å e=_VERSION=="Lua 5.3"Å 1 è 0
å t
ä e==1 í
t=ô"console.core"Ü
õ=õ è{}õ.º=7
â õ.ª()ë e==1
Ü
â õ.setDefaultColor(e)õ.º=e
Ü
â õ.π(n)ä e==1 í
ë t:setTextColor(n)Ñ
å e=ñ.¢("color %02X",n)ë £.™(e)Ü
Ü
â õ.∏()ä e==1 í
õ.π(õ.º)Ñ
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
Ü)ü.û['sllib.global']=(â(...)â †(e)ä e<0 í
ë"-"..†(-e)Ü
ä e<=10^13 í
ë ö(e)Ü
ä ≥.Ÿ(e)~=e í
ë ö(e)Ü
å n=≥.fmod(e,10^13)å e=≥.Ÿ(e/10^13)å e=ñ.¢("%s%013s",ö(e),ö(n))ë e
Ü
â ø(e,n)ä •(e)==’í
ä n Å e~=‡í
ë€..e..€Ñ
ë e
Ü
Ö •(e)==´í
ë ó.ö(e)Ö •(e)==±í
ë †(e)Ñ
å e=ö(e)èÎë e
Ü
Ü
â _F(e,...)ë ñ.¢(e,...)Ü
å e=õ.ª()â printw(...)õ.π(14)ù(...)ä e í õ.∏()Ü
Ü
â ﬂ(...)õ.π(12)ù(...)ä e í õ.∏()Ü
Ü
Ü)ü.û['sllib.lang']=(â(...)ä _VERSION=="Lua 5.1"í
printu=ù
ë
Ü
å n=ô"charset"â _U2A(e)e=ö(e)ë n.u2a(e)Ü
â _A2U(e)e=ö(e)ë n.a2u(e)Ü
å â e(e,...)e=e è˝å t={...}å n={}à t,e ã ú(t)É
ó.ò(n,_U2A(ø(e)))Ü
å e=ó.¥(n,e)ë e
Ü
â printu(...)å e=e(˝,...)ù(e)Ü
â printuw(...)å e=e(˝,...)printw(e)Ü
â printue(...)å e=e(˝,...)ﬂ(e)Ü
Ü)ü.û['sllib.io_ext']=(â(...)â ⁄.Ï(n,e)e=e è"r"å e=⁄.open(n,e)ä e==ç í
ë ç
Ü
å n=e:read("*a")e:Ú()ë n
Ü
â ⁄.æ(n,t,e)e=e è"w"å e=⁄.open(n,e)ä e==ç í
ë á
Ü
e:write(t)e:Ú()ë ì
Ü
â ⁄.fileSize(e)å n=0
å e=⁄.open(e,"r")ä e í
å t=e:seek()n=e:seek("end")e:seek("set",t)⁄.Ú(e)Ü
ë n
Ü
â ⁄.readJsonFile(e,n)å e=⁄.Ï(e)ä ç==e è e==œí
ë ç
Ü
ä n í
e=n(e)Ü
å n=ô"cjson"è ô"json"å e=n.decode(e)ë e
Ü
â ⁄.writeJsonFile(t,r,n,o)ä ç==n í n=ì Ü
å e=£.ÿ(t)£.‘(e)å e=ô"cjson"è ô"json"å e=e.encode(r)ä n í
e=ñ.≠(e,"\\/",≈)e=ñ.≠(e,"\\\\",È)Ü
ä o í
e=o(e)Ü
⁄.æ(t,e)ë ì
Ü
â ⁄.readLuaFile(e,n)å e=⁄.Ï(e)ä ç==e í
ë ç
Ü
ä n í
e=n(e)Ü
å n=◊ è load
å e=n(e)()ë e
Ü
â ⁄.writeLuaFile(n,e,t)å o=£.ÿ(n)£.‘(o)ä ç==ó.ö í
ë á
Ü
å e=ó.ö(e)ä ç==e í
ë á
Ü
ä t í
e=t(e)Ü
⁄.æ(n,e)ë ì
Ü
Ü)ü.û['sllib.os_ext']=(â(...)å n=ô"lfs"â £.∞(e)ı=e
Ü
â £.pause(e)ä e í
£.™(_F('cmd /c echo "%s" && pause',e))Ñ
£.™("cmd /c pause")Ü
Ü
â £.sleep(e)e=e è 1
£.™("ping -n "..Ë(e+1)..‚)Ü
å â e(e,n)e=ñ.≠(e,È,≈)e=ñ.≠(e,"//",≈)ä ñ.byte(e,-1)==47 í
ä é n í
e=ñ.Æ(e,1,-2)Ü
Ñ
ä n í
e=e..≈Ü
Ü
ë e
Ü
£.fixPath=e
å â r(e)ë ñ.ﬁ(e,"^%a:")Ü
â £.newfile(e)£.Õ(e)å e="echo.>"..e
£.™(e)Ü
â £.currentdir()ë n.currentdir()Ü
â £.chdir(e)ë n.chdir(e)Ü
â £.filetime(t)t=e(t)å e=n.≤(t)ë e Å e.modification è 0
Ü
â £.Ô(t)t=e(t)å e=n.≤(t)ë e Å e.mode=="directory"Ü
â £.isfile(t)t=e(t)å e=n.≤(t)ë e Å e.mode=="file"Ü
â £.Û(t)t=e(t)å e=n.≤(t)ë ç~=e
Ü
â £.filesize(t)t=e(t)å e=n.≤(t)ë e.size
Ü
â £.«(n)n=e(n)å e=#n
å t=ñ.Æ(n,e,e)ï e>0 Å t~=≈É
e=e-1
t=ñ.Æ(n,e,e)Ü
ä e==0 í
ëœ,n
Ü
å t=ñ.Æ(n,1,e-1)å e=ñ.Æ(n,e+1)ë t,e
Ü
â £.˛(n)å e={}å t=n
å n
ï ì É
t,n=£.«(t)ä ç==n èœ==n í
Ç
Ü
ó.ò(e,n)Ü
e=§.reverse(e)ë e,#e
Ü
â £.ÿ(e)å e,n=£.«(e)ë e
Ü
â £.Œ(e)å n,e=£.«(e)ë e
Ü
â £.filename(e)å n=£.Œ(e)å e,t=ñ.ﬁ(n,"^(.*)%.(%w*)$")ä e í
ë e,t
Ü
ë n
Ü
â £.extension(e)ë ñ.ﬁ(e,"%.%w*$")Ü
â £.‘(t)t=e(t)ä ı í ù("os.mkdir",t)Ü
å t=£.˛(t)å e=œà o=1,#t É
e=e..t[o]ä é r(t[o])Å é £.Ô(e)í
å n,t=n.‘(e)ä ç==n í
ä ı í ù("os.mkdir failed",e,t)Ü
ë n,t
Ü
Ü
e=e..≈Ü
ë ì
Ü
â £.Õ(n)n=e(n)å e=£.ÿ(n)ä e Å e~=œí
ë £.‘(e)Ü
ë ì
Ü
â £.rmdir(e,n)ä é £.Ô(e)í
ä n í
ù("os.rmdir error:not dir:"..e)Ü
ë
Ü
e=ñ.≠(e,≈,È)å t
ä n í
t=ñ.¢('rd /S /Q  "%s"',e)Ñ
t=ñ.¢('rd /S /Q  "%s" 1>nul',e)Ü
ä n==ì í
n=ù
Ü
ä n í n(t)Ü
ë £.™(t)Ü
â £.movedir(t,n,o)ä ç==o í
o=ì
Ü
t=e(t)n=e(n)ä o í
å e=£.Œ(t)n=n..≈..e
Ü
£.Õ(n)å e,o=£.rename(t,n)ä é e í
ù("movedir failed",t,n,o)Ü
ë e
Ü
â £.copydir(n,t,o)n=e(n)t=e(t)ä é £.Ô(n)í
ù("path error",n,t)ë á
Ü
n=ñ.≠(n,≈,È)t=ñ.≠(t,≈,È)å e
ä o í
e=ñ.¢('xcopy /Y /E /I /Q "%s" "%s"',n,t)Ñ
e=ñ.¢('xcopy /Y /E /I /Q "%s" "%s" 1>nul',n,t)Ü
ä o==ì í
o=ù
Ü
ä o í o(e)Ü
£.™(e)ë ì
Ü
â £.copyfile(t,e,n)£.Õ(e)t=ñ.≠(t,≈,È)e=ñ.≠(e,≈,È)å o
ä n í
o=ñ.¢('copy /Y "%s" "%s"',t,e)Ñ
o=ñ.¢('copy /Y "%s" "%s"  1>nul',t,e)Ü
ä n==ì í
n=ù
Ü
ä n í n(o)Ü
ë £.™(o)Ü
â £.movefile(t,n,o)t=e(t)n=e(n)ä é £.Û(t)í
ä o í
ù("[movefile] file not exist",t,n)Ü
ë
Ü
£.‘(n)å e=£.Œ(t)n=n..≈..e
£.∫(n)å e,r=£.rename(t,n)ä é e í
ä o í
ù("[movefile] failed",t,n,r)Ü
Ü
ë e
Ü
â £.dirempty(e)å e=£.dir(e,ì)ë ó.empty(e)Ü
â £.dir(o,e,r)ä ñ.Æ(o,-1,-1)==≈í
o=ñ.Æ(o,1,-2)Ü
å t=30
ä •(e)=="boolean"í
e=e==á Å 1 è t
Ö •(e)==±í
e=e
Ñ
e=t
Ü
å l={}å i={}å â s(o,t)t=t-1
à e ã n.dir(o)É
ä e~='.'Å e~='..'í
å e=o..'/'..e
å n=n.≤(e)ä n==ç í
ù("file can't read",e)Ñ
å n=n.mode=='directory'ä ç==r è r(e,n)í
ä n í
ó.ò(l,e)Ñ
ó.ò(i,e)Ü
ä n Å t>0 í
s(e,t)Ü
Ü
Ü
Ü
Ü
Ü
s(o,e)ë i,l
Ü
â £.dirext(o,e,n)å t=ó.Â(n)ë £.dir(o,e,â(e,n)ä n í
ë ì
Ü
å e=£.extension(e)ä t[e]í
ë ì
Ü
ë á
Ü)Ü
Ü)ü.û['sllib.table_ext']=(â(...)å â t(t,e)à n,e ã ¨(e)É
t[n]=e
Ü
Ü
å e={¡=á,˙=ì,}t(ó,e)å â i(r)ä é ¡ í
ë{}Ü
å o={}å t={}å â n(e)ä o[e]í
t[e]=e
ë
Ü
o[e]=e
à e,t ã ¨(e)É
ä •(e)==´í
n(e)Ö •(t)==´í
n(t)Ü
Ü
Ü
n(r)ë t
Ü
å â c(c,f,u)å n=ó.ò
å d=ó.¥
å s={}å r=i(c)å â a(o,i,t)i=i Å(i-1)è 30
ä i<0 í
ë t.."..."Ü
t=t èœä next(o)==ç í
ë t.."{}"Ü
ä ¡ í
s[o]=o
Ü
å e={}n(e,t.."{")ä r[o]í
n(e,Ω(o))Ü
n(e,‡)t=t.."  "ä ˙ è#o==0 í
à l,r ã ¨(o)É
n(e,t)ä •(l)==´í
ä s[o]í
n(e,Ω(o))Ñ
∫(e)n(e,a(l,i,t))Ü
Ö •(l)==±í
n(e,"["..†(l).."]")Ñ
å t=˜.ö(l)n(e,'["'..t..'"]')Ü
n(e," = ")ä •(r)==´í
ä s[r]í
n(e,Ω(r))Ñ
n(e,‡)n(e,a(r,i,t))Ü
Ö •(r)==±í
n(e,†(r))Ö •(r)==’í
n(e,€..r..€)Ñ
n(e,˜.ö(r))Ü
n(e,",\n")Ü
Ñ
à r,o ã ú(o)É
n(e,t)n(e,"["..†(r).."]")n(e," = ")ä •(o)==´í
n(e,‡)ä s[o]í
n(e,Ω(o))Ñ
n(e,a(o,i,t))Ü
Ö •(o)==±í
n(e,†(o))Ñ
n(e,€..˜.ö(o)..€)Ü
n(e,",\n")Ü
Ü
e[#e]=","n(e,‡..ñ.Æ(t,1,-3).."}")ë d(e)Ü
ë a(c,f,u)Ü
å â i(t,o)å n=ó.ò
å l=ó.¥
o=o Å(o-1)è 10
ä o<0 í
ë"..."Ü
å e={}n(e,"{")à r,t ã ¨(t)É
ä •(r)==´í
n(e,i(r,o))n(e,"=")Ö •(r)==±í
Ñ
n(e,'["'..˜.ö(r)..'"]')n(e,"=")Ü
ä •(t)==´í
n(e,i(t,o))Ö •(t)==±í
n(e,†(t))Ö •(t)==’í
n(e,€..t..€)Ñ
n(e,˜.ö(t))Ü
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
â ó.Â(n)å e={}à t,n ã ¨(n è{})É
e[n]=t
Ü
ë e
Ü
â ó.clone(n,t)å e={}ä é t í
À(e,getmetatable(n))Ü
à n,t ã ¨(n)É
e[n]=t
Ü
ë e
Ü
â ó.merge(...)å e={}à t,n ã ú({...})É
à t,n ã ¨(n)É
e[t]=n
Ü
Ü
ë e
Ü
â ó.address(n)å e
ä rawget(˜,"_tostring")í
e=_tostring(n)Ñ
e=c(n)Ü
ë ñ.≠(e,"^table: ",œ)èœÜ
ó.ö=c
ó.tostringex=i
â ó.ù(e)ä •(e)~=´í
˜.ù(e)Ñ
˜.ù(ó.ö(e))Ü
Ü
Ü)ü.û['sllib.string_ext']=(â(...)â ñ.strtox16(e)ë ñ.≠(e,".",â(e)ë ñ.¢("%02X",ñ.byte(e))Ü)Ü
â ñ.x16tostr(e)ë ñ.≠(e,"..",â(e)å e=Ë(e,16)ë ñ.char(e)Ü)Ü
â ñ.dumpex(e)ë ñ.≠(e,".",â(e)ë ñ.¢("%02X ",ñ.byte(e))Ü)Ü
â ñ.rfind(o,i)å n,e=ñ.¯(o,i,1,ì)å r,t=n,e
ï n~=ç É
r,t=n,e
n,e=ñ.¯(o,i,e,ì)Ü
ë r,t
Ü
â ñ.trim(n,e)e=e è"both"ä e=="begin"í
ë(ñ.≠(n,"^%s*",œ))Ö e=="end"í
ë(ñ.≠(n,"%s*$",œ))Ö e=="both"í
n=ñ.≠(n,"^%s*",œ)ë(ñ.≠(n,"%s*$",œ))Ü
Ü
â ñ.iterateString(n,e,t)e=e è'\n'ä é ñ.ﬁ(n,e)í
t(n)ë
Ü
à e ã ñ.gmatch(n,"(.-)"..e)É
t(e)Ü
ä ñ.Æ(n,#n-#e+1)==e í
t(œ)ë
Ü
å e=ñ.ﬁ(n,".+"..e.."(.*)$")ä e í
t(e)Ü
Ü
â ñ.split(n,o)å e=1
å t=1
å t={}ï e É
å r,o=ñ.¯(n,o,e)ä r Å o í
ó.ò(t,ñ.Æ(n,e,r-1))e=o+1
Ñ
ä e<=#n í
ó.ò(t,ñ.Æ(n,e,-1))Ü
Ç
Ü
Ü
ë t
Ü
â ñ.cut(e,t,n)n=n è#e
å t=ñ.Æ(e,1,t-1)èœå e=ñ.Æ(e,n+1)èœë t..e
Ü
â ñ.cutsub(n,t,e)e=e è 1
å t,o=ñ.¯(n,t,e,ì)ä t==ç í
ë n,-1
Ü
å e=œä t>1 í
e=e..ñ.Æ(n,1,t-1)Ü
ä o<#n í
e=e..ñ.Æ(n,o+1)Ü
ë e,t
Ü
â ñ.replacesub(n,t,r,e)e=e è 1
å t,o=ñ.¯(n,t,e,ì)ä t==ç í
ë n,-1
Ü
å e=œä t>1 í
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
≥.pow=â(e,n)ë e^n
Ü
Ü
â ≥.cutf(e,n)å t,e=≥.Ÿ(e)å e=e*≥.pow(10,n)e=≥.Ÿ(e)e=e/≥.pow(10,n)ë t+e
Ü
Ü)ü.û['sllib.debug_ext']=(â(...)å r=ô"sllib.profiler"å s=10
å l=100
â ∞.tracevalue(e,t)e=e è 2
t=t è 2
å r={}ó.ò(r,"stack tracevalue:")å i=á
å n="  "å t=e+t
ï e<t É
å t=∞.Ó(e,"nS")i=t.what=="main"å o={}ó.ò(o,ñ.¢(n.."file:%s line:%d function:%s()\n",t.‹,t.—,t.÷ èœ))n=n.."  "à n=1,s É
å n,e=∞.getlocal(e,n)ä ç==n í
Ç
Ü
ä •(e)~="function"Å n~="self"í
å t
ä •(e)==´í
t=ñ.Æ(ó.tostringex(e),1,l)Ñ
t=ø(e)Ü
ó.ò(o,ø(n).."="..t)ó.ò(o,‡)Ü
Ü
ó.ò(r,ó.¥(o,n))ä i í
Ç
Ü
e=e+1
n=n.."  "Ü
ë ó.¥(r,‡)Ü
∞.startanalysis=â(e)r:setLevel(3)r:start(e)Ü
∞.stopanalysis=â(e)r:stop(e)Ü
Ü)ü.û['sllib.list_ext']=(â(...)§=§ è{}â §.map(e,t)à n,o ã ú(e)É
e[n]=t(o,n)Ü
ë e
Ü
â §.filter(e,o)å t={}à r,n ã ú(e)É
ä o(n,r)í
ó.ò(t,n)Ü
Ü
e=t
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
â §.¥(...)å e={}à t,n ã ú({...})É
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
â §.∫(e,t)à n,o ã ú(e)É
ä o==t í
ó.∫(e,n)Ç
Ü
Ü
ë e
Ü
â §.Æ(t,o,e)e=e è#t
å n={}à e=o,e É
ó.ò(n,t[e])Ü
ë n
Ü
â §.cut(n,e)å n=§.Æ(1,e)å e=§.Æ(e+1)ë n,e
Ü
â §.Û(e,n)à t,e ã ú(e)É
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
â §.mirror(e)å n={}à t,e ã ú(e)É
n[e]=e
Ü
ë n
Ü
â §.merge(...)å e=§.¥(...)e=ó.Â(e)ë ó.keys(e)Ü
â §.mergeex(n,...)å e=§.¥(...)e=§.project(e,n)ë ó.values(e)Ü
â §.project(n,t)å e={}à o,n ã ú(n)É
e[n[t]]=n
Ü
ë e
Ü
Ü)ü.û['sllib.coroutine_ext']=(â(...)å n={}å o={}å e=coroutine
â e.start(n,...)å n=e.create(n)e.·(n,...)ë n
Ü
â e.lock()å t=e.running()ë â()§.∫(n,t)e.·(t)Ü
Ü
â e.wait()å t=e.running()ó.ò(n,t)e.yield(t)ä o[t]í
o[t]=ç
ë ì
Ü
ë á
Ü
â e.stop(t)o[cc]=ì
§.∫(n,t)e.·(t)Ü
â e.stopAll()à r,t ã ú(n)É
o[t]=ì
e.·(t)Ü
n={}Ü
Ü)ü.û['sllib.set']=(â(...)ä rawget(˜,"set")í
â ß.¸(e,t)å n=ß.Ò({})à e ã ¨(e)É
ä ß.”(t,e)í
ß.ò(n,e)Ü
Ü
ë n
Ü
â ß.Ê(n)å e={}à n ã ¨(n)É
ó.ò(e,n)Ü
ë e
Ü
â ß.ù(e)å e=ß.Ê(e)ó.ù(e)Ü
ë
Ü
å e={}ß={}ß.»=¨
â ß.Ò(n)å e=À({},e)à t,n ã ú(n è{})É
ß.ò(e,n)Ü
ë e
Ü
â ß.”(n,e)ë rawget(n,e)==ì
Ü
â ß.ò(e,n)¬(e,n,ì)Ü
â ß.delete(e,n)¬(e,n,ç)Ü
â ß.¸(e,t)å n=ß.Ò()à e ã ß.»(e)É
ä ß.”(t,e)í
ß.ò(n,e)Ü
Ü
ë n
Ü
â ß.Ê(n)å e={}à n ã ß.»(n)É
ó.ò(e,n)Ü
ë e
Ü
â ß.ù(e)å e=ß.Ê(e)ó.ù(e)Ü
å â l(n,t)å e=ß.Ò()à n ã ß.»(n)É
ß.ò(e,n)Ü
à n ã ß.»(t)É
ß.ò(e,n)Ü
ë e
Ü
å â r(n,t)å e=ß.Ò()à n ã ß.»(n)É
ä é ß.”(t,n)í
ß.ò(e,n)Ü
Ü
ë e
Ü
å â i(n,e)à n ã ß.»(n)É
ä é ß.”(e,n)í
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
Ü)ü.û['sllib.time']=(â(...)¶=¶ è{}â ¶.¶()ë £.¶()Ü
â ¶.∆()ë £.∆()Ü
â ¶.∂()ä £.∂ í
ë £.∂()Ü
å e=ô"socket.core"ë(≥.Ÿ(e.gettime()*1e3))Ü
â ¶.sleep(e)e=e è 0
£.™("ping -n "..Ë(e+1)..‚)Ü
â ¶.getstr(e,n)e=e è'%c'n=n è £.¶()ë £.ˆ(e,n)Ü
â ¶.getendofday(e)e=e è £.¶()å e=£.ˆ('*t',e)å e=£.ˆ('*t',£.¶({year=e["year"],month=e["month"],day=e["day"],hour=23,min=59,sec=59}))å e=£.¶(e)ë e
Ü
â ¶.tohour(e)å t=≥.Ÿ(e/3600)å n=≥.Ÿ(≥.fmod(e,3600)/60)å e=≥.fmod(e,60)ë{hour=t,min=n,sec=e}Ü
Ü)ü.û['sllib.timer']=(â(...)å n=ô"ctimer"©=© è{}ä é n í
ë ©
Ü
å t={}â ©.after(e,o,r)å n=n.µ()å e={loop=á,–=1,¶=e+n,÷=r,cbk=o}ó.ò(t,e)©.›()Ü
â ©.repeats(r,i,o,e)o=o è 0
e=e è{}å n=n.µ()å n=e.runsoon Å n è r+n
å e={loop=ì,–=o,¶=n,÷=e.÷,cbk=i,interval=r,Á=e.Á}ó.ò(t,e)©.›()Ü
â ©.cancel(o)à n,e ã ú(t)É
ä e.÷==o í
ó.∫(t,n)Ç
Ü
Ü
Ü
â ©.›()ó.sort(t,â(n,e)ë n.¶<e.¶
Ü)Ü
â ©._doUpdate(e)å n=n.µ()å o=0
à i,e ã ú(t)É
ä e.¶<n í
å r=e.loop
ä e.loop Å e.–>0 í
e.–=e.–-1
ä e.–==0 í
r=á
Ü
Ü
e.cbk(n)ä r í
e.¶=e.interval+n
ó.ò(t,e)Ñ
ä e.Á í
e.Á(n)Ü
Ü
o=i
Ü
Ü
ä o>0 Å o<=#t í
t=§.Æ(t,o+1)Ü
Ü
â ©.ˇ()n.ˇ(©._doUpdate,1e3)Ü
â ©.stopUpdate()n.stopUpdate()Ü
â ©.waitUpdate()n.waitUpdate()Ü
â ©.∂()ë n.µ()Ü
â ©.¶()ë ≥.floor(n.µ()/1e3+.5)Ü
â ©.timeinfo()ë n.getTime()Ü
ë © Ü)ü.û['sllib.logs']=(â(...)®=® è{}å i=á
å n=ç
å l=ì
å s=õ.ª()å r={}å â e(e)å e=ñ.≠(e,"[\r\n\t]",œ)ä e==œí
ë ì
Ü
ë á
Ü
å o=ì
å â d(e)ë ø(e,o)Ü
å â a()ä n í
ë n
Ü
å e=£.ˆ("*t")å e=ñ.¢("%s_%s_%s.log",e.year,e.month,e.day)n=e
ë e
Ü
å â c(e)ä é l í
ë
Ü
å n=a()⁄.æ(n,e,"a+")Ü
å â t(n,e)e=á
å e=£.ˆ("*t")å o=£.∆()å t=n
ä i í
t=ñ.¢("[%s-%s-%s %02s:%02s:%02s %s]%s",e.year,e.month,e.day,e.hour,e.min,e.sec,o,n)Ü
c(t..'\n')Ü
â ®.writeInFile(e)l=e
Ü
â ®.showLogTime(e)i=e
Ü
â ®.setLogPath(e)n=e
Ü
â ®.clear()å e=a()ä é £.Û(e)í
ë
Ü
⁄.æ(e,œ)Ü
â ®.…(...)å n={...}å e=#n
å e={}à o,n ã ú(n)É
å n=d(n)ó.ò(e,n)Ü
t(ó.¥(e,˝))Ü
â ®.i(...)®.…(...)Ü
â ®.w(...)õ.π(14)®.…(...)ä s í õ.∏()Ü
Ü
â ®.e(...)õ.π(12)®.…(...)å e=o
o=á
t(∞.traceback(œ,2))o=e
ä s í õ.∏()Ü
Ü
â ®.f(e,...)t(ñ.¢(e,...))Ü
â ®.˘(e,...)e=e è"nil"å e=ñ.¢(e,...)å e=∞.traceback(e,2)t(e)Ü
â ®.¶(e)e=ö(e)r[e]=¶.∂()Ü
â ®.timeEnd(e)e=ö(e)ä é r[e]í
ë
Ü
å n=¶.∂()-r[e]ù(_F("%s:%d",e,n))Ü
ë ®
Ü)ü.û['sllib.class']=(â(...)å n={}å â t(e)e.__index=e
ë À({},e)Ü
â class(r,o)å e
ä o í
e=o:Í(r)Ñ
e=n:Í(r)Ü
e.Ò=â(...)å n=t(e)n.__class=e
n:ctor(...)ë n
Ü
e.create=â(n,...)ë e.Ò(...)Ü
ë e
Ü
â n:ctor(...)Ü
â n:dtor()Ü
â n:Í(n)å e=t(°)e.__name=n
e.super=°
ë e
Ü
â n:attrReader(...)à n,e ã ú({...})É
å n="get"..ñ.upper(ñ.Æ(e,1,1))..ñ.Æ(e,2)°[n]=â(n)ë n[e]Ü
Ü
Ü
â n:attrWriter(...)à n,e ã ú({...})É
å n="set"..ñ.upper(ñ.Æ(e,1,1))..ñ.Æ(e,2)°[n]=â(n,t)n[e]=t
Ü
Ü
Ü
â n:include(...)à n,e ã ú({...})É
à n,e ã ¨(e)É
°[n]=e
Ü
Ü
Ü
â n:delegate(n,e)à t,e ã ú(e)É
°[e]=â(t,...)ë n[e](n,...)Ü
Ü
Ü
Ü)ü.û['sllib.profiler']=(â(...)å e={}â e:setLogFunc(e)°.ƒ=e
Ü
â e:setLevel(e)°.Ù=e
Ü
â e:start(e)e=e è"profile"°.ƒ=ù
ä e=="trace"í
∞.(bind(°.Ì,°),'c')Ñ
°.∑={}°.startTime=£.∆()°.Ù=3
∞.(bind(°.„,°),'cr')Ü
Ü
â e:stop(e)e=e è"profile"∞.()ä e=="trace"í
ë
Ü
°.stopTime=£.∆()å n=°.stopTime-°.startTime
ä n<.001 í
°.ƒ("total time less 0.001s")ë
Ü
å e=ó.values(°.∑)ó.sort(e,â(e,n)ë e.Ø>n.Ø
Ü)à t,e ã ú(e)É
å n=(e.Ø/n)*100
ä n<1 í
Ç
Ü
å e=ñ.¢("time:%6.3f, percent:%.2f%%, count:%d, %s",e.Ø,n,e.√,e.title)°.ƒ(e)Ü
Ü
â e:Ì()å e=∞.Ó(°.Ù,'nS')å e=ñ.¢("file:%s line:%d function:%s()",e.‹,e.—,e.÷ èœ)°.ƒ(e)Ü
â e:˚(e)å n=e.÷ è'anonymous'å t=e.‹ è'C_FUNC'å e=e.— è 0
ë ñ.¢("file:%s line:%s function:%s",t,e,n)Ü
â e: (e)å n=°:˚(e)å e=°.∑[n]ä é e í
e={title=n,√=0,Ø=0,}°.∑[n]=e
Ü
ë e
Ü
â e:„(n)å o=â(e)å e=°: (e)e.¿=£.∆()e.√=e.√+1
Ü
å t=â(e)å n=£.∆()å e=°: (e)ä e.¿ Å e.¿>0 í
e.Ø=e.Ø+(n-e.¿)e.¿=0
Ü
Ü
å e=∞.Ó(°.Ù,'nS')ä e í
ä n=="call"í
o(e)Ö n=="return"í
t(e)Ü
Ü
Ü
ë e
Ü)ü.û['sllib.cmd']=(â(...)Ã=Ã è{}¬(˜,"cmd",Ã)Ã.showcmd=á
â Ã:setOutputCall(e,n)°.outputCall=e è ù
°.outputCallE=n è ﬂ
Ü
â Ã:run(e,o,n)n=n è 1
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
r(n.." cmd execute failed:"..Ã)Ü
Ö n==2 í
å e=⁄.popen(e)å n=e:read("*a")t(n)e:Ú()Ü
Ü
ë Ã
Ü)ü.û['sllib.jscompress']=(â(...)å n={}¬(˜,"jscompress",n)â n:jsmin(e,n,o)ä e==n í
å t=e..".tmp"å r=_F(“,e,t)Ã:run(r,o)£.∫(e)£.rename(t,n)Ñ
å e=_F(“,e,n)Ã:run(e,o)Ü
Ü
â n:terser(t,e,n)å e=_F('terser %s -c -m -o %s',t,e)Ã:run(e,n)Ü
â n:encode(t,n,r,o)å e=_F('javascript-obfuscator %s --output %s',t,n)ä o==1 í
e=_F('javascript-obfuscator %s --output %s --compact true --control-flow-flattening false --dead-code-injection false --debug-protection false --disable-console-output false --identifier-names-generator mangled --rename-globals false  --self-defending false --string-array false --transform-object-keys false  --unicode-escape-sequence false',t,n)Ö o==2 í
e=_F('javascript-obfuscator %s --output %s --compact true --identifier-names-generator hexadecimal --string-array true --string-array-threshold 0.5 --string-array-encoding base64 --disable-console-output true --transform-object-keys true --self-defending false --control-flow-flattening false --unicode-escape-sequence false',t,n)Ö o==3 í
e=_F('javascript-obfuscator %s --output %s --compact true --control-flow-flattening true --dead-code-injection true --debug-protection true --disable-console-output true --self-defending true --string-array true --string-array-encoding base64 --string-array-threshold 1 --unicode-escape-sequence true',t,n)Ü
Ã:run(e,r)Ü
ë n
Ü)¬(˜,"SLLIB_VERSION","1.1.3")ô"sllib.console"ô"sllib.global"ô"sllib.lang"ô"sllib.io_ext"ô"sllib.os_ext"ô"sllib.table_ext"ô"sllib.string_ext"ô"sllib.list_ext"ô"sllib.set"ô"sllib.math_ext"ô"sllib.debug_ext"ô"sllib.coroutine_ext"ô"sllib.time"ô"sllib.timer"ô"sllib.logs"ô"sllib.class"ô"sllib.cmd"ô"sllib.jscompress"enum=ó.Â
log=log è ®.i
logw=logw è ®.w
loge=loge è ®.e
logf=logf è ®.f
˘=˘ è ®.˘
clearLog=clearLog è ®.clear
writeLogInFile=®.writeInFile
‰=‰ è ó.‰
◊=◊ è load
¬(˜,"bind",â(e,...)å n={...}assert(e,"bind params error")ë â(...)å n=§.¥(n,{...})ë e(‰(n))Ü
Ü)â ø(e)ä •(e)==’í
ë€..e..€Ö •(e)==´í
ë ó.ö(e)Ö •(e)==±í
ë †(e)Ñ
å e=ö(e)èÎë e
Ü
Ü
]===], '@sllib_base.lua'))()