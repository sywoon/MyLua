loadstring = loadstring or load 
local base_char,keywords=128,{"and","break","do","else","elseif","end","false","for","function","if","in","local","nil","not","or","repeat","return","then","true","until","while","string","table","insert","require","console","tostring","numbertostring","format","self","ipairs","print","package","preload","os","type","set","logs","list","\"table\"","pairs","execute","gsub","totaltime","\"number\"","concat","attributes","sub","debug","time","reportsByTitle","resetColor","math","setColor","isSupportLineColor","defaultColor","tableAddress","writeFile","any2str","calltime","\"/\"","__showInnerRef","getFuncReport","logFunc","elems","splitpath","callcount","_showLogs","clock","setmetatable","mkpredir","basename","linedefined","mkdir","member","\"string\"","dirname","loadstring","modf","\"\"","'\"'","short_src","match","io","\" localhost > NUL\"","profilingHandler","invert","tolist","rawset","\"\\n\"","unpack","remove","tonumber","\"Unknown object!\"","subClass","readFile","tracingHandler","sethook","new","exist","level","isdir","__keyCanBeNum","date","trace","getinfo","\"\\\\\"","intersection","'\\t'","getFuncTitle","values","rawget","_G","writeInFile","splitpathex","\"color %02X\"","currentdir","tostringex","close","startTime","extension","month","traceback","\"  \"","\"ping -n \"","setLevel","clearLog",}; function prettify(code) return code:gsub("["..string.char(base_char).."-"..string.char(base_char+#keywords).."]", 
	function (c) return keywords[c:byte()-base_char]; end) end return assert(loadstring(prettify[===[°.¢['sllib.console']=(â(...)å e=_VERSION=="Lua 5.3"Å 1 è 0
å t
ä e==1 í
t=ô"console.core"Ü
ö=ö è{}ö.∏=7
â ö.∑()ë e==1
Ü
â ö.setDefaultColor(e)ö.∏=e
Ü
â ö.∂(n)ä e==1 í
ë t:setTextColor(n)Ñ
å e=ñ.ù(Ù,n)ë £.™(e)Ü
Ü
â ö.¥()ä e==1 í
ö.∂(ö.∏)Ñ
å e=ñ.ù(Ù,ö.∏)ë £.™(e)Ü
Ü
â ö.describe()å e=[[
    0x07 background:black foreground:white
    0	=	Black	 	8	=	Gray
    1	=	Blue	 	9	=	Light Blue
    2	=	Green	 	A	=	Light Green
    3	=	Aqua	 	B	=	Light Aqua
    4	=	Red	 	C	=	Light Red
    5	=	Purple	 	D	=	Light Purple
    6	=	Yellow	 	E	=	Light Yellow
    7	=	White	 	F	=	Bright White
]]†(e)Ü
Ü)°.¢['sllib.global']=(â(...)â ú(e)ä e<0 í
ë"-"..ú(-e)Ü
ä e<=10^13 í
ë õ(e)Ü
ä µ.œ(e)~=e í
ë õ(e)Ü
å n=µ.fmod(e,10^13)å e=µ.œ(e/10^13)å e=ñ.ù("%s%013s",õ(e),õ(n))ë e
Ü
â ª(e,n)ä §(e)==Ãí
ä n Å e~=⁄í
ë—..e..—Ñ
ë e
Ü
Ö §(e)==®í
ë ó.õ(e)Ö §(e)==≠í
ë ú(e)Ñ
å e=õ(e)èﬁë e
Ü
Ü
â _F(e,...)ë ñ.ù(e,...)Ü
å e=ö.∑()â printw(...)ö.∂(14)†(...)ä e í ö.¥()Ü
Ü
â printe(...)ö.∂(12)†(...)ä e í ö.¥()Ü
Ü
Ü)°.¢['sllib.lang']=(â(...)ä _VERSION=="Lua 5.1"í
printu=†
ë
Ü
å n=ô"charset"â _U2A(e)e=õ(e)ë n.u2a(e)Ü
â _A2U(e)e=õ(e)ë n.a2u(e)Ü
å â e(e,...)e=e èÌå t={...}å n={}à t,e ã ü(t)É
ó.ò(n,_U2A(ª(e)))Ü
å e=ó.Æ(n,e)ë e
Ü
â printu(...)å e=e(Ì,...)†(e)Ü
â printuw(...)å e=e(Ì,...)printw(e)Ü
â printue(...)å e=e(Ì,...)printe(e)Ü
Ü)°.¢['sllib.io_ext']=(â(...)â ‘.‡(n,e)e=e è"r"å e=‘.open(n,e)ä e==ç í
ë ç
Ü
å n=e:read("*a")e:˜()ë n
Ü
â ‘.∫(n,t,e)e=e è"w"å e=‘.open(n,e)ä e==ç í
ë á
Ü
e:write(t)e:˜()ë ì
Ü
â ‘.fileSize(e)å n=0
å e=‘.open(e,"r")ä e í
å t=e:seek()n=e:seek("end")e:seek("set",t)‘.˜(e)Ü
ë n
Ü
â ‘.readJsonFile(e,n)å e=‘.‡(e)ä ç==e è e==–í
ë ç
Ü
ä n í
e=n(e)Ü
å n=ô"cjson"è ô"json"å e=n.decode(e)ë e
Ü
â ‘.writeJsonFile(o,e,n,t)ä ç==n í n=ì Ü
å r=£.Õ(o)£. (r)å r=ô"cjson"è ô"json"å e=r.encode(e)ä n í
e=ñ.´(e,"\\/",Ω)e=ñ.´(e,"\\\\",Ω)Ü
ä t í
e=t(e)Ü
‘.∫(o,e)ë ì
Ü
â ‘.readLuaFile(e,n)å e=‘.‡(e)ä ç==e í
ë ç
Ü
ä n í
e=n(e)Ü
å n=Œ è load
å e=n(e)()ë e
Ü
â ‘.writeLuaFile(t,o,n)å e=£.Õ(t)£. (e)ä ç==ó.õ í
ë á
Ü
å e=ó.õ(o)ä ç==e í
ë á
Ü
ä n í
e=n(e)Ü
‘.∫(t,e)ë ì
Ü
Ü)°.¢['sllib.os_ext']=(â(...)å n=ô"lfs"â £.pause(e)ä e í
£.™(_F('cmd /c echo "%s" && pause',e))Ñ
£.™("cmd /c pause")Ü
Ü
â £.sleep(e)e=e è 1
£.™(˝..›(e+1)..’)Ü
å â e(e,n)e=ñ.´(e,Î,Ω)e=ñ.´(e,"//",Ω)ä ñ.byte(e,-1)==47 í
ä é n í
e=ñ.∞(e,1,-2)Ü
Ñ
ä n í
e=e..ΩÜ
Ü
ë e
Ü
£.fixPath=e
å â r(e)ë ñ.”(e,"^%a:")Ü
â £.newfile(e)£.«(e)å e="echo.>"..e
£.™(e)Ü
â £.ı()ë n.ı()Ü
â £.chdir(e)ë n.chdir(e)Ü
â £.filetime(t)t=e(t)å e=n.Ø(t)ë e Å e.modification è 0
Ü
â £.Ê(t)t=e(t)å e=n.Ø(t)ë e Å e.mode=="directory"Ü
â £.isfile(t)t=e(t)å e=n.Ø(t)ë e Å e.mode=="file"Ü
â £.‰(t)t=e(t)å e=n.Ø(t)ë ç~=e
Ü
â £.filesize(t)t=e(t)å e=n.Ø(t)ë e.size
Ü
â £.¬(n)n=e(n)å e=#n
å t=ñ.∞(n,e,e)ï e>0 Å t~=ΩÉ
e=e-1
t=ñ.∞(n,e,e)Ü
ä e==0 í
ë–,n
Ü
å t=ñ.∞(n,1,e-1)å e=ñ.∞(n,e+1)ë t,e
Ü
â £.Û(n)å e={}å t=n
å n
ï ì É
t,n=£.¬(t)ä ç==n è–==n í
Ç
Ü
ó.ò(e,n)Ü
e=ß.reverse(e)ë e,#e
Ü
â £.Õ(e)å e,n=£.¬(e)ë e
Ü
â £.»(e)å n,e=£.¬(e)ë e
Ü
â £.filename(e)å n=£.»(e)å e,t=ñ.”(n,"^(.*)%.(%w*)$")ä e í
ë e,t
Ü
ë n
Ü
â £.˘(e)ë ñ.”(e,"%.%w*$")Ü
â £. (t)t=e(t)å t=£.Û(t)å e=–à o=1,#t É
e=e..t[o]ä é r(t[o])Å é £.Ê(e)í
å e,n=n. (e)ä ç==e í
ë e,n
Ü
Ü
e=e..ΩÜ
ë ì
Ü
â £.«(n)n=e(n)å e=£.Õ(n)ä e Å e~=–í
ë £. (e)Ü
ë ì
Ü
â £.rmdir(n,e)ä é £.Ê(n)í
ä e í
†("os.rmdir error:not dir:"..n)Ü
ë
Ü
n=ñ.´(n,Ω,Î)å t
ä e í
t=ñ.ù('rd /S /Q  "%s"',n)Ñ
t=ñ.ù('rd /S /Q  "%s" 1>nul',n)Ü
ä e==ì í
e=†
Ü
ä e í e(t)Ü
ë £.™(t)Ü
â £.movedir(t,n,o)ä ç==o í
o=ì
Ü
t=e(t)n=e(n)ä o í
å e=£.»(t)n=n..Ω..e
Ü
£.«(n)å e,o=£.rename(t,n)ä é e í
†("movedir failed",t,n,o)Ü
ë e
Ü
â £.copydir(n,t,o)n=e(n)t=e(t)ä é £.Ê(n)í
†("path error",n,t)ë á
Ü
n=ñ.´(n,Ω,Î)t=ñ.´(t,Ω,Î)å e
ä o í
e=ñ.ù('xcopy /Y /E /I /Q "%s" "%s"',n,t)Ñ
e=ñ.ù('xcopy /Y /E /I /Q "%s" "%s" 1>nul',n,t)Ü
ä o==ì í
o=†
Ü
ä o í o(e)Ü
£.™(e)ë ì
Ü
â £.copyfile(t,n,e)£.«(n)t=ñ.´(t,Ω,Î)n=ñ.´(n,Ω,Î)å o
ä e í
o=ñ.ù('copy /Y "%s" "%s"',t,n)Ñ
o=ñ.ù('copy /Y "%s" "%s"  1>nul',t,n)Ü
ä e==ì í
e=†
Ü
ä e í e(o)Ü
ë £.™(o)Ü
â £.movefile(t,n,o)t=e(t)n=e(n)ä é £.‰(t)í
ä o í
†("[movefile] file not exist",t,n)Ü
ë
Ü
£. (n)å e=£.»(t)n=n..Ω..e
£.‹(n)å e,r=£.rename(t,n)ä é e í
ä o í
†("[movefile] failed",t,n,r)Ü
Ü
ë e
Ü
â £.dirempty(e)å e=£.dir(e,ì)ë ó.empty(e)Ü
â £.dir(o,e,s)ä ñ.∞(o,-1,-1)==Ωí
o=ñ.∞(o,1,-2)Ü
å t=30
ä §(e)=="boolean"í
e=e==á Å 1 è t
Ö §(e)==≠í
e=e
Ñ
e=t
Ü
å l={}å r={}å â i(o,t)t=t-1
à e ã n.dir(o)É
ä e~='.'Å e~='..'í
å e=o..'/'..e
å n=n.Ø(e)ä n==ç í
Ç
Ü
å n=n.mode=='directory'ä ç==s è s(e,n)í
ä n í
ó.ò(l,e)Ñ
ó.ò(r,e)Ü
ä n Å t>0 í
i(e,t)Ü
Ü
Ü
Ü
Ü
i(o,e)ë r,l
Ü
â £.dirext(t,n,e)å e=ó.◊(e)ë £.dir(t,n,â(n,t)ä t í
ë ì
Ü
å n=£.˘(n)ä e[n]í
ë ì
Ü
ë á
Ü)Ü
Ü)°.¢['sllib.table_ext']=(â(...)å â t(e,n)à n,t ã ©(n)É
e[n]=t
Ü
Ü
å â e(n,e)à e,t ã ©(e)É
n[e]=n[e]è t
Ü
Ü
å e={æ=á,Á=ì,}t(ó,e)å â r(r)ä é æ í
ë{}Ü
å o={}å t={}å â n(e)ä o[e]í
t[e]=e
ë
Ü
o[e]=e
à t,e ã ©(e)É
ä §(t)==®í
n(t)Ö §(e)==®í
n(e)Ü
Ü
Ü
n(r)ë t
Ü
å â d(c,f,u)å n=ó.ò
å d=ó.Æ
å s={}å r=r(c)å â a(o,l,t)l=l Å(l-1)è 30
ä l<0 í
ë t.."..."Ü
t=t è–ä next(o)==ç í
ë t.."{}"Ü
ä æ í
s[o]=o
Ü
å e={}n(e,t.."{")ä r[o]í
n(e,π(o))Ü
n(e,⁄)t=t..¸ä Á è#o==0 í
à i,r ã ©(o)É
n(e,t)ä §(i)==®í
ä s[o]í
n(e,π(o))Ñ
‹(e)n(e,a(i,l,t))Ü
Ö §(i)==≠í
n(e,"["..ú(i).."]")Ñ
å t=Ò.õ(i)n(e,'["'..t..'"]')Ü
n(e," = ")ä §(r)==®í
ä s[r]í
n(e,π(r))Ñ
n(e,⁄)n(e,a(r,l,t))Ü
Ö §(r)==≠í
n(e,ú(r))Ö §(r)==Ãí
n(e,—..r..—)Ñ
n(e,Ò.õ(r))Ü
n(e,",\n")Ü
Ñ
à r,o ã ü(o)É
n(e,t)n(e,"["..ú(r).."]")n(e," = ")ä §(o)==®í
n(e,⁄)ä s[o]í
n(e,π(o))Ñ
n(e,a(o,l,t))Ü
Ö §(o)==≠í
n(e,ú(o))Ñ
n(e,—..Ò.õ(o)..—)Ü
n(e,",\n")Ü
Ü
e[#e]=","n(e,⁄..ñ.∞(t,1,-3).."}")ë d(e)Ü
ë a(c,f,u)Ü
å â l(t,o)å n=ó.ò
å i=ó.Æ
o=o Å(o-1)è 10
ä o<0 í
ë"..."Ü
å e={}n(e,"{")à r,t ã ©(t)É
ä §(r)==®í
n(e,l(r,o))n(e,"=")Ö §(r)==≠í
Ñ
n(e,'["'..Ò.õ(r)..'"]')n(e,"=")Ü
ä §(t)==®í
n(e,l(t,o))Ö §(t)==≠í
n(e,ú(t))Ö §(t)==Ãí
n(e,—..t..—)Ñ
n(e,Ò.õ(t))Ü
n(e,",")Ü
n(e,"}")ë i(e)Ü
â ó.empty(e)ë next(e)==ç
Ü
â ó.size(n)å e=0
à n,n ã ©(n)É
e=e+1
Ü
ë e
Ü
â ó.keys(n)å e={}à n,t ã ©(n è{})É
ó.ò(e,n)Ü
ë e
Ü
â ó.Ô(n)å e={}à t,n ã ©(n è{})É
ó.ò(e,n)Ü
ë e
Ü
â ó.◊(n)å e={}à n,t ã ©(n è{})É
e[t]=n
Ü
ë e
Ü
â ó.clone(n,t)å e={}ä é t í
∆(e,getmetatable(n))Ü
à n,t ã ©(n)É
e[n]=t
Ü
ë e
Ü
â ó.merge(...)å e={}à t,n ã ü({...})É
à t,n ã ©(n)É
e[t]=n
Ü
Ü
ë e
Ü
â ó.address(n)å e
ä (Ò,"_tostring")í
e=_tostring(n)Ñ
e=d(n)Ü
ë ñ.´(e,"^table: ",–)è–Ü
ó.õ=d
ó.ˆ=l
â ó.†(e)ä §(e)~=®í
Ò.†(e)Ñ
Ò.†(ó.õ(e))Ü
Ü
Ü)°.¢['sllib.string_ext']=(â(...)â ñ.strtox16(e)ë ñ.´(e,".",â(e)ë ñ.ù("%02X",ñ.byte(e))Ü)Ü
â ñ.x16tostr(e)ë ñ.´(e,"..",â(e)å e=›(e,16)ë ñ.char(e)Ü)Ü
â ñ.dumpex(e)ë ñ.´(e,".",â(e)ë ñ.ù("%02X ",ñ.byte(e))Ü)Ü
â ñ.trim(n,e)e=e è"both"ä e=="begin"í
ë(ñ.´(n,"^%s*",–))Ö e=="end"í
ë(ñ.´(n,"%s*$",–))Ö e=="both"í
n=ñ.´(n,"^%s*",–)ë(ñ.´(n,"%s*$",–))Ü
Ü
â ñ.iterateString(n,e,t)e=e è'\n'ä é ñ.”(n,e)í
t(n)ë
Ü
à e ã ñ.gmatch(n,"(.-)"..e)É
t(e)Ü
ä ñ.∞(n,#n-#e+1)==e í
t(–)ë
Ü
å e=ñ.”(n,".+"..e.."(.*)$")ä e í
t(e)Ü
Ü
â ñ.split(n,o)å e=1
å t=1
å t={}ï e É
å r,o=ñ.find(n,o,e)ä r Å o í
ó.ò(t,ñ.∞(n,e,r-1))e=o+1
Ñ
ä e<=#n í
ó.ò(t,ñ.∞(n,e,-1))Ü
Ç
Ü
Ü
ë t
Ü
â ñ.cutsub(e,t,n)n=n è 1
å t,o=ñ.find(e,t,n,ì)ä t==ç í
ë e,-1
Ü
å n=–ä t>1 í
n=n..ñ.∞(e,1,t-1)Ü
ä o<#e í
n=n..ñ.∞(e,o+1)Ü
ë n,t
Ü
â ñ.replacesub(n,t,r,e)e=e è 1
å t,o=ñ.find(n,t,e,ì)ä t==ç í
ë n,-1
Ü
å e=–ä t>1 í
e=e..ñ.∞(n,1,t-1)Ü
e=e..r
å t=ñ.len(e)+1
ä o<#n í
e=e..ñ.∞(n,o+1)Ü
ë e,t
Ü
Ü)°.¢['sllib.math_ext']=(â(...)â µ.cutf(e,n)å t,e=µ.œ(e)å e=e*µ.pow(10,n)e=µ.œ(e)e=e/µ.pow(10,n)ë t+e
Ü
Ü)°.¢['sllib.debug_ext']=(â(...)å l=ô"sllib.profiler"å s=10
å i=100
â ±.tracevalue(e,t)e=e è 2
t=t è 2
å r={}ó.ò(r,"stack tracevalue:")å l=á
å n=¸å t=e+t
ï e<t É
å t=±.Í(e,"nS")l=t.what=="main"å o={}ó.ò(o,ñ.ù(n.."file:%s line:%d function:%s()\n",t.“,t.…,t.name è–))n=n..¸à n=1,s É
å n,e=±.getlocal(e,n)ä ç==n í
Ç
Ü
ä §(e)~="function"Å n~="self"í
å t
ä §(e)==®í
t=ñ.∞(ó.ˆ(e),1,i)Ñ
t=ª(e)Ü
ó.ò(o,ª(n).."="..t)ó.ò(o,⁄)Ü
Ü
ó.ò(r,ó.Æ(o,n))ä l í
Ç
Ü
e=e+1
n=n..¸Ü
ë ó.Æ(r,⁄)Ü
±.startanalysis=â(e)l:˛(3)l:start(e)Ü
±.stopanalysis=â(e)l:stop(e)Ü
Ü)°.¢['sllib.list_ext']=(â(...)ß=ß è{}â ß.map(e,o)à n,t ã ü(e)É
e[n]=o(t,n)Ü
ë e
Ü
â ß.filter(e,o)å t={}à r,n ã ü(e)É
ä o(n,r)í
ó.ò(t,n)Ü
Ü
e=t
ë e
Ü
â ß.append(e,n)ó.ò(e,n)ë e
Ü
â ß.Æ(...)å e={}à t,n ã ü({...})É
à t,n ã ü(n)É
ó.ò(e,n)Ü
Ü
ë e
Ü
â ß.‹(e,t)à o,n ã ü(e)É
ä n==t í
ó.‹(e,o)Ç
Ü
Ü
ë e
Ü
â ß.∞(t,o,e)e=e è#t
å n={}à e=o,e É
ó.ò(n,t[e])Ü
ë n
Ü
â ß.cut(n,e)å n=ß.∞(1,e)å e=ß.∞(e+1)ë n,e
Ü
â ß.‰(e,n)à t,e ã ü(e)É
ä e==n í
ë ì
Ü
Ü
ë á
Ü
â ß.reverse(n)å e={}à t=#n,1,-1 É
ó.ò(e,n[t])Ü
ë e
Ü
â ß.mirror(e)å n={}à t,e ã ü(e)É
n[e]=e
Ü
ë n
Ü
â ß.merge(...)å e=ß.Æ(...)e=ó.◊(e)ë ó.keys(e)Ü
â ß.mergeex(n,...)å e=ß.Æ(...)e=ß.project(e,n)ë ó.Ô(e)Ü
â ß.project(n,t)å e={}à o,n ã ü(n)É
e[n[t]]=n
Ü
ë e
Ü
Ü)°.¢['sllib.set']=(â(...)ä (Ò,"set")í
â •.Ï(n,t)å e=•.„({})à n ã ©(n)É
ä •.À(t,n)í
•.ò(e,n)Ü
Ü
ë e
Ü
â •.ÿ(n)å e={}à n ã ©(n)É
ó.ò(e,n)Ü
ë e
Ü
â •.†(e)å e=•.ÿ(e)ó.†(e)Ü
ë
Ü
å e={}•={}•.¡=©
â •.„(n)å e=∆({},e)à t,n ã ü(n è{})É
•.ò(e,n)Ü
ë e
Ü
â •.À(n,e)ë (n,e)==ì
Ü
â •.ò(n,e)Ÿ(n,e,ì)Ü
â •.delete(e,n)Ÿ(e,n,ç)Ü
â •.Ï(n,t)å e=•.„()à n ã •.¡(n)É
ä •.À(t,n)í
•.ò(e,n)Ü
Ü
ë e
Ü
â •.ÿ(n)å e={}à n ã •.¡(n)É
ó.ò(e,n)Ü
ë e
Ü
â •.†(e)å e=•.ÿ(e)ó.†(e)Ü
å â i(n,t)å e=•.„()à n ã •.¡(n)É
•.ò(e,n)Ü
à n ã •.¡(t)É
•.ò(e,n)Ü
ë e
Ü
å â r(n,t)å e=•.„()à n ã •.¡(n)É
ä é •.À(t,n)í
•.ò(e,n)Ü
Ü
ë e
Ü
å â l(e,n)à e ã •.¡(e)É
ä é •.À(n,e)í
ë á
Ü
Ü
ë ì
Ü
å â o(n,t)ë •.subset(n,t)Å é •.subset(t,n)Ü
e.__index=•
e.__add=i
e.__sub=r
e.__le=l
e.__lt=o
Ü)°.¢['sllib.time']=(â(...)≤=≤ è{}â ≤.≤()ë £.≤()Ü
â ≤.≈()ë £.≈()Ü
â ≤.millitime()ô"socket.core"ë µ.œ(socket.gettime()*1e3)Ü
â ≤.sleep(e)e=e è 0
£.™(˝..›(e+1)..’)Ü
â ≤.getstr(e,n)e=e è'%c'n=n è £.≤()ë £.Ë(e,n)Ü
â ≤.getendofday(e)e=e è £.≤()å e=£.Ë('*t',e)å e=£.Ë('*t',£.≤({year=e["year"],˙=e["month"],day=e["day"],hour=23,min=59,sec=59}))å e=£.≤(e)ë e
Ü
â ≤.tohour(e)å n=µ.œ(e/3600)å t=µ.œ(µ.fmod(e,3600)/60)å e=µ.fmod(e,60)ë{hour=n,min=t,sec=e}Ü
Ü)°.¢['sllib.logs']=(â(...)¶=¶ è{}å l=á
å t=ç
å i=ì
å s=ö.∑()å â e(e)å e=ñ.´(e,"[\r\n\t]",–)ä e==–í
ë ì
Ü
ë á
Ü
å n=ì
å â a(e)ë ª(e,n)Ü
å â r()ä t í
ë t
Ü
å e=£.Ë("*t")å e=ñ.ù("%s_%s_%s.log",e.year,e.˙,e.day)t=e
ë e
Ü
å â c(e)ä é i í
ë
Ü
å n=r()‘.∫(n,e,"a+")Ü
å â o(t,e)e=á
å e=£.Ë("*t")å o=£.≈()å n=t
ä l í
n=ñ.ù("[%s-%s-%s %02s:%02s:%02s %s]%s",e.year,e.˙,e.day,e.hour,e.min,e.sec,o,t)Ü
†(n)c(n..'\n')Ü
â ¶.Ú(e)i=e
Ü
â ¶.showLogTime(e)l=e
Ü
â ¶.setLogPath(e)t=e
Ü
â ¶.clear()å e=r()ä é £.‰(e)í
ë
Ü
‘.∫(e,–)Ü
â ¶.ƒ(...)å e={...}å n=#e
å n={}à t,e ã ü(e)É
å e=a(e)ó.ò(n,e)Ü
o(ó.Æ(n,Ì))Ü
â ¶.i(...)¶.ƒ(...)Ü
â ¶.w(...)ö.∂(14)¶.ƒ(...)ä s í ö.¥()Ü
Ü
â ¶.e(...)ö.∂(12)¶.ƒ(...)å e=n
n=á
o(±.˚(–,2))n=e
ä s í ö.¥()Ü
Ü
â ¶.f(e,...)o(ñ.ù(e,...))Ü
â ¶.È(e,...)e=e è"nil"å e=ñ.ù(e,...)å e=±.˚(e,2)o(e)Ü
ë ¶
Ü)°.¢['sllib.class']=(â(...)å n={}å â r(e)e.__index=e
ë ∆({},e)Ü
â class(o,t)å e
ä t í
e=t:ﬂ(o)Ñ
e=n:ﬂ(o)Ü
e.„=â(...)å n=r(e)n.__class=e
n:ctor(...)ë n
Ü
e.create=â(n,...)ë e.„(...)Ü
ë e
Ü
â n:ctor(...)Ü
â n:dtor()Ü
â n:ﬂ(n)å e=r(û)e.__name=n
e.super=û
ë e
Ü
â n:attrReader(...)à n,e ã ü({...})É
å n="get"..ñ.upper(ñ.∞(e,1,1))..ñ.∞(e,2)û[n]=â(n)ë n[e]Ü
Ü
Ü
â n:attrWriter(...)à n,e ã ü({...})É
å n="set"..ñ.upper(ñ.∞(e,1,1))..ñ.∞(e,2)û[n]=â(n,t)n[e]=t
Ü
Ü
Ü
â n:include(...)à n,e ã ü({...})É
à n,e ã ©(e)É
û[n]=e
Ü
Ü
Ü
â n:delegate(n,e)à t,e ã ü(e)É
û[e]=â(t,...)ë n[e](n,...)Ü
Ü
Ü
Ü)°.¢['sllib.profiler']=(â(...)å e={}â e:setLogFunc(e)û.¿=e
Ü
â e:˛(e)û.Â=e
Ü
â e:start(e)e=e è"profile"û.¿=†
ä e=="trace"í
±.‚(bind(û.·,û),'c')Ñ
û.≥={}û.¯=£.≈()û.Â=3
±.‚(bind(û.÷,û),'cr')Ü
Ü
â e:stop(e)e=e è"profile"±.‚()ä e=="trace"í
ë
Ü
û.stopTime=£.≈()å n=û.stopTime-û.¯
ä n<.001 í
û.¿("total time less 0.001s")ë
Ü
å e=ó.Ô(û.≥)ó.sort(e,â(e,n)ë e.¨>n.¨
Ü)à t,e ã ü(e)É
å n=(e.¨/n)*100
ä n<1 í
Ç
Ü
å e=ñ.ù("time:%6.3f, percent:%.2f%%, count:%d, %s",e.¨,n,e.√,e.title)û.¿(e)Ü
Ü
â e:·()å e=±.Í(û.Â,'nS')å e=ñ.ù("file:%s line:%d function:%s()",e.“,e.…,e.name è–)û.¿(e)Ü
â e:Ó(e)å t=e.name è'anonymous'å n=e.“ è'C_FUNC'å e=e.… è 0
ë ñ.ù("file:%s line:%s function:%s",n,e,t)Ü
â e:ø(e)å n=û:Ó(e)å e=û.≥[n]ä é e í
e={title=n,√=0,¨=0,}û.≥[n]=e
Ü
ë e
Ü
â e:÷(n)å t=â(e)å e=û:ø(e)e.º=£.≈()e.√=e.√+1
Ü
å o=â(e)å n=£.≈()å e=û:ø(e)ä e.º Å e.º>0 í
e.¨=e.¨+(n-e.º)e.º=0
Ü
Ü
å e=±.Í(û.Â,'nS')ä e í
ä n=="call"í
t(e)Ö n=="return"í
o(e)Ü
Ü
Ü
ë e
Ü)Ÿ(Ò,"SLLIB_VERSION","1.1.2")ô"sllib.console"ô"sllib.global"ô"sllib.lang"ô"sllib.io_ext"ô"sllib.os_ext"ô"sllib.table_ext"ô"sllib.string_ext"ô"sllib.list_ext"ô"sllib.set"ô"sllib.math_ext"ô"sllib.debug_ext"ô"sllib.time"ô"sllib.logs"ô"sllib.class"enum=ó.◊
log=log è ¶.i
logw=logw è ¶.w
loge=loge è ¶.e
logf=logf è ¶.f
È=È è ¶.È
ˇ=ˇ è ¶.clear
writeLogInFile=¶.Ú
€=€ è ó.€
Œ=Œ è load
Ÿ(Ò,"bind",â(e,...)å n={...}assert(e,"bind params error")ë â(...)å n=ß.Æ(n,{...})ë e(€(n))Ü
Ü)â ª(e)ä §(e)==Ãí
ë—..e..—Ö §(e)==®í
ë ó.õ(e)Ö §(e)==≠í
ë ú(e)Ñ
å e=õ(e)èﬁë e
Ü
Ü
]===], '@sllib_base.lua'))()