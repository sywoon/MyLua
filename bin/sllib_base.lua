loadstring = loadstring or load 
local base_char,keywords=128,{"and","break","do","else","elseif","end","false","for","function","if","in","local","nil","not","or","repeat","return","then","true","until","while","string","table","insert","tostring","require","console","numbertostring","format","print","self","ipairs","preload","package","os","set","type","logs","list","\"table\"","pairs","execute","gsub","time","totaltime","\"number\"","concat","attributes","debug","sub","reportsByTitle","resetColor","math","setColor","isSupportLineColor","tableAddress","defaultColor","millitime","writeFile","any2str","calltime","\"/\"","__showInnerRef","callcount","getFuncReport","logFunc","splitpath","clock","_showLogs","elems","setmetatable","mkpredir","basename","mkdir","member","linedefined","\"string\"","\"\"","dirname","loadstring","modf","'\"'","short_src","io","match","unpack","tolist","rawset","\"\\n\"","\" localhost > NUL\"","invert","remove","profilingHandler","tonumber","readFile","\"Unknown object!\"","subClass","tracingHandler","sethook","new","__keyCanBeNum","getinfo","exist","isdir","date","level","trace","\"\\\\\"","'\\t'","intersection","getFuncTitle","_G","writeInFile","values","rawget","splitpathex","\"color %02X\"","tostringex","currentdir","close","traceback","startTime","extension","month","clearLog","_VERSION","stopTime",}; function prettify(code) return code:gsub("["..string.char(base_char).."-"..string.char(base_char+#keywords).."]", 
	function (c) return keywords[c:byte()-base_char]; end) end return assert(loadstring(prettify[===[¢.°['sllib.console']=(â(...)å e=˛=="Lua 5.3"Å 1 è 0
å t
ä e==1 í
t=ö"console.core"Ü
õ=õ è{}õ.π=7
â õ.∑()ë e==1
Ü
â õ.setDefaultColor(e)õ.π=e
Ü
â õ.∂(n)ä e==1 í
ë t:setTextColor(n)Ñ
å e=ñ.ù(ı,n)ë £.™(e)Ü
Ü
â õ.¥()ä e==1 í
õ.∂(õ.π)Ñ
å e=ñ.ù(ı,õ.π)ë £.™(e)Ü
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
ä µ.—(e)~=e í
ë ô(e)Ü
å n=µ.fmod(e,10^13)å e=µ.—(e/10^13)å e=ñ.ù("%s%013s",ô(e),ô(n))ë e
Ü
â º(e,n)ä •(e)==Õí
ä n Å e~=Ÿí
ë“..e..“Ñ
ë e
Ü
Ö •(e)==®í
ë ó.ô(e)Ö •(e)==Æí
ë ú(e)Ñ
å e=ô(e)è‡ë e
Ü
Ü
â _F(e,...)ë ñ.ù(e,...)Ü
å e=õ.∑()â printw(...)õ.∂(14)û(...)ä e í õ.¥()Ü
Ü
â printe(...)õ.∂(12)û(...)ä e í õ.¥()Ü
Ü
Ü)¢.°['sllib.lang']=(â(...)ä ˛=="Lua 5.1"í
printu=û
ë
Ü
å n=ö"charset"â _U2A(e)e=ô(e)ë n.u2a(e)Ü
â _A2U(e)e=ô(e)ë n.a2u(e)Ü
å â e(e,...)e=e èÌå t={...}å n={}à t,e ã †(t)É
ó.ò(n,_U2A(º(e)))Ü
å e=ó.Ø(n,e)ë e
Ü
â printu(...)å e=e(Ì,...)û(e)Ü
â printuw(...)å e=e(Ì,...)printw(e)Ü
â printue(...)å e=e(Ì,...)printe(e)Ü
Ü)¢.°['sllib.io_ext']=(â(...)â ‘.ﬂ(n,e)e=e è"r"å e=‘.open(n,e)ä e==ç í
ë ç
Ü
å n=e:read("*a")e:¯()ë n
Ü
â ‘.ª(t,n,e)e=e è"w"å e=‘.open(t,e)ä e==ç í
ë á
Ü
e:write(n)e:¯()ë ì
Ü
â ‘.fileSize(e)å n=0
å e=‘.open(e,"r")ä e í
å t=e:seek()n=e:seek("end")e:seek("set",t)‘.¯(e)Ü
ë n
Ü
â ‘.readJsonFile(e,n)å e=‘.ﬂ(e)ä ç==e è e==Œí
ë ç
Ü
ä n í
e=n(e)Ü
å n=ö"cjson"è ö"json"å e=n.decode(e)ë e
Ü
â ‘.writeJsonFile(o,r,n,t)ä ç==n í n=ì Ü
å e=£.œ(o)£. (e)å e=ö"cjson"è ö"json"å e=e.encode(r)ä n í
e=ñ.´(e,"\\/",æ)e=ñ.´(e,"\\\\",æ)Ü
ä t í
e=t(e)Ü
‘.ª(o,e)ë ì
Ü
â ‘.readLuaFile(e,n)å e=‘.ﬂ(e)ä ç==e í
ë ç
Ü
ä n í
e=n(e)Ü
å n=– è load
å e=n(e)()ë e
Ü
â ‘.writeLuaFile(t,e,n)å o=£.œ(t)£. (o)ä ç==ó.ô í
ë á
Ü
å e=ó.ô(e)ä ç==e í
ë á
Ü
ä n í
e=n(e)Ü
‘.ª(t,e)ë ì
Ü
Ü)¢.°['sllib.os_ext']=(â(...)å n=ö"lfs"â £.pause(e)ä e í
£.™(_F('cmd /c echo "%s" && pause',e))Ñ
£.™("cmd /c pause")Ü
Ü
â £.sleep(e)e=e è 1
£.™("ping -n "..ﬁ(e+1)..⁄)Ü
å â e(e,n)e=ñ.´(e,Ï,æ)e=ñ.´(e,"//",æ)ä ñ.byte(e,-1)==47 í
ä é n í
e=ñ.≤(e,1,-2)Ü
Ñ
ä n í
e=e..æÜ
Ü
ë e
Ü
£.fixPath=e
å â r(e)ë ñ.’(e,"^%a:")Ü
â £.newfile(e)£.»(e)å e="echo.>"..e
£.™(e)Ü
â £.˜()ë n.˜()Ü
â £.chdir(e)ë n.chdir(e)Ü
â £.filetime(t)t=e(t)å e=n.∞(t)ë e Å e.modification è 0
Ü
â £.Ë(t)t=e(t)å e=n.∞(t)ë e Å e.mode=="directory"Ü
â £.isfile(t)t=e(t)å e=n.∞(t)ë e Å e.mode=="file"Ü
â £.Á(t)t=e(t)å e=n.∞(t)ë ç~=e
Ü
â £.filesize(t)t=e(t)å e=n.∞(t)ë e.size
Ü
â £.√(n)n=e(n)å e=#n
å t=ñ.≤(n,e,e)ï e>0 Å t~=æÉ
e=e-1
t=ñ.≤(n,e,e)Ü
ä e==0 í
ëŒ,n
Ü
å t=ñ.≤(n,1,e-1)å e=ñ.≤(n,e+1)ë t,e
Ü
â £.Ù(n)å e={}å t=n
å n
ï ì É
t,n=£.√(t)ä ç==n èŒ==n í
Ç
Ü
ó.ò(e,n)Ü
e=ß.reverse(e)ë e,#e
Ü
â £.œ(e)å e,n=£.√(e)ë e
Ü
â £.…(e)å n,e=£.√(e)ë e
Ü
â £.filename(e)å e=£.…(e)å n,t=ñ.’(e,"^(.*)%.(%w*)$")ä n í
ë n,t
Ü
ë e
Ü
â £.˚(e)ë ñ.’(e,"%.%w*$")Ü
â £. (t)t=e(t)å t=£.Ù(t)å e=Œà o=1,#t É
e=e..t[o]ä é r(t[o])Å é £.Ë(e)í
å e,n=n. (e)ä ç==e í
ë e,n
Ü
Ü
e=e..æÜ
ë ì
Ü
â £.»(n)n=e(n)å e=£.œ(n)ä e Å e~=Œí
ë £. (e)Ü
ë ì
Ü
â £.rmdir(n,e)ä é £.Ë(n)í
ä e í
û("os.rmdir error:not dir:"..n)Ü
ë
Ü
n=ñ.´(n,æ,Ï)å t
ä e í
t=ñ.ù('rd /S /Q  "%s"',n)Ñ
t=ñ.ù('rd /S /Q  "%s" 1>nul',n)Ü
ä e==ì í
e=û
Ü
ä e í e(t)Ü
ë £.™(t)Ü
â £.movedir(t,n,o)ä ç==o í
o=ì
Ü
t=e(t)n=e(n)ä o í
å e=£.…(t)n=n..æ..e
Ü
£.»(n)å e,o=£.rename(t,n)ä é e í
û("movedir failed",t,n,o)Ü
ë e
Ü
â £.copydir(n,t,o)n=e(n)t=e(t)ä é £.Ë(n)í
û("path error",n,t)ë á
Ü
n=ñ.´(n,æ,Ï)t=ñ.´(t,æ,Ï)å e
ä o í
e=ñ.ù('xcopy /Y /E /I /Q "%s" "%s"',n,t)Ñ
e=ñ.ù('xcopy /Y /E /I /Q "%s" "%s" 1>nul',n,t)Ü
ä o==ì í
o=û
Ü
ä o í o(e)Ü
£.™(e)ë ì
Ü
â £.copyfile(t,n,e)£.»(n)t=ñ.´(t,æ,Ï)n=ñ.´(n,æ,Ï)å o
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
£. (n)å e=£.…(t)n=n..æ..e
£.‹(n)å e,r=£.rename(t,n)ä é e í
ä o í
û("[movefile] failed",t,n,r)Ü
Ü
ë e
Ü
â £.dirempty(e)å e=£.dir(e,ì)ë ó.empty(e)Ü
â £.dir(o,e,s)ä ñ.≤(o,-1,-1)==æí
o=ñ.≤(o,1,-2)Ü
å t=30
ä •(e)=="boolean"í
e=e==á Å 1 è t
Ö •(e)==Æí
e=e
Ñ
e=t
Ü
å l={}å i={}å â r(o,t)t=t-1
à e ã n.dir(o)É
ä e~='.'Å e~='..'í
å e=o..'/'..e
å n=n.∞(e)ä n==ç í
Ç
Ü
å n=n.mode=='directory'ä ç==s è s(e,n)í
ä n í
ó.ò(l,e)Ñ
ó.ò(i,e)Ü
ä n Å t>0 í
r(e,t)Ü
Ü
Ü
Ü
Ü
r(o,e)ë i,l
Ü
â £.dirext(e,n,t)å t=ó.€(t)ë £.dir(e,n,â(n,e)ä e í
ë ì
Ü
å e=£.˚(n)ä t[e]í
ë ì
Ü
ë á
Ü)Ü
Ü)¢.°['sllib.table_ext']=(â(...)å â o(t,e)à n,e ã ©(e)É
t[n]=e
Ü
Ü
å â e(e,n)à n,t ã ©(n)É
e[n]=e[n]è t
Ü
Ü
å e={ø=á,Â=ì,}o(ó,e)å â r(r)ä é ø í
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
å â d(c,d,f)å n=ó.ò
å u=ó.Ø
å s={}å r=r(c)å â a(o,i,t)i=i Å(i-1)è 30
ä i<0 í
ë t.."..."Ü
t=t èŒä next(o)==ç í
ë t.."{}"Ü
ä ø í
s[o]=o
Ü
å e={}n(e,t.."{")ä r[o]í
n(e,∏(o))Ü
n(e,Ÿ)t=t.."  "ä Â è#o==0 í
à l,r ã ©(o)É
n(e,t)ä •(l)==®í
ä s[o]í
n(e,∏(o))Ñ
‹(e)n(e,a(l,i,t))Ü
Ö •(l)==Æí
n(e,"["..ú(l).."]")Ñ
å t=.ô(l)n(e,'["'..t..'"]')Ü
n(e," = ")ä •(r)==®í
ä s[r]í
n(e,∏(r))Ñ
n(e,Ÿ)n(e,a(r,i,t))Ü
Ö •(r)==Æí
n(e,ú(r))Ö •(r)==Õí
n(e,“..r..“)Ñ
n(e,.ô(r))Ü
n(e,",\n")Ü
Ñ
à r,o ã †(o)É
n(e,t)n(e,"["..ú(r).."]")n(e," = ")ä •(o)==®í
n(e,Ÿ)ä s[o]í
n(e,∏(o))Ñ
n(e,a(o,i,t))Ü
Ö •(o)==Æí
n(e,ú(o))Ñ
n(e,“...ô(o)..“)Ü
n(e,",\n")Ü
Ü
e[#e]=","n(e,Ÿ..ñ.≤(t,1,-3).."}")ë u(e)Ü
ë a(c,d,f)Ü
å â i(t,o)å n=ó.ò
å l=ó.Ø
o=o Å(o-1)è 10
ä o<0 í
ë"..."Ü
å e={}n(e,"{")à r,t ã ©(t)É
ä •(r)==®í
n(e,i(r,o))n(e,"=")Ö •(r)==Æí
Ñ
n(e,'["'...ô(r)..'"]')n(e,"=")Ü
ä •(t)==®í
n(e,i(t,o))Ö •(t)==Æí
n(e,ú(t))Ö •(t)==Õí
n(e,“..t..“)Ñ
n(e,.ô(t))Ü
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
â ó.Ú(n)å e={}à t,n ã ©(n è{})É
ó.ò(e,n)Ü
ë e
Ü
â ó.€(n)å e={}à t,n ã ©(n è{})É
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
â ó.merge(...)å e={}à t,n ã †({...})É
à n,t ã ©(n)É
e[n]=t
Ü
Ü
ë e
Ü
â ó.address(n)å e
ä Û(,"_tostring")í
e=_tostring(n)Ñ
e=d(n)Ü
ë ñ.´(e,"^table: ",Œ)èŒÜ
ó.ô=d
ó.ˆ=i
â ó.û(e)ä •(e)~=®í
.û(e)Ñ
.û(ó.ô(e))Ü
Ü
Ü)¢.°['sllib.string_ext']=(â(...)â ñ.strtox16(e)ë ñ.´(e,".",â(e)ë ñ.ù("%02X",ñ.byte(e))Ü)Ü
â ñ.x16tostr(e)ë ñ.´(e,"..",â(e)å e=ﬁ(e,16)ë ñ.char(e)Ü)Ü
â ñ.dumpex(e)ë ñ.´(e,".",â(e)ë ñ.ù("%02X ",ñ.byte(e))Ü)Ü
â ñ.trim(n,e)e=e è"both"ä e=="begin"í
ë(ñ.´(n,"^%s*",Œ))Ö e=="end"í
ë(ñ.´(n,"%s*$",Œ))Ö e=="both"í
n=ñ.´(n,"^%s*",Œ)ë(ñ.´(n,"%s*$",Œ))Ü
Ü
â ñ.iterateString(n,e,t)e=e è'\n'ä é ñ.’(n,e)í
t(n)ë
Ü
à e ã ñ.gmatch(n,"(.-)"..e)É
t(e)Ü
ä ñ.≤(n,#n-#e+1)==e í
t(Œ)ë
Ü
å e=ñ.’(n,".+"..e.."(.*)$")ä e í
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
Ü)¢.°['sllib.math_ext']=(â(...)â µ.cutf(e,n)å t,e=µ.—(e)å e=e*µ.pow(10,n)e=µ.—(e)e=e/µ.pow(10,n)ë t+e
Ü
Ü)¢.°['sllib.debug_ext']=(â(...)å r=ö"sllib.profiler"å l=10
å s=100
â ±.tracevalue(e,t)e=e è 2
t=t è 2
å r={}ó.ò(r,"stack tracevalue:")å i=á
å n="  "å t=e+t
ï e<t É
å o=±.Ê(e,"nS")i=o.what=="main"å t={}ó.ò(t,ñ.ù(n.."file:%s line:%d function:%s()\n",o.”,o.Ã,o.name èŒ))n=n.."  "à n=1,l É
å o,e=±.getlocal(e,n)ä ç==o í
Ç
Ü
ä •(e)~="function"Å o~="self"í
å n
ä •(e)==®í
n=ñ.≤(ó.ˆ(e),1,s)Ñ
n=º(e)Ü
ó.ò(t,º(o).."="..n)ó.ò(t,Ÿ)Ü
Ü
ó.ò(r,ó.Ø(t,n))ä i í
Ç
Ü
e=e+1
n=n.."  "Ü
ë ó.Ø(r,Ÿ)Ü
±.startanalysis=â(e)r:setLevel(3)r:start(e)Ü
±.stopanalysis=â(e)r:stop(e)Ü
Ü)¢.°['sllib.list_ext']=(â(...)ß=ß è{}â ß.map(e,t)à n,o ã †(e)É
e[n]=t(o,n)Ü
ë e
Ü
â ß.filter(e,o)å n={}à r,t ã †(e)É
ä o(t,r)í
ó.ò(n,t)Ü
Ü
e=n
ë e
Ü
â ß.append(e,n)ó.ò(e,n)ë e
Ü
â ß.Ø(...)å e={}à t,n ã †({...})É
à t,n ã †(n)É
ó.ò(e,n)Ü
Ü
ë e
Ü
â ß.‹(e,t)à n,o ã †(e)É
ä o==t í
ó.‹(e,n)Ç
Ü
Ü
ë e
Ü
â ß.≤(t,o,e)e=e è#t
å n={}à e=o,e É
ó.ò(n,t[e])Ü
ë n
Ü
â ß.cut(n,e)å n=ß.≤(1,e)å e=ß.≤(e+1)ë n,e
Ü
â ß.Á(e,n)à t,e ã †(e)É
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
â ß.merge(...)å e=ß.Ø(...)e=ó.€(e)ë ó.keys(e)Ü
â ß.mergeex(n,...)å e=ß.Ø(...)e=ß.project(e,n)ë ó.Ú(e)Ü
â ß.project(e,t)å n={}à o,e ã †(e)É
n[e[t]]=e
Ü
ë n
Ü
Ü)¢.°['sllib.set']=(â(...)ä Û(,"set")í
â §.Ó(n,t)å e=§.‰({})à n ã ©(n)É
ä §.À(t,n)í
§.ò(e,n)Ü
Ü
ë e
Ü
â §.◊(n)å e={}à n ã ©(n)É
ó.ò(e,n)Ü
ë e
Ü
â §.û(e)å e=§.◊(e)ó.û(e)Ü
ë
Ü
å e={}§={}§.∆=©
â §.‰(n)å e=«({},e)à t,n ã †(n è{})É
§.ò(e,n)Ü
ë e
Ü
â §.À(e,n)ë Û(e,n)==ì
Ü
â §.ò(n,e)ÿ(n,e,ì)Ü
â §.delete(e,n)ÿ(e,n,ç)Ü
â §.Ó(n,t)å e=§.‰()à n ã §.∆(n)É
ä §.À(t,n)í
§.ò(e,n)Ü
Ü
ë e
Ü
â §.◊(n)å e={}à n ã §.∆(n)É
ó.ò(e,n)Ü
ë e
Ü
â §.û(e)å e=§.◊(e)ó.û(e)Ü
å â l(n,t)å e=§.‰()à n ã §.∆(n)É
§.ò(e,n)Ü
à n ã §.∆(t)É
§.ò(e,n)Ü
ë e
Ü
å â i(n,t)å e=§.‰()à n ã §.∆(n)É
ä é §.À(t,n)í
§.ò(e,n)Ü
Ü
ë e
Ü
å â o(e,n)à e ã §.∆(e)É
ä é §.À(n,e)í
ë á
Ü
Ü
ë ì
Ü
å â r(t,n)ë §.subset(t,n)Å é §.subset(n,t)Ü
e.__index=§
e.__add=l
e.__sub=i
e.__le=o
e.__lt=r
Ü)¢.°['sllib.time']=(â(...)¨=¨ è{}â ¨.¨()ë £.¨()Ü
â ¨.ƒ()ë £.ƒ()Ü
â ¨.∫()ä £.∫ í
ë £.∫()Ü
ö"socket.core"ë(µ.—(socket.gettime()*1e3))Ü
â ¨.sleep(e)e=e è 0
£.™("ping -n "..ﬁ(e+1)..⁄)Ü
â ¨.getstr(e,n)e=e è'%c'n=n è £.¨()ë £.È(e,n)Ü
â ¨.getendofday(e)e=e è £.¨()å e=£.È('*t',e)å e=£.È('*t',£.¨({year=e["year"],¸=e["month"],day=e["day"],hour=23,min=59,sec=59}))å e=£.¨(e)ë e
Ü
â ¨.tohour(e)å t=µ.—(e/3600)å n=µ.—(µ.fmod(e,3600)/60)å e=µ.fmod(e,60)ë{hour=t,min=n,sec=e}Ü
Ü)¢.°['sllib.logs']=(â(...)¶=¶ è{}å s=á
å n=ç
å a=ì
å l=õ.∑()å r={}å â e(e)å e=ñ.´(e,"[\r\n\t]",Œ)ä e==Œí
ë ì
Ü
ë á
Ü
å t=ì
å â d(e)ë º(e,t)Ü
å â i()ä n í
ë n
Ü
å e=£.È("*t")å e=ñ.ù("%s_%s_%s.log",e.year,e.¸,e.day)n=e
ë e
Ü
å â c(n)ä é a í
ë
Ü
å e=i()‘.ª(e,n,"a+")Ü
å â o(t,e)e=á
å e=£.È("*t")å o=£.ƒ()å n=t
ä s í
n=ñ.ù("[%s-%s-%s %02s:%02s:%02s %s]%s",e.year,e.¸,e.day,e.hour,e.min,e.sec,o,t)Ü
û(n)c(n..'\n')Ü
â ¶.Ò(e)a=e
Ü
â ¶.showLogTime(e)s=e
Ü
â ¶.setLogPath(e)n=e
Ü
â ¶.clear()å e=i()ä é £.Á(e)í
ë
Ü
‘.ª(e,Œ)Ü
â ¶.≈(...)å e={...}å n=#e
å n={}à t,e ã †(e)É
å e=d(e)ó.ò(n,e)Ü
o(ó.Ø(n,Ì))Ü
â ¶.i(...)¶.≈(...)Ü
â ¶.w(...)õ.∂(14)¶.≈(...)ä l í õ.¥()Ü
Ü
â ¶.e(...)õ.∂(12)¶.≈(...)å e=t
t=á
o(±.˘(Œ,2))t=e
ä l í õ.¥()Ü
Ü
â ¶.f(e,...)o(ñ.ù(e,...))Ü
â ¶.Î(e,...)e=e è"nil"å e=ñ.ù(e,...)å e=±.˘(e,2)o(e)Ü
â ¶.¨(e)e=ô(e)r[e]=¨.∫()Ü
â ¶.timeEnd(e)e=ô(e)ä é r[e]í
ë
Ü
å n=¨.∫()-r[e]û(_F("%s:%d",e,n))Ü
ë ¶
Ü)¢.°['sllib.class']=(â(...)å e={}å â r(e)e.__index=e
ë «({},e)Ü
â class(o,t)å n
ä t í
n=t:·(o)Ñ
n=e:·(o)Ü
n.‰=â(...)å e=r(n)e.__class=n
e:ctor(...)ë e
Ü
n.create=â(e,...)ë n.‰(...)Ü
ë n
Ü
â e:ctor(...)Ü
â e:dtor()Ü
â e:·(n)å e=r(ü)e.__name=n
e.super=ü
ë e
Ü
â e:attrReader(...)à n,e ã †({...})É
å n="get"..ñ.upper(ñ.≤(e,1,1))..ñ.≤(e,2)ü[n]=â(n)ë n[e]Ü
Ü
Ü
â e:attrWriter(...)à n,e ã †({...})É
å n="set"..ñ.upper(ñ.≤(e,1,1))..ñ.≤(e,2)ü[n]=â(n,t)n[e]=t
Ü
Ü
Ü
â e:include(...)à n,e ã †({...})É
à n,e ã ©(e)É
ü[n]=e
Ü
Ü
Ü
â e:delegate(n,e)à t,e ã †(e)É
ü[e]=â(t,...)ë n[e](n,...)Ü
Ü
Ü
Ü)¢.°['sllib.profiler']=(â(...)å e={}â e:setLogFunc(e)ü.¬=e
Ü
â e:setLevel(e)ü.Í=e
Ü
â e:start(e)e=e è"profile"ü.¬=û
ä e=="trace"í
±.„(bind(ü.‚,ü),'c')Ñ
ü.≥={}ü.˙=£.ƒ()ü.Í=3
±.„(bind(ü.›,ü),'cr')Ü
Ü
â e:stop(e)e=e è"profile"±.„()ä e=="trace"í
ë
Ü
ü.ˇ=£.ƒ()å n=ü.ˇ-ü.˙
ä n<.001 í
ü.¬("total time less 0.001s")ë
Ü
å e=ó.Ú(ü.≥)ó.sort(e,â(e,n)ë e.≠>n.≠
Ü)à t,e ã †(e)É
å n=(e.≠/n)*100
ä n<1 í
Ç
Ü
å e=ñ.ù("time:%6.3f, percent:%.2f%%, count:%d, %s",e.≠,n,e.¿,e.title)ü.¬(e)Ü
Ü
â e:‚()å e=±.Ê(ü.Í,'nS')å e=ñ.ù("file:%s line:%d function:%s()",e.”,e.Ã,e.name èŒ)ü.¬(e)Ü
â e:Ô(e)å t=e.name è'anonymous'å n=e.” è'C_FUNC'å e=e.Ã è 0
ë ñ.ù("file:%s line:%s function:%s",n,e,t)Ü
â e:¡(e)å n=ü:Ô(e)å e=ü.≥[n]ä é e í
e={title=n,¿=0,≠=0,}ü.≥[n]=e
Ü
ë e
Ü
â e:›(n)å o=â(e)å e=ü:¡(e)e.Ω=£.ƒ()e.¿=e.¿+1
Ü
å t=â(e)å n=£.ƒ()å e=ü:¡(e)ä e.Ω Å e.Ω>0 í
e.≠=e.≠+(n-e.Ω)e.Ω=0
Ü
Ü
å e=±.Ê(ü.Í,'nS')ä e í
ä n=="call"í
o(e)Ö n=="return"í
t(e)Ü
Ü
Ü
ë e
Ü)ÿ(,"SLLIB_VERSION","1.1.2")ö"sllib.console"ö"sllib.global"ö"sllib.lang"ö"sllib.io_ext"ö"sllib.os_ext"ö"sllib.table_ext"ö"sllib.string_ext"ö"sllib.list_ext"ö"sllib.set"ö"sllib.math_ext"ö"sllib.debug_ext"ö"sllib.time"ö"sllib.logs"ö"sllib.class"enum=ó.€
log=log è ¶.i
logw=logw è ¶.w
loge=loge è ¶.e
logf=logf è ¶.f
Î=Î è ¶.Î
˝=˝ è ¶.clear
writeLogInFile=¶.Ò
÷=÷ è ó.÷
–=– è load
ÿ(,"bind",â(e,...)å n={...}assert(e,"bind params error")ë â(...)å n=ß.Ø(n,{...})ë e(÷(n))Ü
Ü)â º(e)ä •(e)==Õí
ë“..e..“Ö •(e)==®í
ë ó.ô(e)Ö •(e)==Æí
ë ú(e)Ñ
å e=ô(e)è‡ë e
Ü
Ü
]===], '@sllib_base.lua'))()