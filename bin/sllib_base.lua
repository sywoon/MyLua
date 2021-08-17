loadstring = loadstring or load 
local base_char,keywords=128,{"and","break","do","else","elseif","end","false","for","function","if","in","local","nil","not","or","repeat","return","then","true","until","while","string","table","insert","tostring","require","console","numbertostring","format","print","self","ipairs","preload","package","os","set","type","logs","list","\"table\"","pairs","execute","time","gsub","totaltime","\"number\"","attributes","concat","debug","sub","math","reportsByTitle","resetColor","setColor","isSupportLineColor","tableAddress","defaultColor","millitime","writeFile","any2str","calltime","__showInnerRef","\"/\"","elems","callcount","_showLogs","getFuncReport","clock","splitpath","logFunc","setmetatable","mkpredir","basename","linedefined","member","mkdir","\"string\"","\"\"","loadstring","modf","dirname","'\"'","match","short_src","io","unpack","invert","rawset","tolist","profilingHandler","\" localhost > NUL\"","\"\\n\"","remove","\"Unknown object!\"","subClass","readFile","tonumber","tracingHandler","getinfo","__keyCanBeNum","date","exist","isdir","trace","sethook","level","new","getFuncTitle","'\\t'","\"\\\\\"","intersection","values","splitpathex","writeInFile","_G","rawget","tostringex","currentdir","\"color %02X\"","month","traceback","close","startTime","extension","clearLog","_VERSION","stopTime",}; function prettify(code) return code:gsub("["..string.char(base_char).."-"..string.char(base_char+#keywords).."]", 
	function (c) return keywords[c:byte()-base_char]; end) end return assert(loadstring(prettify[===[¢.°['sllib.console']=(â(...)å e=˛=="Lua 5.3"Å 1 è 0
å n
ä e==1 í
n=ö"console.core"Ü
õ=õ è{}õ.π=7
â õ.∑()ë e==1
Ü
â õ.setDefaultColor(e)õ.π=e
Ü
â õ.∂(t)ä e==1 í
ë n:setTextColor(t)Ñ
å e=ñ.ù(˜,t)ë £.™(e)Ü
Ü
â õ.µ()ä e==1 í
õ.∂(õ.π)Ñ
å e=ñ.ù(˜,õ.π)ë £.™(e)Ü
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
]]û(e)Ü
Ü)¢.°['sllib.global']=(â(...)â ú(e)ä e<0 í
ë"-"..ú(-e)Ü
ä e<=10^13 í
ë ô(e)Ü
ä ≥.–(e)~=e í
ë ô(e)Ü
å n=≥.fmod(e,10^13)å e=≥.–(e/10^13)å e=ñ.ù("%s%013s",ô(e),ô(n))ë e
Ü
â º(e,n)ä •(e)==Õí
ä n Å e~=‹í
ë“..e..“Ñ
ë e
Ü
Ö •(e)==®í
ë ó.ô(e)Ö •(e)==Æí
ë ú(e)Ñ
å e=ô(e)èﬁë e
Ü
Ü
â _F(e,...)ë ñ.ù(e,...)Ü
å e=õ.∑()â printw(...)õ.∂(14)û(...)ä e í õ.µ()Ü
Ü
â printe(...)õ.∂(12)û(...)ä e í õ.µ()Ü
Ü
Ü)¢.°['sllib.lang']=(â(...)ä ˛=="Lua 5.1"í
printu=û
ë
Ü
å n=ö"charset"â _U2A(e)e=ô(e)ë n.u2a(e)Ü
â _A2U(e)e=ô(e)ë n.a2u(e)Ü
å â n(e,...)e=e èÌå t={...}å n={}à t,e ã †(t)É
ó.ò(n,_U2A(º(e)))Ü
å e=ó.∞(n,e)ë e
Ü
â printu(...)å e=n(Ì,...)û(e)Ü
â printuw(...)å e=n(Ì,...)printw(e)Ü
â printue(...)å e=n(Ì,...)printe(e)Ü
Ü)¢.°['sllib.io_ext']=(â(...)â ’.‡(n,e)e=e è"r"å e=’.open(n,e)ä e==ç í
ë ç
Ü
å n=e:read("*a")e:˙()ë n
Ü
â ’.ª(t,n,e)e=e è"w"å e=’.open(t,e)ä e==ç í
ë á
Ü
e:write(n)e:˙()ë ì
Ü
â ’.fileSize(e)å n=0
å e=’.open(e,"r")ä e í
å t=e:seek()n=e:seek("end")e:seek("set",t)’.˙(e)Ü
ë n
Ü
â ’.readJsonFile(e,n)å e=’.‡(e)ä ç==e è e==Œí
ë ç
Ü
ä n í
e=n(e)Ü
å n=ö"cjson"è ö"json"å e=n.decode(e)ë e
Ü
â ’.writeJsonFile(o,r,n,t)ä ç==n í n=ì Ü
å e=£.—(o)£.Ã(e)å e=ö"cjson"è ö"json"å e=e.encode(r)ä n í
e=ñ.¨(e,"\\/",ø)e=ñ.¨(e,"\\\\",ø)Ü
ä t í
e=t(e)Ü
’.ª(o,e)ë ì
Ü
â ’.readLuaFile(e,n)å e=’.‡(e)ä ç==e í
ë ç
Ü
ä n í
e=n(e)Ü
å n=œ è load
å e=n(e)()ë e
Ü
â ’.writeLuaFile(n,e,t)å o=£.—(n)£.Ã(o)ä ç==ó.ô í
ë á
Ü
å e=ó.ô(e)ä ç==e í
ë á
Ü
ä t í
e=t(e)Ü
’.ª(n,e)ë ì
Ü
Ü)¢.°['sllib.os_ext']=(â(...)å n=ö"lfs"â £.pause(e)ä e í
£.™(_F('cmd /c echo "%s" && pause',e))Ñ
£.™("cmd /c pause")Ü
Ü
â £.sleep(e)e=e è 1
£.™("ping -n "..·(e+1)..€)Ü
å â e(e,n)e=ñ.¨(e,Ó,ø)e=ñ.¨(e,"//",ø)ä ñ.byte(e,-1)==47 í
ä é n í
e=ñ.≤(e,1,-2)Ü
Ñ
ä n í
e=e..øÜ
Ü
ë e
Ü
£.fixPath=e
å â r(e)ë ñ.”(e,"^%a:")Ü
â £.newfile(e)£.»(e)å e="echo.>"..e
£.™(e)Ü
â £.ˆ()ë n.ˆ()Ü
â £.chdir(e)ë n.chdir(e)Ü
â £.filetime(t)t=e(t)å e=n.Ø(t)ë e Å e.modification è 0
Ü
â £.Á(t)t=e(t)å e=n.Ø(t)ë e Å e.mode=="directory"Ü
â £.isfile(t)t=e(t)å e=n.Ø(t)ë e Å e.mode=="file"Ü
â £.Ê(t)t=e(t)å e=n.Ø(t)ë ç~=e
Ü
â £.filesize(t)t=e(t)å e=n.Ø(t)ë e.size
Ü
â £.≈(n)n=e(n)å e=#n
å t=ñ.≤(n,e,e)ï e>0 Å t~=øÉ
e=e-1
t=ñ.≤(n,e,e)Ü
ä e==0 í
ëŒ,n
Ü
å t=ñ.≤(n,1,e-1)å e=ñ.≤(n,e+1)ë t,e
Ü
â £.Ò(n)å e={}å t=n
å n
ï ì É
t,n=£.≈(t)ä ç==n èŒ==n í
Ç
Ü
ó.ò(e,n)Ü
e=ß.reverse(e)ë e,#e
Ü
â £.—(e)å e,n=£.≈(e)ë e
Ü
â £.…(e)å n,e=£.≈(e)ë e
Ü
â £.filename(e)å e=£.…(e)å n,t=ñ.”(e,"^(.*)%.(%w*)$")ä n í
ë n,t
Ü
ë e
Ü
â £.¸(e)ë ñ.”(e,"%.%w*$")Ü
â £.Ã(t)t=e(t)å t=£.Ò(t)å e=Œà o=1,#t É
e=e..t[o]ä é r(t[o])Å é £.Á(e)í
å e,n=n.Ã(e)ä ç==e í
ë e,n
Ü
Ü
e=e..øÜ
ë ì
Ü
â £.»(n)n=e(n)å e=£.—(n)ä e Å e~=Œí
ë £.Ã(e)Ü
ë ì
Ü
â £.rmdir(e,n)ä é £.Á(e)í
ä n í
û("os.rmdir error:not dir:"..e)Ü
ë
Ü
e=ñ.¨(e,ø,Ó)å t
ä n í
t=ñ.ù('rd /S /Q  "%s"',e)Ñ
t=ñ.ù('rd /S /Q  "%s" 1>nul',e)Ü
ä n==ì í
n=û
Ü
ä n í n(t)Ü
ë £.™(t)Ü
â £.movedir(t,n,o)ä ç==o í
o=ì
Ü
t=e(t)n=e(n)ä o í
å e=£.…(t)n=n..ø..e
Ü
£.»(n)å e,o=£.rename(t,n)ä é e í
û("movedir failed",t,n,o)Ü
ë e
Ü
â £.copydir(n,t,o)n=e(n)t=e(t)ä é £.Á(n)í
û("path error",n,t)ë á
Ü
n=ñ.¨(n,ø,Ó)t=ñ.¨(t,ø,Ó)å e
ä o í
e=ñ.ù('xcopy /Y /E /I /Q "%s" "%s"',n,t)Ñ
e=ñ.ù('xcopy /Y /E /I /Q "%s" "%s" 1>nul',n,t)Ü
ä o==ì í
o=û
Ü
ä o í o(e)Ü
£.™(e)ë ì
Ü
â £.copyfile(t,n,e)£.»(n)t=ñ.¨(t,ø,Ó)n=ñ.¨(n,ø,Ó)å o
ä e í
o=ñ.ù('copy /Y "%s" "%s"',t,n)Ñ
o=ñ.ù('copy /Y "%s" "%s"  1>nul',t,n)Ü
ä e==ì í
e=û
Ü
ä e í e(o)Ü
ë £.™(o)Ü
â £.movefile(t,n,o)t=e(t)n=e(n)ä é £.Ê(t)í
ä o í
û("[movefile] file not exist",t,n)Ü
ë
Ü
£.Ã(n)å e=£.…(t)n=n..ø..e
£.›(n)å e,r=£.rename(t,n)ä é e í
ä o í
û("[movefile] failed",t,n,r)Ü
Ü
ë e
Ü
â £.dirempty(e)å e=£.dir(e,ì)ë ó.empty(e)Ü
â £.dir(t,e,o)ä ñ.≤(t,-1,-1)==øí
t=ñ.≤(t,1,-2)Ü
å r=30
ä •(e)=="boolean"í
e=e==á Å 1 è r
Ö •(e)==Æí
e=e
Ñ
e=r
Ü
å r={}å i={}å â s(l,t)t=t-1
à e ã n.dir(l)É
ä e~='.'Å e~='..'í
å e=l..'/'..e
å n=n.Ø(e)ä n==ç í
Ç
Ü
å n=n.mode=='directory'ä ç==o è o(e,n)í
ä n í
ó.ò(r,e)Ñ
ó.ò(i,e)Ü
ä n Å t>0 í
s(e,t)Ü
Ü
Ü
Ü
Ü
s(t,e)ë i,r
Ü
â £.dirext(e,n,t)å t=ó.◊(t)ë £.dir(e,n,â(n,e)ä e í
ë ì
Ü
å e=£.¸(n)ä t[e]í
ë ì
Ü
ë á
Ü)Ü
Ü)¢.°['sllib.table_ext']=(â(...)å â t(e,n)à n,t ã ©(n)É
e[n]=t
Ü
Ü
å â e(e,n)à n,t ã ©(n)É
e[n]=e[n]è t
Ü
Ü
å e={æ=á,‰=ì,}t(ó,e)å â r(r)ä é æ í
ë{}Ü
å t={}å o={}å â n(e)ä t[e]í
o[e]=e
ë
Ü
t[e]=e
à e,t ã ©(e)É
ä •(e)==®í
n(e)Ö •(t)==®í
n(t)Ü
Ü
Ü
n(r)ë o
Ü
å â c(c,f,d)å n=ó.ò
å u=ó.∞
å s={}å r=r(c)å â a(o,i,t)i=i Å(i-1)è 30
ä i<0 í
ë t.."..."Ü
t=t èŒä next(o)==ç í
ë t.."{}"Ü
ä æ í
s[o]=o
Ü
å e={}n(e,t.."{")ä r[o]í
n(e,∏(o))Ü
n(e,‹)t=t.."  "ä ‰ è#o==0 í
à l,r ã ©(o)É
n(e,t)ä •(l)==®í
ä s[o]í
n(e,∏(o))Ñ
›(e)n(e,a(l,i,t))Ü
Ö •(l)==Æí
n(e,"["..ú(l).."]")Ñ
å t=Û.ô(l)n(e,'["'..t..'"]')Ü
n(e," = ")ä •(r)==®í
ä s[r]í
n(e,∏(r))Ñ
n(e,‹)n(e,a(r,i,t))Ü
Ö •(r)==Æí
n(e,ú(r))Ö •(r)==Õí
n(e,“..r..“)Ñ
n(e,Û.ô(r))Ü
n(e,",\n")Ü
Ñ
à r,o ã †(o)É
n(e,t)n(e,"["..ú(r).."]")n(e," = ")ä •(o)==®í
n(e,‹)ä s[o]í
n(e,∏(o))Ñ
n(e,a(o,i,t))Ü
Ö •(o)==Æí
n(e,ú(o))Ñ
n(e,“..Û.ô(o)..“)Ü
n(e,",\n")Ü
Ü
e[#e]=","n(e,‹..ñ.≤(t,1,-3).."}")ë u(e)Ü
ë a(c,f,d)Ü
å â i(t,o)å n=ó.ò
å l=ó.∞
o=o Å(o-1)è 10
ä o<0 í
ë"..."Ü
å e={}n(e,"{")à r,t ã ©(t)É
ä •(r)==®í
n(e,i(r,o))n(e,"=")Ö •(r)==Æí
Ñ
n(e,'["'..Û.ô(r)..'"]')n(e,"=")Ü
ä •(t)==®í
n(e,i(t,o))Ö •(t)==Æí
n(e,ú(t))Ö •(t)==Õí
n(e,“..t..“)Ñ
n(e,Û.ô(t))Ü
n(e,",")Ü
n(e,"}")ë l(e)Ü
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
â ó.(n)å e={}à t,n ã ©(n è{})É
ó.ò(e,n)Ü
ë e
Ü
â ó.◊(n)å e={}à n,t ã ©(n è{})É
e[t]=n
Ü
ë e
Ü
â ó.clone(n,t)å e={}ä é t í
«(e,getmetatable(n))Ü
à n,t ã ©(n)É
e[n]=t
Ü
ë e
Ü
â ó.merge(...)å e={}à t,n ã †({...})É
à t,n ã ©(n)É
e[t]=n
Ü
Ü
ë e
Ü
â ó.address(n)å e
ä Ù(Û,"_tostring")í
e=_tostring(n)Ñ
e=c(n)Ü
ë ñ.¨(e,"^table: ",Œ)èŒÜ
ó.ô=c
ó.ı=i
â ó.û(e)ä •(e)~=®í
Û.û(e)Ñ
Û.û(ó.ô(e))Ü
Ü
Ü)¢.°['sllib.string_ext']=(â(...)â ñ.strtox16(e)ë ñ.¨(e,".",â(e)ë ñ.ù("%02X",ñ.byte(e))Ü)Ü
â ñ.x16tostr(e)ë ñ.¨(e,"..",â(e)å e=·(e,16)ë ñ.char(e)Ü)Ü
â ñ.dumpex(e)ë ñ.¨(e,".",â(e)ë ñ.ù("%02X ",ñ.byte(e))Ü)Ü
â ñ.trim(e,n)n=n è"both"ä n=="begin"í
ë(ñ.¨(e,"^%s*",Œ))Ö n=="end"í
ë(ñ.¨(e,"%s*$",Œ))Ö n=="both"í
e=ñ.¨(e,"^%s*",Œ)ë(ñ.¨(e,"%s*$",Œ))Ü
Ü
â ñ.iterateString(n,e,t)e=e è'\n'ä é ñ.”(n,e)í
t(n)ë
Ü
à e ã ñ.gmatch(n,"(.-)"..e)É
t(e)Ü
ä ñ.≤(n,#n-#e+1)==e í
t(Œ)ë
Ü
å e=ñ.”(n,".+"..e.."(.*)$")ä e í
t(e)Ü
Ü
â ñ.split(n,o)å e=1
å t=1
å t={}ï e É
å o,r=ñ.find(n,o,e)ä o Å r í
ó.ò(t,ñ.≤(n,e,o-1))e=r+1
Ñ
ä e<=#n í
ó.ò(t,ñ.≤(n,e,-1))Ü
Ç
Ü
Ü
ë t
Ü
â ñ.cutsub(n,t,e)e=e è 1
å t,o=ñ.find(n,t,e,ì)ä t==ç í
ë n,-1
Ü
å e=Œä t>1 í
e=e..ñ.≤(n,1,t-1)Ü
ä o<#n í
e=e..ñ.≤(n,o+1)Ü
ë e,t
Ü
â ñ.replacesub(n,t,r,e)e=e è 1
å t,o=ñ.find(n,t,e,ì)ä t==ç í
ë n,-1
Ü
å e=Œä t>1 í
e=e..ñ.≤(n,1,t-1)Ü
e=e..r
å t=ñ.len(e)+1
ä o<#n í
e=e..ñ.≤(n,o+1)Ü
ë e,t
Ü
Ü)¢.°['sllib.math_ext']=(â(...)ä é ≥.pow í
≥.pow=â(n,e)ë n^e
Ü
Ü
â ≥.cutf(e,n)å t,e=≥.–(e)å e=e*≥.pow(10,n)e=≥.–(e)e=e/≥.pow(10,n)ë t+e
Ü
Ü)¢.°['sllib.debug_ext']=(â(...)å r=ö"sllib.profiler"å s=10
å l=100
â ±.tracevalue(e,t)e=e è 2
t=t è 2
å r={}ó.ò(r,"stack tracevalue:")å i=á
å n="  "å t=e+t
ï e<t É
å t=±.„(e,"nS")i=t.what=="main"å o={}ó.ò(o,ñ.ù(n.."file:%s line:%d function:%s()\n",t.‘,t. ,t.name èŒ))n=n.."  "à n=1,s É
å t,e=±.getlocal(e,n)ä ç==t í
Ç
Ü
ä •(e)~="function"Å t~="self"í
å n
ä •(e)==®í
n=ñ.≤(ó.ı(e),1,l)Ñ
n=º(e)Ü
ó.ò(o,º(t).."="..n)ó.ò(o,‹)Ü
Ü
ó.ò(r,ó.∞(o,n))ä i í
Ç
Ü
e=e+1
n=n.."  "Ü
ë ó.∞(r,‹)Ü
±.startanalysis=â(e)r:setLevel(3)r:start(e)Ü
±.stopanalysis=â(e)r:stop(e)Ü
Ü)¢.°['sllib.list_ext']=(â(...)ß=ß è{}â ß.map(e,t)à n,o ã †(e)É
e[n]=t(o,n)Ü
ë e
Ü
â ß.filter(e,r)å n={}à o,t ã †(e)É
ä r(t,o)í
ó.ò(n,t)Ü
Ü
e=n
ë e
Ü
â ß.append(e,n)ó.ò(e,n)ë e
Ü
â ß.∞(...)å e={}à t,n ã †({...})É
à t,n ã †(n)É
ó.ò(e,n)Ü
Ü
ë e
Ü
â ß.›(e,n)à t,o ã †(e)É
ä o==n í
ó.›(e,t)Ç
Ü
Ü
ë e
Ü
â ß.≤(n,o,e)e=e è#n
å t={}à e=o,e É
ó.ò(t,n[e])Ü
ë t
Ü
â ß.cut(n,e)å n=ß.≤(1,e)å e=ß.≤(e+1)ë n,e
Ü
â ß.Ê(e,n)à t,e ã †(e)É
ä e==n í
ë ì
Ü
Ü
ë á
Ü
â ß.reverse(e)å n={}à t=#e,1,-1 É
ó.ò(n,e[t])Ü
ë n
Ü
â ß.mirror(n)å e={}à t,n ã †(n)É
e[n]=n
Ü
ë e
Ü
â ß.merge(...)å e=ß.∞(...)e=ó.◊(e)ë ó.keys(e)Ü
â ß.mergeex(n,...)å e=ß.∞(...)e=ß.project(e,n)ë ó.(e)Ü
â ß.project(e,t)å n={}à o,e ã †(e)É
n[e[t]]=e
Ü
ë n
Ü
Ü)¢.°['sllib.set']=(â(...)ä Ù(Û,"set")í
â §.Ô(n,t)å e=§.Î({})à n ã ©(n)É
ä §.À(t,n)í
§.ò(e,n)Ü
Ü
ë e
Ü
â §.Ÿ(n)å e={}à n ã ©(n)É
ó.ò(e,n)Ü
ë e
Ü
â §.û(e)å e=§.Ÿ(e)ó.û(e)Ü
ë
Ü
å e={}§={}§.¿=©
â §.Î(n)å e=«({},e)à t,n ã †(n è{})É
§.ò(e,n)Ü
ë e
Ü
â §.À(n,e)ë Ù(n,e)==ì
Ü
â §.ò(n,e)ÿ(n,e,ì)Ü
â §.delete(n,e)ÿ(n,e,ç)Ü
â §.Ô(n,t)å e=§.Î()à n ã §.¿(n)É
ä §.À(t,n)í
§.ò(e,n)Ü
Ü
ë e
Ü
â §.Ÿ(n)å e={}à n ã §.¿(n)É
ó.ò(e,n)Ü
ë e
Ü
â §.û(e)å e=§.Ÿ(e)ó.û(e)Ü
å â i(n,t)å e=§.Î()à n ã §.¿(n)É
§.ò(e,n)Ü
à n ã §.¿(t)É
§.ò(e,n)Ü
ë e
Ü
å â o(e,t)å n=§.Î()à e ã §.¿(e)É
ä é §.À(t,e)í
§.ò(n,e)Ü
Ü
ë n
Ü
å â r(n,e)à n ã §.¿(n)É
ä é §.À(e,n)í
ë á
Ü
Ü
ë ì
Ü
å â l(n,t)ë §.subset(n,t)Å é §.subset(t,n)Ü
e.__index=§
e.__add=i
e.__sub=o
e.__le=r
e.__lt=l
Ü)¢.°['sllib.time']=(â(...)´=´ è{}â ´.´()ë £.´()Ü
â ´.ƒ()ë £.ƒ()Ü
â ´.∫()ä £.∫ í
ë £.∫()Ü
ö"socket.core"ë(≥.–(socket.gettime()*1e3))Ü
â ´.sleep(e)e=e è 0
£.™("ping -n "..·(e+1)..€)Ü
â ´.getstr(n,e)n=n è'%c'e=e è £.´()ë £.Â(n,e)Ü
â ´.getendofday(e)e=e è £.´()å e=£.Â('*t',e)å e=£.Â('*t',£.´({year=e["year"],¯=e["month"],day=e["day"],hour=23,min=59,sec=59}))å e=£.´(e)ë e
Ü
â ´.tohour(e)å t=≥.–(e/3600)å n=≥.–(≥.fmod(e,3600)/60)å e=≥.fmod(e,60)ë{hour=t,min=n,sec=e}Ü
Ü)¢.°['sllib.logs']=(â(...)¶=¶ è{}å a=á
å o=ç
å s=ì
å l=õ.∑()å r={}å â e(e)å e=ñ.¨(e,"[\r\n\t]",Œ)ä e==Œí
ë ì
Ü
ë á
Ü
å t=ì
å â d(e)ë º(e,t)Ü
å â i()ä o í
ë o
Ü
å e=£.Â("*t")å e=ñ.ù("%s_%s_%s.log",e.year,e.¯,e.day)o=e
ë e
Ü
å â c(n)ä é s í
ë
Ü
å e=i()’.ª(e,n,"a+")Ü
å â n(t,e)e=á
å e=£.Â("*t")å o=£.ƒ()å n=t
ä a í
n=ñ.ù("[%s-%s-%s %02s:%02s:%02s %s]%s",e.year,e.¯,e.day,e.hour,e.min,e.sec,o,t)Ü
û(n)c(n..'\n')Ü
â ¶.Ú(e)s=e
Ü
â ¶.showLogTime(e)a=e
Ü
â ¶.setLogPath(e)o=e
Ü
â ¶.clear()å e=i()ä é £.Ê(e)í
ë
Ü
’.ª(e,Œ)Ü
â ¶.¬(...)å t={...}å e=#t
å e={}à o,t ã †(t)É
å n=d(t)ó.ò(e,n)Ü
n(ó.∞(e,Ì))Ü
â ¶.i(...)¶.¬(...)Ü
â ¶.w(...)õ.∂(14)¶.¬(...)ä l í õ.µ()Ü
Ü
â ¶.e(...)õ.∂(12)¶.¬(...)å e=t
t=á
n(±.˘(Œ,2))t=e
ä l í õ.µ()Ü
Ü
â ¶.f(e,...)n(ñ.ù(e,...))Ü
â ¶.Ë(e,...)e=e è"nil"å e=ñ.ù(e,...)å e=±.˘(e,2)n(e)Ü
â ¶.´(e)e=ô(e)r[e]=´.∫()Ü
â ¶.timeEnd(e)e=ô(e)ä é r[e]í
ë
Ü
å n=´.∫()-r[e]û(_F("%s:%d",e,n))Ü
ë ¶
Ü)¢.°['sllib.class']=(â(...)å n={}å â t(e)e.__index=e
ë «({},e)Ü
â class(o,r)å e
ä r í
e=r:ﬂ(o)Ñ
e=n:ﬂ(o)Ü
e.Î=â(...)å n=t(e)n.__class=e
n:ctor(...)ë n
Ü
e.create=â(n,...)ë e.Î(...)Ü
ë e
Ü
â n:ctor(...)Ü
â n:dtor()Ü
â n:ﬂ(n)å e=t(ü)e.__name=n
e.super=ü
ë e
Ü
â n:attrReader(...)à n,e ã †({...})É
å n="get"..ñ.upper(ñ.≤(e,1,1))..ñ.≤(e,2)ü[n]=â(n)ë n[e]Ü
Ü
Ü
â n:attrWriter(...)à n,e ã †({...})É
å n="set"..ñ.upper(ñ.≤(e,1,1))..ñ.≤(e,2)ü[n]=â(t,n)t[e]=n
Ü
Ü
Ü
â n:include(...)à n,e ã †({...})É
à n,e ã ©(e)É
ü[n]=e
Ü
Ü
Ü
â n:delegate(e,n)à t,n ã †(n)É
ü[n]=â(t,...)ë e[n](e,...)Ü
Ü
Ü
Ü)¢.°['sllib.profiler']=(â(...)å e={}â e:setLogFunc(e)ü.∆=e
Ü
â e:setLevel(e)ü.Í=e
Ü
â e:start(e)e=e è"profile"ü.∆=û
ä e=="trace"í
±.È(bind(ü.‚,ü),'c')Ñ
ü.¥={}ü.˚=£.ƒ()ü.Í=3
±.È(bind(ü.⁄,ü),'cr')Ü
Ü
â e:stop(e)e=e è"profile"±.È()ä e=="trace"í
ë
Ü
ü.ˇ=£.ƒ()å n=ü.ˇ-ü.˚
ä n<.001 í
ü.∆("total time less 0.001s")ë
Ü
å e=ó.(ü.¥)ó.sort(e,â(n,e)ë n.≠>e.≠
Ü)à t,e ã †(e)É
å n=(e.≠/n)*100
ä n<1 í
Ç
Ü
å e=ñ.ù("time:%6.3f, percent:%.2f%%, count:%d, %s",e.≠,n,e.¡,e.title)ü.∆(e)Ü
Ü
â e:‚()å e=±.„(ü.Í,'nS')å e=ñ.ù("file:%s line:%d function:%s()",e.‘,e. ,e.name èŒ)ü.∆(e)Ü
â e:Ï(e)å n=e.name è'anonymous'å t=e.‘ è'C_FUNC'å e=e.  è 0
ë ñ.ù("file:%s line:%s function:%s",t,e,n)Ü
â e:√(e)å n=ü:Ï(e)å e=ü.¥[n]ä é e í
e={title=n,¡=0,≠=0,}ü.¥[n]=e
Ü
ë e
Ü
â e:⁄(n)å o=â(e)å e=ü:√(e)e.Ω=£.ƒ()e.¡=e.¡+1
Ü
å t=â(e)å n=£.ƒ()å e=ü:√(e)ä e.Ω Å e.Ω>0 í
e.≠=e.≠+(n-e.Ω)e.Ω=0
Ü
Ü
å e=±.„(ü.Í,'nS')ä e í
ä n=="call"í
o(e)Ö n=="return"í
t(e)Ü
Ü
Ü
ë e
Ü)ÿ(Û,"SLLIB_VERSION","1.1.2")ö"sllib.console"ö"sllib.global"ö"sllib.lang"ö"sllib.io_ext"ö"sllib.os_ext"ö"sllib.table_ext"ö"sllib.string_ext"ö"sllib.list_ext"ö"sllib.set"ö"sllib.math_ext"ö"sllib.debug_ext"ö"sllib.time"ö"sllib.logs"ö"sllib.class"enum=ó.◊
log=log è ¶.i
logw=logw è ¶.w
loge=loge è ¶.e
logf=logf è ¶.f
Ë=Ë è ¶.Ë
˝=˝ è ¶.clear
writeLogInFile=¶.Ú
÷=÷ è ó.÷
œ=œ è load
ÿ(Û,"bind",â(e,...)å n={...}assert(e,"bind params error")ë â(...)å n=ß.∞(n,{...})ë e(÷(n))Ü
Ü)â º(e)ä •(e)==Õí
ë“..e..“Ö •(e)==®í
ë ó.ô(e)Ö •(e)==Æí
ë ú(e)Ñ
å e=ô(e)èﬁë e
Ü
Ü
]===], '@sllib_base.lua'))()