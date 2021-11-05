loadstring = loadstring or load 
local base_char,keywords=128,{"and","break","do","else","elseif","end","false","for","function","if","in","local","nil","not","or","repeat","return","then","true","until","while","string","table","insert","tostring","require","console","numbertostring","format","print","ipairs","self","preload","package","os","set","type","logs","list","\"table\"","pairs","execute","time","gsub","totaltime","\"number\"","concat","attributes","sub","debug","math","reportsByTitle","resetColor","setColor","isSupportLineColor","tableAddress","defaultColor","writeFile","millitime","any2str","calltime","__showInnerRef","clock","_showLogs","getFuncReport","logFunc","\"/\"","callcount","elems","splitpath","setmetatable","basename","mkpredir","mkdir","member","linedefined","\"string\"","loadstring","\"\"","dirname","modf","'\"'","io","short_src","match","profilingHandler","invert","unpack","remove","rawset","\"\\n\"","tolist","\" localhost > NUL\"","tonumber","readFile","subClass","\"Unknown object!\"","\"\\\\\"","tracingHandler","isdir","getinfo","trace","exist","date","level","new","sethook","__keyCanBeNum","'\\t'","intersection","getFuncTitle","values","rawget","_G","writeInFile","splitpathex","currentdir","\"color %02X\"","replacesub","tostringex","traceback","extension","month","close","startTime","clearLog","stopTime",}; function prettify(code) return code:gsub("["..string.char(base_char).."-"..string.char(base_char+#keywords).."]", 
	function (c) return keywords[c:byte()-base_char]; end) end return assert(loadstring(prettify[===[¢.°['sllib.console']=(â(...)å e=_VERSION=="Lua 5.3"Å 1 è 0
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
å e=ñ.ù(ˆ,t)ë £.™(e)Ü
Ü
â õ.µ()ä e==1 í
õ.∂(õ.π)Ñ
å e=ñ.ù(ˆ,õ.π)ë £.™(e)Ü
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
ä ≥.—(e)~=e í
ë ô(e)Ü
å n=≥.fmod(e,10^13)å e=≥.—(e/10^13)å e=ñ.ù("%s%013s",ô(e),ô(n))ë e
Ü
â º(e,n)ä •(e)==Õí
ä n Å e~=€í
ë“..e..“Ñ
ë e
Ü
Ö •(e)==®í
ë ó.ô(e)Ö •(e)==Æí
ë ú(e)Ñ
å e=ô(e)è·ë e
Ü
Ü
â _F(e,...)ë ñ.ù(e,...)Ü
å e=õ.∑()â printw(...)õ.∂(14)û(...)ä e í õ.µ()Ü
Ü
â printe(...)õ.∂(12)û(...)ä e í õ.µ()Ü
Ü
Ü)¢.°['sllib.lang']=(â(...)ä _VERSION=="Lua 5.1"í
printu=û
ë
Ü
å n=ö"charset"â _U2A(e)e=ô(e)ë n.u2a(e)Ü
â _A2U(e)e=ô(e)ë n.a2u(e)Ü
å â n(e,...)e=e èÌå t={...}å n={}à t,e ã ü(t)É
ó.ò(n,_U2A(º(e)))Ü
å e=ó.Ø(n,e)ë e
Ü
â printu(...)å e=n(Ì,...)û(e)Ü
â printuw(...)å e=n(Ì,...)printw(e)Ü
â printue(...)å e=n(Ì,...)printe(e)Ü
Ü)¢.°['sllib.io_ext']=(â(...)â ”.ﬂ(n,e)e=e è"r"å e=”.open(n,e)ä e==ç í
ë ç
Ü
å n=e:read("*a")e:¸()ë n
Ü
â ”.∫(n,t,e)e=e è"w"å e=”.open(n,e)ä e==ç í
ë á
Ü
e:write(t)e:¸()ë ì
Ü
â ”.fileSize(e)å n=0
å e=”.open(e,"r")ä e í
å t=e:seek()n=e:seek("end")e:seek("set",t)”.¸(e)Ü
ë n
Ü
â ”.readJsonFile(e,n)å e=”.ﬂ(e)ä ç==e è e==œí
ë ç
Ü
ä n í
e=n(e)Ü
å n=ö"cjson"è ö"json"å e=n.decode(e)ë e
Ü
â ”.writeJsonFile(o,r,n,t)ä ç==n í n=ì Ü
å e=£.–(o)£. (e)å e=ö"cjson"è ö"json"å e=e.encode(r)ä n í
e=ñ.¨(e,"\\/",√)e=ñ.¨(e,"\\\\",‚)Ü
ä t í
e=t(e)Ü
”.∫(o,e)ë ì
Ü
â ”.readLuaFile(e,n)å e=”.ﬂ(e)ä ç==e í
ë ç
Ü
ä n í
e=n(e)Ü
å n=Œ è load
å e=n(e)()ë e
Ü
â ”.writeLuaFile(t,o,n)å e=£.–(t)£. (e)ä ç==ó.ô í
ë á
Ü
å e=ó.ô(o)ä ç==e í
ë á
Ü
ä n í
e=n(e)Ü
”.∫(t,e)ë ì
Ü
Ü)¢.°['sllib.os_ext']=(â(...)å n=ö"lfs"â £.pause(e)ä e í
£.™(_F('cmd /c echo "%s" && pause',e))Ñ
£.™("cmd /c pause")Ü
Ü
â £.sleep(e)e=e è 1
£.™("ping -n "..ﬁ(e+1)..›)Ü
å â e(e,n)e=ñ.¨(e,‚,√)e=ñ.¨(e,"//",√)ä ñ.byte(e,-1)==47 í
ä é n í
e=ñ.±(e,1,-2)Ü
Ñ
ä n í
e=e..√Ü
Ü
ë e
Ü
£.fixPath=e
å â r(e)ë ñ.’(e,"^%a:")Ü
â £.newfile(e)£.…(e)å e="echo.>"..e
£.™(e)Ü
â £.ı()ë n.ı()Ü
â £.chdir(e)ë n.chdir(e)Ü
â £.filetime(t)t=e(t)å e=n.∞(t)ë e Å e.modification è 0
Ü
â £.‰(t)t=e(t)å e=n.∞(t)ë e Å e.mode=="directory"Ü
â £.isfile(t)t=e(t)å e=n.∞(t)ë e Å e.mode=="file"Ü
â £.Á(t)t=e(t)å e=n.∞(t)ë ç~=e
Ü
â £.filesize(t)t=e(t)å e=n.∞(t)ë e.size
Ü
â £.∆(n)n=e(n)å e=#n
å t=ñ.±(n,e,e)ï e>0 Å t~=√É
e=e-1
t=ñ.±(n,e,e)Ü
ä e==0 í
ëœ,n
Ü
å t=ñ.±(n,1,e-1)å e=ñ.±(n,e+1)ë t,e
Ü
â £.Ù(n)å e={}å t=n
å n
ï ì É
t,n=£.∆(t)ä ç==n èœ==n í
Ç
Ü
ó.ò(e,n)Ü
e=ß.reverse(e)ë e,#e
Ü
â £.–(e)å e,n=£.∆(e)ë e
Ü
â £.»(e)å n,e=£.∆(e)ë e
Ü
â £.filename(e)å n=£.»(e)å e,t=ñ.’(n,"^(.*)%.(%w*)$")ä e í
ë e,t
Ü
ë n
Ü
â £.˙(e)ë ñ.’(e,"%.%w*$")Ü
â £. (t)t=e(t)å t=£.Ù(t)å e=œà o=1,#t É
e=e..t[o]ä é r(t[o])Å é £.‰(e)í
å e,n=n. (e)ä ç==e í
ë e,n
Ü
Ü
e=e..√Ü
ë ì
Ü
â £.…(n)n=e(n)å e=£.–(n)ä e Å e~=œí
ë £. (e)Ü
ë ì
Ü
â £.rmdir(e,n)ä é £.‰(e)í
ä n í
û("os.rmdir error:not dir:"..e)Ü
ë
Ü
e=ñ.¨(e,√,‚)å t
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
å e=£.»(t)n=n..√..e
Ü
£.…(n)å e,o=£.rename(t,n)ä é e í
û("movedir failed",t,n,o)Ü
ë e
Ü
â £.copydir(n,t,o)n=e(n)t=e(t)ä é £.‰(n)í
û("path error",n,t)ë á
Ü
n=ñ.¨(n,√,‚)t=ñ.¨(t,√,‚)å e
ä o í
e=ñ.ù('xcopy /Y /E /I /Q "%s" "%s"',n,t)Ñ
e=ñ.ù('xcopy /Y /E /I /Q "%s" "%s" 1>nul',n,t)Ü
ä o==ì í
o=û
Ü
ä o í o(e)Ü
£.™(e)ë ì
Ü
â £.copyfile(t,n,e)£.…(n)t=ñ.¨(t,√,‚)n=ñ.¨(n,√,‚)å o
ä e í
o=ñ.ù('copy /Y "%s" "%s"',t,n)Ñ
o=ñ.ù('copy /Y "%s" "%s"  1>nul',t,n)Ü
ä e==ì í
e=û
Ü
ä e í e(o)Ü
ë £.™(o)Ü
â £.movefile(t,n,o)t=e(t)n=e(n)ä é £.Á(t)í
ä o í
û("[movefile] file not exist",t,n)Ü
ë
Ü
£. (n)å e=£.»(t)n=n..√..e
£.Ÿ(n)å e,r=£.rename(t,n)ä é e í
ä o í
û("[movefile] failed",t,n,r)Ü
Ü
ë e
Ü
â £.dirempty(e)å e=£.dir(e,ì)ë ó.empty(e)Ü
â £.dir(o,e,l)ä ñ.±(o,-1,-1)==√í
o=ñ.±(o,1,-2)Ü
å t=30
ä •(e)=="boolean"í
e=e==á Å 1 è t
Ö •(e)==Æí
e=e
Ñ
e=t
Ü
å i={}å r={}å â s(o,t)t=t-1
à e ã n.dir(o)É
ä e~='.'Å e~='..'í
å e=o..'/'..e
å n=n.∞(e)ä n==ç í
û("file can't read",e)Ñ
å n=n.mode=='directory'ä ç==l è l(e,n)í
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
s(o,e)ë r,i
Ü
â £.dirext(o,n,e)å t=ó.◊(e)ë £.dir(o,n,â(n,e)ä e í
ë ì
Ü
å e=£.˙(n)ä t[e]í
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
å e={æ=á,Ï=ì,}t(ó,e)å â r(r)ä é æ í
ë{}Ü
å t={}å o={}å â n(e)ä t[e]í
o[e]=e
ë
Ü
t[e]=e
à t,e ã ©(e)É
ä •(t)==®í
n(t)Ö •(e)==®í
n(e)Ü
Ü
Ü
n(r)ë o
Ü
å â d(c,f,d)å n=ó.ò
å u=ó.Ø
å s={}å r=r(c)å â a(o,i,t)i=i Å(i-1)è 30
ä i<0 í
ë t.."..."Ü
t=t èœä next(o)==ç í
ë t.."{}"Ü
ä æ í
s[o]=o
Ü
å e={}n(e,t.."{")ä r[o]í
n(e,∏(o))Ü
n(e,€)t=t.."  "ä Ï è#o==0 í
à l,r ã ©(o)É
n(e,t)ä •(l)==®í
ä s[o]í
n(e,∏(o))Ñ
Ÿ(e)n(e,a(l,i,t))Ü
Ö •(l)==Æí
n(e,"["..ú(l).."]")Ñ
å t=Ú.ô(l)n(e,'["'..t..'"]')Ü
n(e," = ")ä •(r)==®í
ä s[r]í
n(e,∏(r))Ñ
n(e,€)n(e,a(r,i,t))Ü
Ö •(r)==Æí
n(e,ú(r))Ö •(r)==Õí
n(e,“..r..“)Ñ
n(e,Ú.ô(r))Ü
n(e,",\n")Ü
Ñ
à r,o ã ü(o)É
n(e,t)n(e,"["..ú(r).."]")n(e," = ")ä •(o)==®í
n(e,€)ä s[o]í
n(e,∏(o))Ñ
n(e,a(o,i,t))Ü
Ö •(o)==Æí
n(e,ú(o))Ñ
n(e,“..Ú.ô(o)..“)Ü
n(e,",\n")Ü
Ü
e[#e]=","n(e,€..ñ.±(t,1,-3).."}")ë u(e)Ü
ë a(c,f,d)Ü
å â i(t,o)å n=ó.ò
å l=ó.Ø
o=o Å(o-1)è 10
ä o<0 í
ë"..."Ü
å e={}n(e,"{")à r,t ã ©(t)É
ä •(r)==®í
n(e,i(r,o))n(e,"=")Ö •(r)==Æí
Ñ
n(e,'["'..Ú.ô(r)..'"]')n(e,"=")Ü
ä •(t)==®í
n(e,i(t,o))Ö •(t)==Æí
n(e,ú(t))Ö •(t)==Õí
n(e,“..t..“)Ñ
n(e,Ú.ô(t))Ü
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
â ó.◊(n)å e={}à t,n ã ©(n è{})É
e[n]=t
Ü
ë e
Ü
â ó.clone(n,t)å e={}ä é t í
«(e,getmetatable(n))Ü
à t,n ã ©(n)É
e[t]=n
Ü
ë e
Ü
â ó.merge(...)å e={}à t,n ã ü({...})É
à n,t ã ©(n)É
e[n]=t
Ü
Ü
ë e
Ü
â ó.address(n)å e
ä Ò(Ú,"_tostring")í
e=_tostring(n)Ñ
e=d(n)Ü
ë ñ.¨(e,"^table: ",œ)èœÜ
ó.ô=d
ó.¯=i
â ó.û(e)ä •(e)~=®í
Ú.û(e)Ñ
Ú.û(ó.ô(e))Ü
Ü
Ü)¢.°['sllib.string_ext']=(â(...)â ñ.strtox16(e)ë ñ.¨(e,".",â(e)ë ñ.ù("%02X",ñ.byte(e))Ü)Ü
â ñ.x16tostr(e)ë ñ.¨(e,"..",â(e)å e=ﬁ(e,16)ë ñ.char(e)Ü)Ü
â ñ.dumpex(e)ë ñ.¨(e,".",â(e)ë ñ.ù("%02X ",ñ.byte(e))Ü)Ü
â ñ.trim(n,e)e=e è"both"ä e=="begin"í
ë(ñ.¨(n,"^%s*",œ))Ö e=="end"í
ë(ñ.¨(n,"%s*$",œ))Ö e=="both"í
n=ñ.¨(n,"^%s*",œ)ë(ñ.¨(n,"%s*$",œ))Ü
Ü
â ñ.iterateString(n,e,t)e=e è'\n'ä é ñ.’(n,e)í
t(n)ë
Ü
à e ã ñ.gmatch(n,"(.-)"..e)É
t(e)Ü
ä ñ.±(n,#n-#e+1)==e í
t(œ)ë
Ü
å e=ñ.’(n,".+"..e.."(.*)$")ä e í
t(e)Ü
Ü
â ñ.split(n,o)å e=1
å t=1
å t={}ï e É
å o,r=ñ.find(n,o,e)ä o Å r í
ó.ò(t,ñ.±(n,e,o-1))e=r+1
Ñ
ä e<=#n í
ó.ò(t,ñ.±(n,e,-1))Ü
Ç
Ü
Ü
ë t
Ü
â ñ.cutsub(e,t,n)n=n è 1
å t,o=ñ.find(e,t,n,ì)ä t==ç í
ë e,-1
Ü
å n=œä t>1 í
n=n..ñ.±(e,1,t-1)Ü
ä o<#e í
n=n..ñ.±(e,o+1)Ü
ë n,t
Ü
â ñ.˜(n,t,r,e)e=e è 1
å t,o=ñ.find(n,t,e,ì)ä t==ç í
ë n,-1
Ü
å e=œä t>1 í
e=e..ñ.±(n,1,t-1)Ü
e=e..r
å t=ñ.len(e)+1
ä o<#n í
e=e..ñ.±(n,o+1)Ü
ë e,t
Ü
â ñ.replacesubAll(n,t,o,e)e=e è 1
å e=e
ê
n,e=ñ.˜(n,t,o,e)î e==-1
ë n
Ü
Ü)¢.°['sllib.math_ext']=(â(...)ä é ≥.pow í
≥.pow=â(n,e)ë n^e
Ü
Ü
â ≥.cutf(e,n)å t,e=≥.—(e)å e=e*≥.pow(10,n)e=≥.—(e)e=e/≥.pow(10,n)ë t+e
Ü
Ü)¢.°['sllib.debug_ext']=(â(...)å i=ö"sllib.profiler"å l=10
å s=100
â ≤.tracevalue(e,t)e=e è 2
t=t è 2
å r={}ó.ò(r,"stack tracevalue:")å i=á
å n="  "å t=e+t
ï e<t É
å o=≤.Â(e,"nS")i=o.what=="main"å t={}ó.ò(t,ñ.ù(n.."file:%s line:%d function:%s()\n",o.‘,o.Ã,o.name èœ))n=n.."  "à n=1,l É
å n,e=≤.getlocal(e,n)ä ç==n í
Ç
Ü
ä •(e)~="function"Å n~="self"í
å o
ä •(e)==®í
o=ñ.±(ó.¯(e),1,s)Ñ
o=º(e)Ü
ó.ò(t,º(n).."="..o)ó.ò(t,€)Ü
Ü
ó.ò(r,ó.Ø(t,n))ä i í
Ç
Ü
e=e+1
n=n.."  "Ü
ë ó.Ø(r,€)Ü
≤.startanalysis=â(e)i:setLevel(3)i:start(e)Ü
≤.stopanalysis=â(e)i:stop(e)Ü
Ü)¢.°['sllib.list_ext']=(â(...)ß=ß è{}â ß.map(e,t)à n,o ã ü(e)É
e[n]=t(o,n)Ü
ë e
Ü
â ß.filter(e,r)å t={}à o,n ã ü(e)É
ä r(n,o)í
ó.ò(t,n)Ü
Ü
e=t
ë e
Ü
â ß.append(e,n)ó.ò(e,n)ë e
Ü
â ß.Ø(...)å e={}à t,n ã ü({...})É
à t,n ã ü(n)É
ó.ò(e,n)Ü
Ü
ë e
Ü
â ß.indexOf(e,n)à t,e ã ü(e)É
ä e==n í
ë t
Ü
Ü
ë-1
Ü
â ß.Ÿ(e,t)à o,n ã ü(e)É
ä n==t í
ó.Ÿ(e,o)Ç
Ü
Ü
ë e
Ü
â ß.±(t,o,e)e=e è#t
å n={}à e=o,e É
ó.ò(n,t[e])Ü
ë n
Ü
â ß.cut(n,e)å n=ß.±(1,e)å e=ß.±(e+1)ë n,e
Ü
â ß.Á(e,n)à t,e ã ü(e)É
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
â ß.merge(...)å e=ß.Ø(...)e=ó.◊(e)ë ó.keys(e)Ü
â ß.mergeex(n,...)å e=ß.Ø(...)e=ß.project(e,n)ë ó.(e)Ü
â ß.project(n,t)å e={}à o,n ã ü(n)É
e[n[t]]=n
Ü
ë e
Ü
Ü)¢.°['sllib.set']=(â(...)ä Ò(Ú,"set")í
â §.Ó(e,t)å n=§.Í({})à e ã ©(e)É
ä §.À(t,e)í
§.ò(n,e)Ü
Ü
ë n
Ü
â §.‹(n)å e={}à n ã ©(n)É
ó.ò(e,n)Ü
ë e
Ü
â §.û(e)å e=§.‹(e)ó.û(e)Ü
ë
Ü
å e={}§={}§.≈=©
â §.Í(n)å e=«({},e)à t,n ã ü(n è{})É
§.ò(e,n)Ü
ë e
Ü
â §.À(n,e)ë Ò(n,e)==ì
Ü
â §.ò(n,e)⁄(n,e,ì)Ü
â §.delete(e,n)⁄(e,n,ç)Ü
â §.Ó(n,t)å e=§.Í()à n ã §.≈(n)É
ä §.À(t,n)í
§.ò(e,n)Ü
Ü
ë e
Ü
â §.‹(n)å e={}à n ã §.≈(n)É
ó.ò(e,n)Ü
ë e
Ü
â §.û(e)å e=§.‹(e)ó.û(e)Ü
å â l(n,t)å e=§.Í()à n ã §.≈(n)É
§.ò(e,n)Ü
à n ã §.≈(t)É
§.ò(e,n)Ü
ë e
Ü
å â i(e,t)å n=§.Í()à e ã §.≈(e)É
ä é §.À(t,e)í
§.ò(n,e)Ü
Ü
ë n
Ü
å â r(e,n)à e ã §.≈(e)É
ä é §.À(n,e)í
ë á
Ü
Ü
ë ì
Ü
å â o(t,n)ë §.subset(t,n)Å é §.subset(n,t)Ü
e.__index=§
e.__add=l
e.__sub=i
e.__le=r
e.__lt=o
Ü)¢.°['sllib.time']=(â(...)´=´ è{}â ´.´()ë £.´()Ü
â ´.ø()ë £.ø()Ü
â ´.ª()ä £.ª í
ë £.ª()Ü
å e=ö"socket.core"ë(≥.—(e.gettime()*1e3))Ü
â ´.sleep(e)e=e è 0
£.™("ping -n "..ﬁ(e+1)..›)Ü
â ´.getstr(e,n)e=e è'%c'n=n è £.´()ë £.Ë(e,n)Ü
â ´.getendofday(e)e=e è £.´()å e=£.Ë('*t',e)å e=£.Ë('*t',£.´({year=e["year"],˚=e["month"],day=e["day"],hour=23,min=59,sec=59}))å e=£.´(e)ë e
Ü
â ´.tohour(e)å t=≥.—(e/3600)å n=≥.—(≥.fmod(e,3600)/60)å e=≥.fmod(e,60)ë{hour=t,min=n,sec=e}Ü
Ü)¢.°['sllib.logs']=(â(...)¶=¶ è{}å i=á
å o=ç
å a=ì
å s=õ.∑()å r={}å â e(e)å e=ñ.¨(e,"[\r\n\t]",œ)ä e==œí
ë ì
Ü
ë á
Ü
å n=ì
å â c(e)ë º(e,n)Ü
å â l()ä o í
ë o
Ü
å e=£.Ë("*t")å e=ñ.ù("%s_%s_%s.log",e.year,e.˚,e.day)o=e
ë e
Ü
å â d(n)ä é a í
ë
Ü
å e=l()”.∫(e,n,"a+")Ü
å â t(t,e)e=á
å e=£.Ë("*t")å o=£.ø()å n=t
ä i í
n=ñ.ù("[%s-%s-%s %02s:%02s:%02s %s]%s",e.year,e.˚,e.day,e.hour,e.min,e.sec,o,t)Ü
û(n)d(n..'\n')Ü
â ¶.Û(e)a=e
Ü
â ¶.showLogTime(e)i=e
Ü
â ¶.setLogPath(e)o=e
Ü
â ¶.clear()å e=l()ä é £.Á(e)í
ë
Ü
”.∫(e,œ)Ü
â ¶.¿(...)å n={...}å e=#n
å e={}à o,n ã ü(n)É
å n=c(n)ó.ò(e,n)Ü
t(ó.Ø(e,Ì))Ü
â ¶.i(...)¶.¿(...)Ü
â ¶.w(...)õ.∂(14)¶.¿(...)ä s í õ.µ()Ü
Ü
â ¶.e(...)õ.∂(12)¶.¿(...)å e=n
n=á
t(≤.˘(œ,2))n=e
ä s í õ.µ()Ü
Ü
â ¶.f(e,...)t(ñ.ù(e,...))Ü
â ¶.Ê(e,...)e=e è"nil"å e=ñ.ù(e,...)å e=≤.˘(e,2)t(e)Ü
â ¶.´(e)e=ô(e)r[e]=´.ª()Ü
â ¶.timeEnd(e)e=ô(e)ä é r[e]í
ë
Ü
å n=´.ª()-r[e]û(_F("%s:%d",e,n))Ü
ë ¶
Ü)¢.°['sllib.class']=(â(...)å n={}å â t(e)e.__index=e
ë «({},e)Ü
â class(o,r)å e
ä r í
e=r:‡(o)Ñ
e=n:‡(o)Ü
e.Í=â(...)å n=t(e)n.__class=e
n:ctor(...)ë n
Ü
e.create=â(n,...)ë e.Í(...)Ü
ë e
Ü
â n:ctor(...)Ü
â n:dtor()Ü
â n:‡(n)å e=t(†)e.__name=n
e.super=†
ë e
Ü
â n:attrReader(...)à n,e ã ü({...})É
å n="get"..ñ.upper(ñ.±(e,1,1))..ñ.±(e,2)†[n]=â(n)ë n[e]Ü
Ü
Ü
â n:attrWriter(...)à n,e ã ü({...})É
å n="set"..ñ.upper(ñ.±(e,1,1))..ñ.±(e,2)†[n]=â(t,n)t[e]=n
Ü
Ü
Ü
â n:include(...)à n,e ã ü({...})É
à n,e ã ©(e)É
†[n]=e
Ü
Ü
Ü
â n:delegate(e,n)à t,n ã ü(n)É
†[n]=â(t,...)ë e[n](e,...)Ü
Ü
Ü
Ü)¢.°['sllib.profiler']=(â(...)å e={}â e:setLogFunc(e)†.¬=e
Ü
â e:setLevel(e)†.È=e
Ü
â e:start(e)e=e è"profile"†.¬=û
ä e=="trace"í
≤.Î(bind(†.„,†),'c')Ñ
†.¥={}†.˝=£.ø()†.È=3
≤.Î(bind(†.÷,†),'cr')Ü
Ü
â e:stop(e)e=e è"profile"≤.Î()ä e=="trace"í
ë
Ü
†.ˇ=£.ø()å n=†.ˇ-†.˝
ä n<.001 í
†.¬("total time less 0.001s")ë
Ü
å e=ó.(†.¥)ó.sort(e,â(n,e)ë n.≠>e.≠
Ü)à t,e ã ü(e)É
å n=(e.≠/n)*100
ä n<1 í
Ç
Ü
å e=ñ.ù("time:%6.3f, percent:%.2f%%, count:%d, %s",e.≠,n,e.ƒ,e.title)†.¬(e)Ü
Ü
â e:„()å e=≤.Â(†.È,'nS')å e=ñ.ù("file:%s line:%d function:%s()",e.‘,e.Ã,e.name èœ)†.¬(e)Ü
â e:Ô(e)å t=e.name è'anonymous'å n=e.‘ è'C_FUNC'å e=e.Ã è 0
ë ñ.ù("file:%s line:%s function:%s",n,e,t)Ü
â e:¡(e)å n=†:Ô(e)å e=†.¥[n]ä é e í
e={title=n,ƒ=0,≠=0,}†.¥[n]=e
Ü
ë e
Ü
â e:÷(n)å o=â(e)å e=†:¡(e)e.Ω=£.ø()e.ƒ=e.ƒ+1
Ü
å t=â(e)å n=£.ø()å e=†:¡(e)ä e.Ω Å e.Ω>0 í
e.≠=e.≠+(n-e.Ω)e.Ω=0
Ü
Ü
å e=≤.Â(†.È,'nS')ä e í
ä n=="call"í
o(e)Ö n=="return"í
t(e)Ü
Ü
Ü
ë e
Ü)⁄(Ú,"SLLIB_VERSION","1.1.2")ö"sllib.console"ö"sllib.global"ö"sllib.lang"ö"sllib.io_ext"ö"sllib.os_ext"ö"sllib.table_ext"ö"sllib.string_ext"ö"sllib.list_ext"ö"sllib.set"ö"sllib.math_ext"ö"sllib.debug_ext"ö"sllib.time"ö"sllib.logs"ö"sllib.class"enum=ó.◊
log=log è ¶.i
logw=logw è ¶.w
loge=loge è ¶.e
logf=logf è ¶.f
Ê=Ê è ¶.Ê
˛=˛ è ¶.clear
writeLogInFile=¶.Û
ÿ=ÿ è ó.ÿ
Œ=Œ è load
⁄(Ú,"bind",â(e,...)å n={...}assert(e,"bind params error")ë â(...)å n=ß.Ø(n,{...})ë e(ÿ(n))Ü
Ü)â º(e)ä •(e)==Õí
ë“..e..“Ö •(e)==®í
ë ó.ô(e)Ö •(e)==Æí
ë ú(e)Ñ
å e=ô(e)è·ë e
Ü
Ü
]===], '@sllib_base.lua'))()