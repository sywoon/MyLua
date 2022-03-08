loadstring = loadstring or load 
local base_char,keywords=128,{"and","break","do","else","elseif","end","false","for","function","if","in","local","nil","not","or","repeat","return","then","true","until","while","string","table","insert","require","tostring","console","numbertostring","ipairs","format","print","preload","package","self","os","logs","type","time","set","list","timer","\"table\"","pairs","execute","gsub","totaltime","\"number\"","sub","concat","math","attributes","debug","getTimestamp","millitime","reportsByTitle","resetColor","setColor","isSupportLineColor","defaultColor","tableAddress","writeFile","any2str","calltime","__showInnerRef","_showLogs","callcount","splitpath","clock","\"/\"","elems","logFunc","getFuncReport","setmetatable","mkpredir","basename","member","mkdir","remove","linedefined","\"string\"","dirname","\"\"","name","modf","loadstring","'\"'","match","count","_sortCbks","short_src","io","invert","\" localhost > NUL\"","tolist","\"\\n\"","rawset","unpack","endCbk","profilingHandler","readFile","\"Unknown object!\"","\"\\\\\"","subClass","tonumber","tracingHandler","date","isdir","__keyCanBeNum","new","exist","trace","getinfo","sethook","level","getFuncTitle","'\\t'","intersection","values","writeInFile","_G","startUpdate","splitpathex","rawget","stopUpdate","replacesub","\"color %02X\"","waitUpdate",}; function prettify(code) return code:gsub("["..string.char(base_char).."-"..string.char(base_char+#keywords).."]", 
	function (c) return keywords[c:byte()-base_char]; end) end return assert(loadstring(prettify[===[°.†['sllib.console']=(â(...)å e=_VERSION=="Lua 5.3"Å 1 è 0
å t
ä e==1 í
t=ô"console.core"Ü
õ=õ è{}õ.ª=7
â õ.∫()ë e==1
Ü
â õ.setDefaultColor(e)õ.ª=e
Ü
â õ.π(n)ä e==1 í
ë t:setTextColor(n)Ñ
å e=ñ.û(˛,n)ë £.¨(e)Ü
Ü
â õ.∏()ä e==1 í
õ.π(õ.ª)Ñ
å e=ñ.û(˛,õ.ª)ë £.¨(e)Ü
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
]]ü(e)Ü
Ü)°.†['sllib.global']=(â(...)â ú(e)ä e<0 í
ë"-"..ú(-e)Ü
ä e<=10^13 í
ë ö(e)Ü
ä ≤.‘(e)~=e í
ë ö(e)Ü
å n=≤.fmod(e,10^13)å e=≤.‘(e/10^13)å e=ñ.û("%s%013s",ö(e),ö(n))ë e
Ü
â æ(e,n)ä •(e)==–í
ä n Å e~=ﬂí
ë÷..e..÷Ñ
ë e
Ü
Ö •(e)==™í
ë ó.ö(e)Ö •(e)==Øí
ë ú(e)Ñ
å e=ö(e)èÂë e
Ü
Ü
â _F(e,...)ë ñ.û(e,...)Ü
å e=õ.∫()â printw(...)õ.π(14)ü(...)ä e í õ.∏()Ü
Ü
â printe(...)õ.π(12)ü(...)ä e í õ.∏()Ü
Ü
Ü)°.†['sllib.lang']=(â(...)ä _VERSION=="Lua 5.1"í
printu=ü
ë
Ü
å n=ô"charset"â _U2A(e)e=ö(e)ë n.u2a(e)Ü
â _A2U(e)e=ö(e)ë n.a2u(e)Ü
å â e(e,...)e=e èÙå t={...}å n={}à t,e ã ù(t)É
ó.ò(n,_U2A(æ(e)))Ü
å e=ó.±(n,e)ë e
Ü
â printu(...)å e=e(Ù,...)ü(e)Ü
â printuw(...)å e=e(Ù,...)printw(e)Ü
â printue(...)å e=e(Ù,...)printe(e)Ü
Ü)°.†['sllib.io_ext']=(â(...)â €.‰(n,e)e=e è"r"å e=€.open(n,e)ä e==ç í
ë ç
Ü
å n=e:read("*a")e:close()ë n
Ü
â €.Ω(t,n,e)e=e è"w"å e=€.open(t,e)ä e==ç í
ë á
Ü
e:write(n)e:close()ë ì
Ü
â €.fileSize(e)å n=0
å e=€.open(e,"r")ä e í
å t=e:seek()n=e:seek("end")e:seek("set",t)€.close(e)Ü
ë n
Ü
â €.readJsonFile(e,n)å e=€.‰(e)ä ç==e è e==“í
ë ç
Ü
ä n í
e=n(e)Ü
å n=ô"cjson"è ô"json"å e=n.decode(e)ë e
Ü
â €.writeJsonFile(t,e,n,o)ä ç==n í n=ì Ü
å r=£.—(t)£.Õ(r)å r=ô"cjson"è ô"json"å e=r.encode(e)ä n í
e=ñ.≠(e,"\\/",≈)e=ñ.≠(e,"\\\\",Ê)Ü
ä o í
e=o(e)Ü
€.Ω(t,e)ë ì
Ü
â €.readLuaFile(e,n)å e=€.‰(e)ä ç==e í
ë ç
Ü
ä n í
e=n(e)Ü
å n=’ è load
å e=n(e)()ë e
Ü
â €.writeLuaFile(t,e,n)å o=£.—(t)£.Õ(o)ä ç==ó.ö í
ë á
Ü
å e=ó.ö(e)ä ç==e í
ë á
Ü
ä n í
e=n(e)Ü
€.Ω(t,e)ë ì
Ü
Ü)°.†['sllib.os_ext']=(â(...)å n=ô"lfs"â £.pause(e)ä e í
£.¨(_F('cmd /c echo "%s" && pause',e))Ñ
£.¨("cmd /c pause")Ü
Ü
â £.sleep(e)e=e è 1
£.¨("ping -n "..Ë(e+1)..›)Ü
å â e(e,n)e=ñ.≠(e,Ê,≈)e=ñ.≠(e,"//",≈)ä ñ.byte(e,-1)==47 í
ä é n í
e=ñ.∞(e,1,-2)Ü
Ñ
ä n í
e=e..≈Ü
Ü
ë e
Ü
£.fixPath=e
å â r(e)ë ñ.◊(e,"^%a:")Ü
â £.newfile(e)£. (e)å e="echo.>"..e
£.¨(e)Ü
â £.currentdir()ë n.currentdir()Ü
â £.chdir(e)ë n.chdir(e)Ü
â £.filetime(t)t=e(t)å e=n.≥(t)ë e Å e.modification è 0
Ü
â £.Î(t)t=e(t)å e=n.≥(t)ë e Å e.mode=="directory"Ü
â £.isfile(t)t=e(t)å e=n.≥(t)ë e Å e.mode=="file"Ü
â £.Ó(t)t=e(t)å e=n.≥(t)ë ç~=e
Ü
â £.filesize(t)t=e(t)å e=n.≥(t)ë e.size
Ü
â £.√(n)n=e(n)å e=#n
å t=ñ.∞(n,e,e)ï e>0 Å t~=≈É
e=e-1
t=ñ.∞(n,e,e)Ü
ä e==0 í
ë“,n
Ü
å t=ñ.∞(n,1,e-1)å e=ñ.∞(n,e+1)ë t,e
Ü
â £.˙(n)å e={}å t=n
å n
ï ì É
t,n=£.√(t)ä ç==n è“==n í
Ç
Ü
ó.ò(e,n)Ü
e=®.reverse(e)ë e,#e
Ü
â £.—(e)å e,n=£.√(e)ë e
Ü
â £.À(e)å n,e=£.√(e)ë e
Ü
â £.filename(e)å e=£.À(e)å n,t=ñ.◊(e,"^(.*)%.(%w*)$")ä n í
ë n,t
Ü
ë e
Ü
â £.extension(e)ë ñ.◊(e,"%.%w*$")Ü
â £.Õ(t)t=e(t)å t=£.˙(t)å e=“à o=1,#t É
e=e..t[o]ä é r(t[o])Å é £.Î(e)í
å e,n=n.Õ(e)ä ç==e í
ë e,n
Ü
Ü
e=e..≈Ü
ë ì
Ü
â £. (n)n=e(n)å e=£.—(n)ä e Å e~=“í
ë £.Õ(e)Ü
ë ì
Ü
â £.rmdir(e,n)ä é £.Î(e)í
ä n í
ü("os.rmdir error:not dir:"..e)Ü
ë
Ü
e=ñ.≠(e,≈,Ê)å t
ä n í
t=ñ.û('rd /S /Q  "%s"',e)Ñ
t=ñ.û('rd /S /Q  "%s" 1>nul',e)Ü
ä n==ì í
n=ü
Ü
ä n í n(t)Ü
ë £.¨(t)Ü
â £.movedir(t,n,o)ä ç==o í
o=ì
Ü
t=e(t)n=e(n)ä o í
å e=£.À(t)n=n..≈..e
Ü
£. (n)å e,o=£.rename(t,n)ä é e í
ü("movedir failed",t,n,o)Ü
ë e
Ü
â £.copydir(n,t,o)n=e(n)t=e(t)ä é £.Î(n)í
ü("path error",n,t)ë á
Ü
n=ñ.≠(n,≈,Ê)t=ñ.≠(t,≈,Ê)å e
ä o í
e=ñ.û('xcopy /Y /E /I /Q "%s" "%s"',n,t)Ñ
e=ñ.û('xcopy /Y /E /I /Q "%s" "%s" 1>nul',n,t)Ü
ä o==ì í
o=ü
Ü
ä o í o(e)Ü
£.¨(e)ë ì
Ü
â £.copyfile(t,e,n)£. (e)t=ñ.≠(t,≈,Ê)e=ñ.≠(e,≈,Ê)å o
ä n í
o=ñ.û('copy /Y "%s" "%s"',t,e)Ñ
o=ñ.û('copy /Y "%s" "%s"  1>nul',t,e)Ü
ä n==ì í
n=ü
Ü
ä n í n(o)Ü
ë £.¨(o)Ü
â £.movefile(t,n,o)t=e(t)n=e(n)ä é £.Ó(t)í
ä o í
ü("[movefile] file not exist",t,n)Ü
ë
Ü
£.Õ(n)å e=£.À(t)n=n..≈..e
£.Œ(n)å e,r=£.rename(t,n)ä é e í
ä o í
ü("[movefile] failed",t,n,r)Ü
Ü
ë e
Ü
â £.dirempty(e)å e=£.dir(e,ì)ë ó.empty(e)Ü
â £.dir(t,e,r)ä ñ.∞(t,-1,-1)==≈í
t=ñ.∞(t,1,-2)Ü
å o=30
ä •(e)=="boolean"í
e=e==á Å 1 è o
Ö •(e)==Øí
e=e
Ñ
e=o
Ü
å o={}å l={}å â s(i,t)t=t-1
à e ã n.dir(i)É
ä e~='.'Å e~='..'í
å e=i..'/'..e
å n=n.≥(e)ä n==ç í
ü("file can't read",e)Ñ
å n=n.mode=='directory'ä ç==r è r(e,n)í
ä n í
ó.ò(o,e)Ñ
ó.ò(l,e)Ü
ä n Å t>0 í
s(e,t)Ü
Ü
Ü
Ü
Ü
Ü
s(t,e)ë l,o
Ü
â £.dirext(o,t,e)å n=ó.‹(e)ë £.dir(o,t,â(e,t)ä t í
ë ì
Ü
å e=£.extension(e)ä n[e]í
ë ì
Ü
ë á
Ü)Ü
Ü)°.†['sllib.table_ext']=(â(...)å â o(t,e)à n,e ã ´(e)É
t[n]=e
Ü
Ü
å â e(e,n)à n,t ã ´(n)É
e[n]=e[n]è t
Ü
Ü
å e={¿=á,Ï=ì,}o(ó,e)å â r(r)ä é ¿ í
ë{}Ü
å o={}å t={}å â n(e)ä o[e]í
t[e]=e
ë
Ü
o[e]=e
à e,t ã ´(e)É
ä •(e)==™í
n(e)Ö •(t)==™í
n(t)Ü
Ü
Ü
n(r)ë t
Ü
å â d(c,u,d)å n=ó.ò
å f=ó.±
å a={}å r=r(c)å â s(o,i,t)i=i Å(i-1)è 30
ä i<0 í
ë t.."..."Ü
t=t è“ä next(o)==ç í
ë t.."{}"Ü
ä ¿ í
a[o]=o
Ü
å e={}n(e,t.."{")ä r[o]í
n(e,º(o))Ü
n(e,ﬂ)t=t.."  "ä Ï è#o==0 í
à l,r ã ´(o)É
n(e,t)ä •(l)==™í
ä a[o]í
n(e,º(o))Ñ
Œ(e)n(e,s(l,i,t))Ü
Ö •(l)==Øí
n(e,"["..ú(l).."]")Ñ
å t=¯.ö(l)n(e,'["'..t..'"]')Ü
n(e," = ")ä •(r)==™í
ä a[r]í
n(e,º(r))Ñ
n(e,ﬂ)n(e,s(r,i,t))Ü
Ö •(r)==Øí
n(e,ú(r))Ö •(r)==–í
n(e,÷..r..÷)Ñ
n(e,¯.ö(r))Ü
n(e,",\n")Ü
Ñ
à r,o ã ù(o)É
n(e,t)n(e,"["..ú(r).."]")n(e," = ")ä •(o)==™í
n(e,ﬂ)ä a[o]í
n(e,º(o))Ñ
n(e,s(o,i,t))Ü
Ö •(o)==Øí
n(e,ú(o))Ñ
n(e,÷..¯.ö(o)..÷)Ü
n(e,",\n")Ü
Ü
e[#e]=","n(e,ﬂ..ñ.∞(t,1,-3).."}")ë f(e)Ü
ë s(c,u,d)Ü
å â i(t,o)å n=ó.ò
å l=ó.±
o=o Å(o-1)è 10
ä o<0 í
ë"..."Ü
å e={}n(e,"{")à r,t ã ´(t)É
ä •(r)==™í
n(e,i(r,o))n(e,"=")Ö •(r)==Øí
Ñ
n(e,'["'..¯.ö(r)..'"]')n(e,"=")Ü
ä •(t)==™í
n(e,i(t,o))Ö •(t)==Øí
n(e,ú(t))Ö •(t)==–í
n(e,÷..t..÷)Ñ
n(e,¯.ö(t))Ü
n(e,",")Ü
n(e,"}")ë l(e)Ü
â ó.empty(e)ë next(e)==ç
Ü
â ó.size(n)å e=0
à n,n ã ´(n)É
e=e+1
Ü
ë e
Ü
â ó.keys(n)å e={}à n,t ã ´(n è{})É
ó.ò(e,n)Ü
ë e
Ü
â ó.ˆ(n)å e={}à t,n ã ´(n è{})É
ó.ò(e,n)Ü
ë e
Ü
â ó.‹(n)å e={}à t,n ã ´(n è{})É
e[n]=t
Ü
ë e
Ü
â ó.clone(n,t)å e={}ä é t í
…(e,getmetatable(n))Ü
à t,n ã ´(n)É
e[t]=n
Ü
ë e
Ü
â ó.merge(...)å e={}à t,n ã ù({...})É
à t,n ã ´(n)É
e[t]=n
Ü
Ü
ë e
Ü
â ó.address(n)å e
ä ˚(¯,"_tostring")í
e=_tostring(n)Ñ
e=d(n)Ü
ë ñ.≠(e,"^table: ",“)è“Ü
ó.ö=d
ó.tostringex=i
â ó.ü(e)ä •(e)~=™í
¯.ü(e)Ñ
¯.ü(ó.ö(e))Ü
Ü
Ü)°.†['sllib.string_ext']=(â(...)â ñ.strtox16(e)ë ñ.≠(e,".",â(e)ë ñ.û("%02X",ñ.byte(e))Ü)Ü
â ñ.x16tostr(e)ë ñ.≠(e,"..",â(e)å e=Ë(e,16)ë ñ.char(e)Ü)Ü
â ñ.dumpex(e)ë ñ.≠(e,".",â(e)ë ñ.û("%02X ",ñ.byte(e))Ü)Ü
â ñ.trim(e,n)n=n è"both"ä n=="begin"í
ë(ñ.≠(e,"^%s*",“))Ö n=="end"í
ë(ñ.≠(e,"%s*$",“))Ö n=="both"í
e=ñ.≠(e,"^%s*",“)ë(ñ.≠(e,"%s*$",“))Ü
Ü
â ñ.iterateString(n,e,t)e=e è'\n'ä é ñ.◊(n,e)í
t(n)ë
Ü
à e ã ñ.gmatch(n,"(.-)"..e)É
t(e)Ü
ä ñ.∞(n,#n-#e+1)==e í
t(“)ë
Ü
å e=ñ.◊(n,".+"..e.."(.*)$")ä e í
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
å n=“ä t>1 í
n=n..ñ.∞(e,1,t-1)Ü
ä o<#e í
n=n..ñ.∞(e,o+1)Ü
ë n,t
Ü
â ñ.˝(n,t,r,e)e=e è 1
å t,o=ñ.find(n,t,e,ì)ä t==ç í
ë n,-1
Ü
å e=“ä t>1 í
e=e..ñ.∞(n,1,t-1)Ü
e=e..r
å t=ñ.len(e)+1
ä o<#n í
e=e..ñ.∞(n,o+1)Ü
ë e,t
Ü
â ñ.replacesubAll(n,o,t,e)e=e è 1
å e=e
ê
n,e=ñ.˝(n,o,t,e)î e==-1
ë n
Ü
Ü)°.†['sllib.math_ext']=(â(...)ä é ≤.pow í
≤.pow=â(e,n)ë e^n
Ü
Ü
â ≤.cutf(e,n)å t,e=≤.‘(e)å e=e*≤.pow(10,n)e=≤.‘(e)e=e/≤.pow(10,n)ë t+e
Ü
Ü)°.†['sllib.debug_ext']=(â(...)å i=ô"sllib.profiler"å s=10
å l=100
â ¥.tracevalue(e,t)e=e è 2
t=t è 2
å r={}ó.ò(r,"stack tracevalue:")å i=á
å n="  "å t=e+t
ï e<t É
å o=¥.(e,"nS")i=o.what=="main"å t={}ó.ò(t,ñ.û(n.."file:%s line:%d function:%s()\n",o.⁄,o.œ,o.” è“))n=n.."  "à n=1,s É
å o,e=¥.getlocal(e,n)ä ç==o í
Ç
Ü
ä •(e)~="function"Å o~="self"í
å n
ä •(e)==™í
n=ñ.∞(ó.tostringex(e),1,l)Ñ
n=æ(e)Ü
ó.ò(t,æ(o).."="..n)ó.ò(t,ﬂ)Ü
Ü
ó.ò(r,ó.±(t,n))ä i í
Ç
Ü
e=e+1
n=n.."  "Ü
ë ó.±(r,ﬂ)Ü
¥.startanalysis=â(e)i:setLevel(3)i:start(e)Ü
¥.stopanalysis=â(e)i:stop(e)Ü
Ü)°.†['sllib.list_ext']=(â(...)®=® è{}â ®.map(e,o)à n,t ã ù(e)É
e[n]=o(t,n)Ü
ë e
Ü
â ®.filter(e,r)å n={}à o,t ã ù(e)É
ä r(t,o)í
ó.ò(n,t)Ü
Ü
e=n
ë e
Ü
â ®.append(e,n)ó.ò(e,n)ë e
Ü
â ®.±(...)å e={}à t,n ã ù({...})É
à t,n ã ù(n)É
ó.ò(e,n)Ü
Ü
ë e
Ü
â ®.indexOf(e,n)à t,e ã ù(e)É
ä e==n í
ë t
Ü
Ü
ë-1
Ü
â ®.Œ(e,n)à t,o ã ù(e)É
ä o==n í
ó.Œ(e,t)Ç
Ü
Ü
ë e
Ü
â ®.∞(t,o,e)e=e è#t
å n={}à e=o,e É
ó.ò(n,t[e])Ü
ë n
Ü
â ®.cut(n,e)å n=®.∞(1,e)å e=®.∞(e+1)ë n,e
Ü
â ®.Ó(e,n)à t,e ã ù(e)É
ä e==n í
ë ì
Ü
Ü
ë á
Ü
â ®.reverse(e)å n={}à t=#e,1,-1 É
ó.ò(n,e[t])Ü
ë n
Ü
â ®.mirror(n)å e={}à t,n ã ù(n)É
e[n]=n
Ü
ë e
Ü
â ®.merge(...)å e=®.±(...)e=ó.‹(e)ë ó.keys(e)Ü
â ®.mergeex(n,...)å e=®.±(...)e=®.project(e,n)ë ó.ˆ(e)Ü
â ®.project(e,t)å n={}à o,e ã ù(e)É
n[e[t]]=e
Ü
ë n
Ü
Ü)°.†['sllib.set']=(â(...)ä ˚(¯,"set")í
â ß.ı(n,t)å e=ß.Ì({})à n ã ´(n)É
ä ß.Ã(t,n)í
ß.ò(e,n)Ü
Ü
ë e
Ü
â ß.ﬁ(n)å e={}à n ã ´(n)É
ó.ò(e,n)Ü
ë e
Ü
â ß.ü(e)å e=ß.ﬁ(e)ó.ü(e)Ü
ë
Ü
å e={}ß={}ß.∆=´
â ß.Ì(n)å e=…({},e)à t,n ã ù(n è{})É
ß.ò(e,n)Ü
ë e
Ü
â ß.Ã(n,e)ë ˚(n,e)==ì
Ü
â ß.ò(e,n)‡(e,n,ì)Ü
â ß.delete(e,n)‡(e,n,ç)Ü
â ß.ı(e,t)å n=ß.Ì()à e ã ß.∆(e)É
ä ß.Ã(t,e)í
ß.ò(n,e)Ü
Ü
ë n
Ü
â ß.ﬁ(n)å e={}à n ã ß.∆(n)É
ó.ò(e,n)Ü
ë e
Ü
â ß.ü(e)å e=ß.ﬁ(e)ó.ü(e)Ü
å â i(n,t)å e=ß.Ì()à n ã ß.∆(n)É
ß.ò(e,n)Ü
à n ã ß.∆(t)É
ß.ò(e,n)Ü
ë e
Ü
å â l(n,t)å e=ß.Ì()à n ã ß.∆(n)É
ä é ß.Ã(t,n)í
ß.ò(e,n)Ü
Ü
ë e
Ü
å â r(e,n)à e ã ß.∆(e)É
ä é ß.Ã(n,e)í
ë á
Ü
Ü
ë ì
Ü
å â o(n,t)ë ß.subset(n,t)Å é ß.subset(t,n)Ü
e.__index=ß
e.__add=i
e.__sub=l
e.__le=r
e.__lt=o
Ü)°.†['sllib.time']=(â(...)¶=¶ è{}â ¶.¶()ë £.¶()Ü
â ¶.ƒ()ë £.ƒ()Ü
â ¶.∂()ä £.∂ í
ë £.∂()Ü
å e=ô"socket.core"ë(≤.‘(e.gettime()*1e3))Ü
â ¶.sleep(e)e=e è 0
£.¨("ping -n "..Ë(e+1)..›)Ü
â ¶.getstr(e,n)e=e è'%c'n=n è £.¶()ë £.Í(e,n)Ü
â ¶.getendofday(e)e=e è £.¶()å e=£.Í('*t',e)å e=£.Í('*t',£.¶({year=e["year"],month=e["month"],day=e["day"],hour=23,min=59,sec=59}))å e=£.¶(e)ë e
Ü
â ¶.tohour(e)å n=≤.‘(e/3600)å t=≤.‘(≤.fmod(e,3600)/60)å e=≤.fmod(e,60)ë{hour=n,min=t,sec=e}Ü
Ü)°.†['sllib.timer']=(â(...)å t=ô"ctimer"©=© è{}ä é t í
ë ©
Ü
å n={}â ©.after(e,r,o)å t=t.µ()å e={ÿ=1,¶=e+t,”=o,cbk=r}ó.ò(n,e)©.Ÿ()Ü
â ©.repeats(r,i,o,e)o=o è 0
e=e è{}å t=t.µ()å t=e.runsoon Å t è r+t
å e={ÿ=o,¶=t,”=e.”,cbk=i,interval=r,‚=e.‚}ó.ò(n,e)©.Ÿ()Ü
â ©.cancel(o)à t,e ã ù(n)É
ä e.”==o í
ó.Œ(n,t)Ç
Ü
Ü
Ü
â ©.Ÿ()ó.sort(n,â(n,e)ë n.¶<e.¶
Ü)Ü
â ©._doUpdate(e)å o=t.µ()å t=0
à r,e ã ù(n)É
ä e.¶<o í
e.ÿ=e.ÿ-1
e.cbk(o)ä e.ÿ>0 í
e.¶=e.interval+o
ó.ò(n,e)Ñ
ä e.‚ í
e.‚(o)Ü
Ü
t=r
Ü
Ü
ä t>0 Å t<=#n í
n=®.∞(n,t+1)Ü
Ü
â ©.˘()t.˘(©._doUpdate,1e3)Ü
â ©.¸()t.¸()Ü
â ©.ˇ()t.ˇ()Ü
â ©.∂()ë t.µ()Ü
â ©.¶()ë ≤.floor(t.µ()/1e3+.5)Ü
â ©.timeinfo()ë t.getTime()Ü
ë © Ü)°.†['sllib.logs']=(â(...)§=§ è{}å s=á
å o=ç
å a=ì
å i=õ.∫()å r={}å â e(e)å e=ñ.≠(e,"[\r\n\t]",“)ä e==“í
ë ì
Ü
ë á
Ü
å t=ì
å â d(e)ë æ(e,t)Ü
å â l()ä o í
ë o
Ü
å e=£.Í("*t")å e=ñ.û("%s_%s_%s.log",e.year,e.month,e.day)o=e
ë e
Ü
å â c(n)ä é a í
ë
Ü
å e=l()€.Ω(e,n,"a+")Ü
å â n(t,e)e=á
å e=£.Í("*t")å o=£.ƒ()å n=t
ä s í
n=ñ.û("[%s-%s-%s %02s:%02s:%02s %s]%s",e.year,e.month,e.day,e.hour,e.min,e.sec,o,t)Ü
ü(n)c(n..'\n')Ü
â §.˜(e)a=e
Ü
â §.showLogTime(e)s=e
Ü
â §.setLogPath(e)o=e
Ü
â §.clear()å e=l()ä é £.Ó(e)í
ë
Ü
€.Ω(e,“)Ü
â §.¡(...)å e={...}å t=#e
å t={}à o,e ã ù(e)É
å e=d(e)ó.ò(t,e)Ü
n(ó.±(t,Ù))Ü
â §.i(...)§.¡(...)Ü
â §.w(...)õ.π(14)§.¡(...)ä i í õ.∏()Ü
Ü
â §.e(...)õ.π(12)§.¡(...)å e=t
t=á
n(¥.traceback(“,2))t=e
ä i í õ.∏()Ü
Ü
â §.f(e,...)n(ñ.û(e,...))Ü
â §.Ô(e,...)e=e è"nil"å e=ñ.û(e,...)å e=¥.traceback(e,2)n(e)Ü
â §.¶(e)e=ö(e)r[e]=¶.∂()Ü
â §.timeEnd(e)e=ö(e)ä é r[e]í
ë
Ü
å n=¶.∂()-r[e]ü(_F("%s:%d",e,n))Ü
ë §
Ü)°.†['sllib.class']=(â(...)å n={}å â t(e)e.__index=e
ë …({},e)Ü
â class(o,r)å e
ä r í
e=r:Á(o)Ñ
e=n:Á(o)Ü
e.Ì=â(...)å n=t(e)n.__class=e
n:ctor(...)ë n
Ü
e.create=â(n,...)ë e.Ì(...)Ü
ë e
Ü
â n:ctor(...)Ü
â n:dtor()Ü
â n:Á(n)å e=t(¢)e.__name=n
e.super=¢
ë e
Ü
â n:attrReader(...)à n,e ã ù({...})É
å n="get"..ñ.upper(ñ.∞(e,1,1))..ñ.∞(e,2)¢[n]=â(n)ë n[e]Ü
Ü
Ü
â n:attrWriter(...)à n,e ã ù({...})É
å n="set"..ñ.upper(ñ.∞(e,1,1))..ñ.∞(e,2)¢[n]=â(t,n)t[e]=n
Ü
Ü
Ü
â n:include(...)à n,e ã ù({...})É
à e,n ã ´(e)É
¢[e]=n
Ü
Ü
Ü
â n:delegate(e,n)à t,n ã ù(n)É
¢[n]=â(t,...)ë e[n](e,...)Ü
Ü
Ü
Ü)°.†['sllib.profiler']=(â(...)å e={}â e:setLogFunc(e)¢.«=e
Ü
â e:setLevel(e)¢.Ú=e
Ü
â e:start(e)e=e è"profile"¢.«=ü
ä e=="trace"í
¥.Ò(bind(¢.È,¢),'c')Ñ
¢.∑={}¢.startTime=£.ƒ()¢.Ú=3
¥.Ò(bind(¢.„,¢),'cr')Ü
Ü
â e:stop(e)e=e è"profile"¥.Ò()ä e=="trace"í
ë
Ü
¢.stopTime=£.ƒ()å n=¢.stopTime-¢.startTime
ä n<.001 í
¢.«("total time less 0.001s")ë
Ü
å e=ó.ˆ(¢.∑)ó.sort(e,â(n,e)ë n.Æ>e.Æ
Ü)à t,e ã ù(e)É
å n=(e.Æ/n)*100
ä n<1 í
Ç
Ü
å e=ñ.û("time:%6.3f, percent:%.2f%%, count:%d, %s",e.Æ,n,e.¬,e.title)¢.«(e)Ü
Ü
â e:È()å e=¥.(¢.Ú,'nS')å e=ñ.û("file:%s line:%d function:%s()",e.⁄,e.œ,e.” è“)¢.«(e)Ü
â e:Û(e)å n=e.” è'anonymous'å t=e.⁄ è'C_FUNC'å e=e.œ è 0
ë ñ.û("file:%s line:%s function:%s",t,e,n)Ü
â e:»(e)å n=¢:Û(e)å e=¢.∑[n]ä é e í
e={title=n,¬=0,Æ=0,}¢.∑[n]=e
Ü
ë e
Ü
â e:„(n)å o=â(e)å e=¢:»(e)e.ø=£.ƒ()e.¬=e.¬+1
Ü
å t=â(e)å n=£.ƒ()å e=¢:»(e)ä e.ø Å e.ø>0 í
e.Æ=e.Æ+(n-e.ø)e.ø=0
Ü
Ü
å e=¥.(¢.Ú,'nS')ä e í
ä n=="call"í
o(e)Ö n=="return"í
t(e)Ü
Ü
Ü
ë e
Ü)‡(¯,"SLLIB_VERSION","1.1.2")ô"sllib.console"ô"sllib.global"ô"sllib.lang"ô"sllib.io_ext"ô"sllib.os_ext"ô"sllib.table_ext"ô"sllib.string_ext"ô"sllib.list_ext"ô"sllib.set"ô"sllib.math_ext"ô"sllib.debug_ext"ô"sllib.time"ô"sllib.timer"ô"sllib.logs"ô"sllib.class"enum=ó.‹
log=log è §.i
logw=logw è §.w
loge=loge è §.e
logf=logf è §.f
Ô=Ô è §.Ô
clearLog=clearLog è §.clear
writeLogInFile=§.˜
·=· è ó.·
’=’ è load
‡(¯,"bind",â(e,...)å n={...}assert(e,"bind params error")ë â(...)å n=®.±(n,{...})ë e(·(n))Ü
Ü)â æ(e)ä •(e)==–í
ë÷..e..÷Ö •(e)==™í
ë ó.ö(e)Ö •(e)==Øí
ë ú(e)Ñ
å e=ö(e)èÂë e
Ü
Ü
]===], '@sllib_base.lua'))()