loadstring = loadstring or load 
local base_char,keywords=128,{"and","break","do","else","elseif","end","false","for","function","if","in","local","nil","not","or","repeat","return","then","true","until","while","string","table","insert","require","tostring","console","ipairs","numbertostring","package","preload","format","print","self","os","list","set","logs","type","time","timer","\"table\"","execute","pairs","gsub","totaltime","\"number\"","sub","concat","attributes","math","getTimestamp","debug","millitime","reportsByTitle","resetColor","setColor","isSupportLineColor","defaultColor","tableAddress","writeFile","any2str","remove","calltime","__showInnerRef","clock","getFuncReport","callcount","logFunc","elems","_showLogs","\"/\"","splitpath","setmetatable","mkpredir","basename","member","mkdir","linedefined","\"string\"","loadstring","dirname","\"\"","name","modf","'\"'","_sortCbks","io","match","count","short_src","tolist","unpack","\"\\n\"","rawset","endCbk","\" localhost > NUL\"","profilingHandler","invert","resume","\"Unknown object!\"","tonumber","subClass","readFile","\"\\\\\"","tracingHandler","isdir","sethook","getinfo","level","trace","exist","date","new","__keyCanBeNum","intersection","'\\t'","getFuncTitle","writeInFile","splitpathex","startUpdate","_G","rawget","values","\"color %02X\"","stopUpdate","replacesub",}; function prettify(code) return code:gsub("["..string.char(base_char).."-"..string.char(base_char+#keywords).."]", 
	function (c) return keywords[c:byte()-base_char]; end) end return assert(loadstring(prettify[===[û.ü['sllib.console']=(â(...)å e=_VERSION=="Lua 5.3"Å 1 è 0
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
å e=ñ.†(˝,n)ë £.´(e)Ü
Ü
â õ.∏()ä e==1 í
õ.π(õ.ª)Ñ
å e=ñ.†(˝,õ.ª)ë £.´(e)Ü
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
]]°(e)Ü
Ü)û.ü['sllib.global']=(â(...)â ù(e)ä e<0 í
ë"-"..ù(-e)Ü
ä e<=10^13 í
ë ö(e)Ü
ä ≥.’(e)~=e í
ë ö(e)Ü
å n=≥.fmod(e,10^13)å e=≥.’(e/10^13)å e=ñ.†("%s%013s",ö(e),ö(n))ë e
Ü
â æ(e,n)ä ß(e)==–í
ä n Å e~=ﬁí
ë÷..e..÷Ñ
ë e
Ü
Ö ß(e)==™í
ë ó.ö(e)Ö ß(e)==Øí
ë ù(e)Ñ
å e=ö(e)èÂë e
Ü
Ü
â _F(e,...)ë ñ.†(e,...)Ü
å e=õ.∫()â printw(...)õ.π(14)°(...)ä e í õ.∏()Ü
Ü
â printe(...)õ.π(12)°(...)ä e í õ.∏()Ü
Ü
Ü)û.ü['sllib.lang']=(â(...)ä _VERSION=="Lua 5.1"í
printu=°
ë
Ü
å n=ô"charset"â _U2A(e)e=ö(e)ë n.u2a(e)Ü
â _A2U(e)e=ö(e)ë n.a2u(e)Ü
å â n(e,...)e=e èıå t={...}å n={}à t,e ã ú(t)É
ó.ò(n,_U2A(æ(e)))Ü
å e=ó.±(n,e)ë e
Ü
â printu(...)å e=n(ı,...)°(e)Ü
â printuw(...)å e=n(ı,...)printw(e)Ü
â printue(...)å e=n(ı,...)printe(e)Ü
Ü)û.ü['sllib.io_ext']=(â(...)â ÿ.Ë(n,e)e=e è"r"å e=ÿ.open(n,e)ä e==ç í
ë ç
Ü
å n=e:read("*a")e:close()ë n
Ü
â ÿ.Ω(t,n,e)e=e è"w"å e=ÿ.open(t,e)ä e==ç í
ë á
Ü
e:write(n)e:close()ë ì
Ü
â ÿ.fileSize(e)å n=0
å e=ÿ.open(e,"r")ä e í
å t=e:seek()n=e:seek("end")e:seek("set",t)ÿ.close(e)Ü
ë n
Ü
â ÿ.readJsonFile(e,n)å e=ÿ.Ë(e)ä ç==e è e==”í
ë ç
Ü
ä n í
e=n(e)Ü
å n=ô"cjson"è ô"json"å e=n.decode(e)ë e
Ü
â ÿ.writeJsonFile(t,e,n,o)ä ç==n í n=ì Ü
å r=£.“(t)£.Œ(r)å r=ô"cjson"è ô"json"å e=r.encode(e)ä n í
e=ñ.≠(e,"\\/",»)e=ñ.≠(e,"\\\\",È)Ü
ä o í
e=o(e)Ü
ÿ.Ω(t,e)ë ì
Ü
â ÿ.readLuaFile(e,n)å e=ÿ.Ë(e)ä ç==e í
ë ç
Ü
ä n í
e=n(e)Ü
å n=— è load
å e=n(e)()ë e
Ü
â ÿ.writeLuaFile(n,e,t)å o=£.“(n)£.Œ(o)ä ç==ó.ö í
ë á
Ü
å e=ó.ö(e)ä ç==e í
ë á
Ü
ä t í
e=t(e)Ü
ÿ.Ω(n,e)ë ì
Ü
Ü)û.ü['sllib.os_ext']=(â(...)å n=ô"lfs"â £.pause(e)ä e í
£.´(_F('cmd /c echo "%s" && pause',e))Ñ
£.´("cmd /c pause")Ü
Ü
â £.sleep(e)e=e è 1
£.´("ping -n "..Ê(e+1)..·)Ü
å â e(e,n)e=ñ.≠(e,È,»)e=ñ.≠(e,"//",»)ä ñ.byte(e,-1)==47 í
ä é n í
e=ñ.∞(e,1,-2)Ü
Ñ
ä n í
e=e..»Ü
Ü
ë e
Ü
£.fixPath=e
å â r(e)ë ñ.Ÿ(e,"^%a:")Ü
â £.newfile(e)£.À(e)å e="echo.>"..e
£.´(e)Ü
â £.currentdir()ë n.currentdir()Ü
â £.chdir(e)ë n.chdir(e)Ü
â £.filetime(t)t=e(t)å e=n.≤(t)ë e Å e.modification è 0
Ü
â £.Î(t)t=e(t)å e=n.≤(t)ë e Å e.mode=="directory"Ü
â £.isfile(t)t=e(t)å e=n.≤(t)ë e Å e.mode=="file"Ü
â £.(t)t=e(t)å e=n.≤(t)ë ç~=e
Ü
â £.filesize(t)t=e(t)å e=n.≤(t)ë e.size
Ü
â £.…(n)n=e(n)å e=#n
å t=ñ.∞(n,e,e)ï e>0 Å t~=»É
e=e-1
t=ñ.∞(n,e,e)Ü
ä e==0 í
ë”,n
Ü
å t=ñ.∞(n,1,e-1)å e=ñ.∞(n,e+1)ë t,e
Ü
â £.¯(n)å e={}å t=n
å n
ï ì É
t,n=£.…(t)ä ç==n è”==n í
Ç
Ü
ó.ò(e,n)Ü
e=§.reverse(e)ë e,#e
Ü
â £.“(e)å e,n=£.…(e)ë e
Ü
â £.Ã(e)å n,e=£.…(e)ë e
Ü
â £.filename(e)å e=£.Ã(e)å n,t=ñ.Ÿ(e,"^(.*)%.(%w*)$")ä n í
ë n,t
Ü
ë e
Ü
â £.extension(e)ë ñ.Ÿ(e,"%.%w*$")Ü
â £.Œ(t)t=e(t)å t=£.¯(t)å e=”à o=1,#t É
e=e..t[o]ä é r(t[o])Å é £.Î(e)í
å e,n=n.Œ(e)ä ç==e í
ë e,n
Ü
Ü
e=e..»Ü
ë ì
Ü
â £.À(n)n=e(n)å e=£.“(n)ä e Å e~=”í
ë £.Œ(e)Ü
ë ì
Ü
â £.rmdir(n,e)ä é £.Î(n)í
ä e í
°("os.rmdir error:not dir:"..n)Ü
ë
Ü
n=ñ.≠(n,»,È)å t
ä e í
t=ñ.†('rd /S /Q  "%s"',n)Ñ
t=ñ.†('rd /S /Q  "%s" 1>nul',n)Ü
ä e==ì í
e=°
Ü
ä e í e(t)Ü
ë £.´(t)Ü
â £.movedir(t,n,o)ä ç==o í
o=ì
Ü
t=e(t)n=e(n)ä o í
å e=£.Ã(t)n=n..»..e
Ü
£.À(n)å e,o=£.rename(t,n)ä é e í
°("movedir failed",t,n,o)Ü
ë e
Ü
â £.copydir(n,t,o)n=e(n)t=e(t)ä é £.Î(n)í
°("path error",n,t)ë á
Ü
n=ñ.≠(n,»,È)t=ñ.≠(t,»,È)å e
ä o í
e=ñ.†('xcopy /Y /E /I /Q "%s" "%s"',n,t)Ñ
e=ñ.†('xcopy /Y /E /I /Q "%s" "%s" 1>nul',n,t)Ü
ä o==ì í
o=°
Ü
ä o í o(e)Ü
£.´(e)ë ì
Ü
â £.copyfile(t,e,n)£.À(e)t=ñ.≠(t,»,È)e=ñ.≠(e,»,È)å o
ä n í
o=ñ.†('copy /Y "%s" "%s"',t,e)Ñ
o=ñ.†('copy /Y "%s" "%s"  1>nul',t,e)Ü
ä n==ì í
n=°
Ü
ä n í n(o)Ü
ë £.´(o)Ü
â £.movefile(t,n,o)t=e(t)n=e(n)ä é £.(t)í
ä o í
°("[movefile] file not exist",t,n)Ü
ë
Ü
£.Œ(n)å e=£.Ã(t)n=n..»..e
£.ø(n)å e,r=£.rename(t,n)ä é e í
ä o í
°("[movefile] failed",t,n,r)Ü
Ü
ë e
Ü
â £.dirempty(e)å e=£.dir(e,ì)ë ó.empty(e)Ü
â £.dir(o,e,s)ä ñ.∞(o,-1,-1)==»í
o=ñ.∞(o,1,-2)Ü
å t=30
ä ß(e)=="boolean"í
e=e==á Å 1 è t
Ö ß(e)==Øí
e=e
Ñ
e=t
Ü
å l={}å r={}å â i(o,t)t=t-1
à e ã n.dir(o)É
ä e~='.'Å e~='..'í
å e=o..'/'..e
å n=n.≤(e)ä n==ç í
°("file can't read",e)Ñ
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
Ü
i(o,e)ë r,l
Ü
â £.dirext(e,n,t)å t=ó.„(t)ë £.dir(e,n,â(n,e)ä e í
ë ì
Ü
å e=£.extension(n)ä t[e]í
ë ì
Ü
ë á
Ü)Ü
Ü)û.ü['sllib.table_ext']=(â(...)å â o(n,e)à e,t ã ¨(e)É
n[e]=t
Ü
Ü
å e={¡=á,Û=ì,}o(ó,e)å â r(r)ä é ¡ í
ë{}Ü
å t={}å o={}å â n(e)ä t[e]í
o[e]=e
ë
Ü
t[e]=e
à e,t ã ¨(e)É
ä ß(e)==™í
n(e)Ö ß(t)==™í
n(t)Ü
Ü
Ü
n(r)ë o
Ü
å â c(c,u,f)å n=ó.ò
å d=ó.±
å a={}å r=r(c)å â s(o,i,t)i=i Å(i-1)è 30
ä i<0 í
ë t.."..."Ü
t=t è”ä next(o)==ç í
ë t.."{}"Ü
ä ¡ í
a[o]=o
Ü
å e={}n(e,t.."{")ä r[o]í
n(e,º(o))Ü
n(e,ﬁ)t=t.."  "ä Û è#o==0 í
à l,r ã ¨(o)É
n(e,t)ä ß(l)==™í
ä a[o]í
n(e,º(o))Ñ
ø(e)n(e,s(l,i,t))Ü
Ö ß(l)==Øí
n(e,"["..ù(l).."]")Ñ
å t=˙.ö(l)n(e,'["'..t..'"]')Ü
n(e," = ")ä ß(r)==™í
ä a[r]í
n(e,º(r))Ñ
n(e,ﬁ)n(e,s(r,i,t))Ü
Ö ß(r)==Øí
n(e,ù(r))Ö ß(r)==–í
n(e,÷..r..÷)Ñ
n(e,˙.ö(r))Ü
n(e,",\n")Ü
Ñ
à r,o ã ú(o)É
n(e,t)n(e,"["..ù(r).."]")n(e," = ")ä ß(o)==™í
n(e,ﬁ)ä a[o]í
n(e,º(o))Ñ
n(e,s(o,i,t))Ü
Ö ß(o)==Øí
n(e,ù(o))Ñ
n(e,÷..˙.ö(o)..÷)Ü
n(e,",\n")Ü
Ü
e[#e]=","n(e,ﬁ..ñ.∞(t,1,-3).."}")ë d(e)Ü
ë s(c,u,f)Ü
å â i(t,o)å n=ó.ò
å l=ó.±
o=o Å(o-1)è 10
ä o<0 í
ë"..."Ü
å e={}n(e,"{")à r,t ã ¨(t)É
ä ß(r)==™í
n(e,i(r,o))n(e,"=")Ö ß(r)==Øí
Ñ
n(e,'["'..˙.ö(r)..'"]')n(e,"=")Ü
ä ß(t)==™í
n(e,i(t,o))Ö ß(t)==Øí
n(e,ù(t))Ö ß(t)==–í
n(e,÷..t..÷)Ñ
n(e,˙.ö(t))Ü
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
â ó.¸(n)å e={}à t,n ã ¨(n è{})É
ó.ò(e,n)Ü
ë e
Ü
â ó.„(n)å e={}à t,n ã ¨(n è{})É
e[n]=t
Ü
ë e
Ü
â ó.clone(n,t)å e={}ä é t í
 (e,getmetatable(n))Ü
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
ä ˚(˙,"_tostring")í
e=_tostring(n)Ñ
e=c(n)Ü
ë ñ.≠(e,"^table: ",”)è”Ü
ó.ö=c
ó.tostringex=i
â ó.°(e)ä ß(e)~=™í
˙.°(e)Ñ
˙.°(ó.ö(e))Ü
Ü
Ü)û.ü['sllib.string_ext']=(â(...)â ñ.strtox16(e)ë ñ.≠(e,".",â(e)ë ñ.†("%02X",ñ.byte(e))Ü)Ü
â ñ.x16tostr(e)ë ñ.≠(e,"..",â(e)å e=Ê(e,16)ë ñ.char(e)Ü)Ü
â ñ.dumpex(e)ë ñ.≠(e,".",â(e)ë ñ.†("%02X ",ñ.byte(e))Ü)Ü
â ñ.trim(n,e)e=e è"both"ä e=="begin"í
ë(ñ.≠(n,"^%s*",”))Ö e=="end"í
ë(ñ.≠(n,"%s*$",”))Ö e=="both"í
n=ñ.≠(n,"^%s*",”)ë(ñ.≠(n,"%s*$",”))Ü
Ü
â ñ.iterateString(n,e,t)e=e è'\n'ä é ñ.Ÿ(n,e)í
t(n)ë
Ü
à e ã ñ.gmatch(n,"(.-)"..e)É
t(e)Ü
ä ñ.∞(n,#n-#e+1)==e í
t(”)ë
Ü
å e=ñ.Ÿ(n,".+"..e.."(.*)$")ä e í
t(e)Ü
Ü
â ñ.split(n,o)å e=1
å t=1
å t={}ï e É
å o,r=ñ.find(n,o,e)ä o Å r í
ó.ò(t,ñ.∞(n,e,o-1))e=r+1
Ñ
ä e<=#n í
ó.ò(t,ñ.∞(n,e,-1))Ü
Ç
Ü
Ü
ë t
Ü
â ñ.cutsub(n,t,e)e=e è 1
å t,o=ñ.find(n,t,e,ì)ä t==ç í
ë n,-1
Ü
å e=”ä t>1 í
e=e..ñ.∞(n,1,t-1)Ü
ä o<#n í
e=e..ñ.∞(n,o+1)Ü
ë e,t
Ü
â ñ.ˇ(n,t,r,e)e=e è 1
å t,o=ñ.find(n,t,e,ì)ä t==ç í
ë n,-1
Ü
å e=”ä t>1 í
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
n,e=ñ.ˇ(n,o,t,e)î e==-1
ë n
Ü
Ü)û.ü['sllib.math_ext']=(â(...)ä é ≥.pow í
≥.pow=â(e,n)ë e^n
Ü
Ü
â ≥.cutf(e,n)å t,e=≥.’(e)å e=e*≥.pow(10,n)e=≥.’(e)e=e/≥.pow(10,n)ë t+e
Ü
Ü)û.ü['sllib.debug_ext']=(â(...)å i=ô"sllib.profiler"å l=10
å s=100
â µ.tracevalue(e,t)e=e è 2
t=t è 2
å r={}ó.ò(r,"stack tracevalue:")å i=á
å n="  "å t=e+t
ï e<t É
å t=µ.Ì(e,"nS")i=t.what=="main"å o={}ó.ò(o,ñ.†(n.."file:%s line:%d function:%s()\n",t.€,t.œ,t.‘ è”))n=n.."  "à n=1,l É
å n,e=µ.getlocal(e,n)ä ç==n í
Ç
Ü
ä ß(e)~="function"Å n~="self"í
å t
ä ß(e)==™í
t=ñ.∞(ó.tostringex(e),1,s)Ñ
t=æ(e)Ü
ó.ò(o,æ(n).."="..t)ó.ò(o,ﬁ)Ü
Ü
ó.ò(r,ó.±(o,n))ä i í
Ç
Ü
e=e+1
n=n.."  "Ü
ë ó.±(r,ﬁ)Ü
µ.startanalysis=â(e)i:setLevel(3)i:start(e)Ü
µ.stopanalysis=â(e)i:stop(e)Ü
Ü)û.ü['sllib.list_ext']=(â(...)§=§ è{}â §.map(e,o)à n,t ã ú(e)É
e[n]=o(t,n)Ü
ë e
Ü
â §.filter(e,r)å t={}à o,n ã ú(e)É
ä r(n,o)í
ó.ò(t,n)Ü
Ü
e=t
ë e
Ü
â §.append(e,n)ó.ò(e,n)ë e
Ü
â §.±(...)å e={}à t,n ã ú({...})É
à t,n ã ú(n)É
ó.ò(e,n)Ü
Ü
ë e
Ü
â §.indexOf(e,n)à t,e ã ú(e)É
ä e==n í
ë t
Ü
Ü
ë-1
Ü
â §.ø(e,o)à t,n ã ú(e)É
ä n==o í
ó.ø(e,t)Ç
Ü
Ü
ë e
Ü
â §.∞(n,o,e)e=e è#n
å t={}à e=o,e É
ó.ò(t,n[e])Ü
ë t
Ü
â §.cut(n,e)å n=§.∞(1,e)å e=§.∞(e+1)ë n,e
Ü
â §.(e,n)à t,e ã ú(e)É
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
â §.mirror(n)å e={}à t,n ã ú(n)É
e[n]=n
Ü
ë e
Ü
â §.merge(...)å e=§.±(...)e=ó.„(e)ë ó.keys(e)Ü
â §.mergeex(n,...)å e=§.±(...)e=§.project(e,n)ë ó.¸(e)Ü
â §.project(e,t)å n={}à o,e ã ú(e)É
n[e[t]]=e
Ü
ë n
Ü
Ü)û.ü['sllib.coroutine_ext']=(â(...)å n={}å o={}å e=coroutine
â e.start(n,...)å n=e.create(n)e.‰(n,...)ë n
Ü
â e.lock()å t=e.running()ë â()§.ø(n,t)e.‰(t)Ü
Ü
â e.wait()å t=e.running()ó.ò(n,t)e.yield(t)ä o[t]í
o[t]=ç
ë ì
Ü
ë á
Ü
â e.stop(t)o[cc]=ì
§.ø(n,t)e.‰(t)Ü
â e.stopAll()à r,t ã ú(n)É
o[t]=ì
e.‰(t)Ü
n={}Ü
Ü)û.ü['sllib.set']=(â(...)ä ˚(˙,"set")í
â •.Ù(e,t)å n=•.Ú({})à e ã ¨(e)É
ä •.Õ(t,e)í
•.ò(n,e)Ü
Ü
ë n
Ü
â •.‹(n)å e={}à n ã ¨(n)É
ó.ò(e,n)Ü
ë e
Ü
â •.°(e)å e=•.‹(e)ó.°(e)Ü
ë
Ü
å e={}•={}•.∆=¨
â •.Ú(n)å e= ({},e)à t,n ã ú(n è{})É
•.ò(e,n)Ü
ë e
Ü
â •.Õ(e,n)ë ˚(e,n)==ì
Ü
â •.ò(n,e)ﬂ(n,e,ì)Ü
â •.delete(n,e)ﬂ(n,e,ç)Ü
â •.Ù(n,t)å e=•.Ú()à n ã •.∆(n)É
ä •.Õ(t,n)í
•.ò(e,n)Ü
Ü
ë e
Ü
â •.‹(n)å e={}à n ã •.∆(n)É
ó.ò(e,n)Ü
ë e
Ü
â •.°(e)å e=•.‹(e)ó.°(e)Ü
å â l(t,n)å e=•.Ú()à n ã •.∆(t)É
•.ò(e,n)Ü
à n ã •.∆(n)É
•.ò(e,n)Ü
ë e
Ü
å â o(n,t)å e=•.Ú()à n ã •.∆(n)É
ä é •.Õ(t,n)í
•.ò(e,n)Ü
Ü
ë e
Ü
å â i(n,e)à n ã •.∆(n)É
ä é •.Õ(e,n)í
ë á
Ü
Ü
ë ì
Ü
å â r(t,n)ë •.subset(t,n)Å é •.subset(n,t)Ü
e.__index=•
e.__add=l
e.__sub=o
e.__le=i
e.__lt=r
Ü)û.ü['sllib.time']=(â(...)®=® è{}â ®.®()ë £.®()Ü
â ®.¬()ë £.¬()Ü
â ®.∂()ä £.∂ í
ë £.∂()Ü
å e=ô"socket.core"ë(≥.’(e.gettime()*1e3))Ü
â ®.sleep(e)e=e è 0
£.´("ping -n "..Ê(e+1)..·)Ü
â ®.getstr(n,e)n=n è'%c'e=e è £.®()ë £.Ò(n,e)Ü
â ®.getendofday(e)e=e è £.®()å e=£.Ò('*t',e)å e=£.Ò('*t',£.®({year=e["year"],month=e["month"],day=e["day"],hour=23,min=59,sec=59}))å e=£.®(e)ë e
Ü
â ®.tohour(e)å t=≥.’(e/3600)å n=≥.’(≥.fmod(e,3600)/60)å e=≥.fmod(e,60)ë{hour=t,min=n,sec=e}Ü
Ü)û.ü['sllib.timer']=(â(...)å e=ô"ctimer"©=© è{}ä é e í
ë ©
Ü
å n={}â ©.after(r,o,t)å e=e.¥()å e={⁄=1,®=r+e,‘=t,cbk=o}ó.ò(n,e)©.◊()Ü
â ©.repeats(r,i,o,t)o=o è 0
t=t è{}å e=e.¥()å e=t.runsoon Å e è r+e
å e={⁄=o,®=e,‘=t.‘,cbk=i,interval=r,‡=t.‡}ó.ò(n,e)©.◊()Ü
â ©.cancel(t)à e,o ã ú(n)É
ä o.‘==t í
ó.ø(n,e)Ç
Ü
Ü
Ü
â ©.◊()ó.sort(n,â(n,e)ë n.®<e.®
Ü)Ü
â ©._doUpdate(t)å o=e.¥()å t=0
à r,e ã ú(n)É
ä e.®<o í
e.⁄=e.⁄-1
e.cbk(o)ä e.⁄>0 í
e.®=e.interval+o
ó.ò(n,e)Ñ
ä e.‡ í
e.‡(o)Ü
Ü
t=r
Ü
Ü
ä t>0 Å t<=#n í
n=§.∞(n,t+1)Ü
Ü
â ©.˘()e.˘(©._doUpdate,1e3)Ü
â ©.˛()e.˛()Ü
â ©.waitUpdate()e.waitUpdate()Ü
â ©.∂()ë e.¥()Ü
â ©.®()ë ≥.floor(e.¥()/1e3+.5)Ü
â ©.timeinfo()ë e.getTime()Ü
ë © Ü)û.ü['sllib.logs']=(â(...)¶=¶ è{}å i=á
å n=ç
å a=ì
å s=õ.∫()å r={}å â e(e)å e=ñ.≠(e,"[\r\n\t]",”)ä e==”í
ë ì
Ü
ë á
Ü
å o=ì
å â c(e)ë æ(e,o)Ü
å â l()ä n í
ë n
Ü
å e=£.Ò("*t")å e=ñ.†("%s_%s_%s.log",e.year,e.month,e.day)n=e
ë e
Ü
å â d(n)ä é a í
ë
Ü
å e=l()ÿ.Ω(e,n,"a+")Ü
å â t(t,e)e=á
å e=£.Ò("*t")å o=£.¬()å n=t
ä i í
n=ñ.†("[%s-%s-%s %02s:%02s:%02s %s]%s",e.year,e.month,e.day,e.hour,e.min,e.sec,o,t)Ü
°(n)d(n..'\n')Ü
â ¶.˜(e)a=e
Ü
â ¶.showLogTime(e)i=e
Ü
â ¶.setLogPath(e)n=e
Ü
â ¶.clear()å e=l()ä é £.(e)í
ë
Ü
ÿ.Ω(e,”)Ü
â ¶.«(...)å e={...}å n=#e
å n={}à o,e ã ú(e)É
å e=c(e)ó.ò(n,e)Ü
t(ó.±(n,ı))Ü
â ¶.i(...)¶.«(...)Ü
â ¶.w(...)õ.π(14)¶.«(...)ä s í õ.∏()Ü
Ü
â ¶.e(...)õ.π(12)¶.«(...)å e=o
o=á
t(µ.traceback(”,2))o=e
ä s í õ.∏()Ü
Ü
â ¶.f(e,...)t(ñ.†(e,...))Ü
â ¶.Ô(e,...)e=e è"nil"å e=ñ.†(e,...)å e=µ.traceback(e,2)t(e)Ü
â ¶.®(e)e=ö(e)r[e]=®.∂()Ü
â ¶.timeEnd(e)e=ö(e)ä é r[e]í
ë
Ü
å n=®.∂()-r[e]°(_F("%s:%d",e,n))Ü
ë ¶
Ü)û.ü['sllib.class']=(â(...)å n={}å â t(e)e.__index=e
ë  ({},e)Ü
â class(o,r)å e
ä r í
e=r:Á(o)Ñ
e=n:Á(o)Ü
e.Ú=â(...)å n=t(e)n.__class=e
n:ctor(...)ë n
Ü
e.create=â(n,...)ë e.Ú(...)Ü
ë e
Ü
â n:ctor(...)Ü
â n:dtor()Ü
â n:Á(n)å e=t(¢)e.__name=n
e.super=¢
ë e
Ü
â n:attrReader(...)à n,e ã ú({...})É
å n="get"..ñ.upper(ñ.∞(e,1,1))..ñ.∞(e,2)¢[n]=â(n)ë n[e]Ü
Ü
Ü
â n:attrWriter(...)à n,e ã ú({...})É
å n="set"..ñ.upper(ñ.∞(e,1,1))..ñ.∞(e,2)¢[n]=â(n,t)n[e]=t
Ü
Ü
Ü
â n:include(...)à n,e ã ú({...})É
à e,n ã ¨(e)É
¢[e]=n
Ü
Ü
Ü
â n:delegate(n,e)à t,e ã ú(e)É
¢[e]=â(t,...)ë n[e](n,...)Ü
Ü
Ü
Ü)û.ü['sllib.profiler']=(â(...)å e={}â e:setLogFunc(e)¢.≈=e
Ü
â e:setLevel(e)¢.Ó=e
Ü
â e:start(e)e=e è"profile"¢.≈=°
ä e=="trace"í
µ.Ï(bind(¢.Í,¢),'c')Ñ
¢.∑={}¢.startTime=£.¬()¢.Ó=3
µ.Ï(bind(¢.‚,¢),'cr')Ü
Ü
â e:stop(e)e=e è"profile"µ.Ï()ä e=="trace"í
ë
Ü
¢.stopTime=£.¬()å n=¢.stopTime-¢.startTime
ä n<.001 í
¢.≈("total time less 0.001s")ë
Ü
å e=ó.¸(¢.∑)ó.sort(e,â(n,e)ë n.Æ>e.Æ
Ü)à t,e ã ú(e)É
å n=(e.Æ/n)*100
ä n<1 í
Ç
Ü
å e=ñ.†("time:%6.3f, percent:%.2f%%, count:%d, %s",e.Æ,n,e.ƒ,e.title)¢.≈(e)Ü
Ü
â e:Í()å e=µ.Ì(¢.Ó,'nS')å e=ñ.†("file:%s line:%d function:%s()",e.€,e.œ,e.‘ è”)¢.≈(e)Ü
â e:ˆ(e)å n=e.‘ è'anonymous'å t=e.€ è'C_FUNC'å e=e.œ è 0
ë ñ.†("file:%s line:%s function:%s",t,e,n)Ü
â e:√(e)å n=¢:ˆ(e)å e=¢.∑[n]ä é e í
e={title=n,ƒ=0,Æ=0,}¢.∑[n]=e
Ü
ë e
Ü
â e:‚(n)å o=â(e)å e=¢:√(e)e.¿=£.¬()e.ƒ=e.ƒ+1
Ü
å t=â(e)å n=£.¬()å e=¢:√(e)ä e.¿ Å e.¿>0 í
e.Æ=e.Æ+(n-e.¿)e.¿=0
Ü
Ü
å e=µ.Ì(¢.Ó,'nS')ä e í
ä n=="call"í
o(e)Ö n=="return"í
t(e)Ü
Ü
Ü
ë e
Ü)ﬂ(˙,"SLLIB_VERSION","1.1.2")ô"sllib.console"ô"sllib.global"ô"sllib.lang"ô"sllib.io_ext"ô"sllib.os_ext"ô"sllib.table_ext"ô"sllib.string_ext"ô"sllib.list_ext"ô"sllib.set"ô"sllib.math_ext"ô"sllib.debug_ext"ô"sllib.coroutine_ext"ô"sllib.time"ô"sllib.timer"ô"sllib.logs"ô"sllib.class"enum=ó.„
log=log è ¶.i
logw=logw è ¶.w
loge=loge è ¶.e
logf=logf è ¶.f
Ô=Ô è ¶.Ô
clearLog=clearLog è ¶.clear
writeLogInFile=¶.˜
›=› è ó.›
—=— è load
ﬂ(˙,"bind",â(e,...)å n={...}assert(e,"bind params error")ë â(...)å n=§.±(n,{...})ë e(›(n))Ü
Ü)â æ(e)ä ß(e)==–í
ë÷..e..÷Ö ß(e)==™í
ë ó.ö(e)Ö ß(e)==Øí
ë ù(e)Ñ
å e=ö(e)èÂë e
Ü
Ü
]===], '@sllib_base.lua'))()