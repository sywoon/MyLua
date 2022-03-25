loadstring = loadstring or load 
local base_char,keywords=128,{"and","break","do","else","elseif","end","false","for","function","if","in","local","nil","not","or","repeat","return","then","true","until","while","string","table","insert","require","tostring","console","ipairs","numbertostring","package","preload","format","print","self","os","list","time","set","type","logs","timer","\"table\"","execute","pairs","gsub","sub","totaltime","\"number\"","concat","math","attributes","getTimestamp","debug","millitime","reportsByTitle","resetColor","setColor","isSupportLineColor","tableAddress","defaultColor","writeFile","any2str","remove","calltime","__showInnerRef","\"/\"","callcount","elems","clock","getFuncReport","logFunc","_showLogs","splitpath","setmetatable","mkpredir","basename","member","\"\"","linedefined","mkdir","\"string\"","name","dirname","modf","loadstring","'\"'","short_src","match","io","_sortCbks","count","unpack","invert","endCbk","rawset","resume","\"\\n\"","\" localhost > NUL\"","tolist","profilingHandler","readFile","subClass","\"\\\\\"","\"Unknown object!\"","tonumber","tracingHandler","new","isdir","trace","exist","find","__keyCanBeNum","date","getinfo","level","sethook","'\\t'","intersection","getFuncTitle","_G","values","writeInFile","startUpdate","splitpathex","rawget","tostringex","waitUpdate",}; function prettify(code) return code:gsub("["..string.char(base_char).."-"..string.char(base_char+#keywords).."]", 
	function (c) return keywords[c:byte()-base_char]; end) end return assert(loadstring(prettify[===[û.ü['sllib.console']=(â(...)å e=_VERSION=="Lua 5.3"Å 1 è 0
å t
ä e==1 í
t=ô"console.core"Ü
õ=õ è{}õ.º=7
â õ.∫()ë e==1
Ü
â õ.setDefaultColor(e)õ.º=e
Ü
â õ.π(n)ä e==1 í
ë t:setTextColor(n)Ñ
å e=ñ.†("color %02X",n)ë £.´(e)Ü
Ü
â õ.∏()ä e==1 í
õ.π(õ.º)Ñ
å e=ñ.†("color %02X",õ.º)ë £.´(e)Ü
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
ä ≤.‘(e)~=e í
ë ö(e)Ü
å n=≤.fmod(e,10^13)å e=≤.‘(e/10^13)å e=ñ.†("%s%013s",ö(e),ö(n))ë e
Ü
â æ(e,n)ä ß(e)==—í
ä n Å e~=·í
ë÷..e..÷Ñ
ë e
Ü
Ö ß(e)==™í
ë ó.ö(e)Ö ß(e)==∞í
ë ù(e)Ñ
å e=ö(e)èËë e
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
å â e(e,...)e=e èıå t={...}å n={}à t,e ã ú(t)É
ó.ò(n,_U2A(æ(e)))Ü
å e=ó.±(n,e)ë e
Ü
â printu(...)å e=e(ı,...)°(e)Ü
â printuw(...)å e=e(ı,...)printw(e)Ü
â printue(...)å e=e(ı,...)printe(e)Ü
Ü)û.ü['sllib.io_ext']=(â(...)â Ÿ.Â(n,e)e=e è"r"å e=Ÿ.open(n,e)ä e==ç í
ë ç
Ü
å n=e:read("*a")e:close()ë n
Ü
â Ÿ.Ω(n,t,e)e=e è"w"å e=Ÿ.open(n,e)ä e==ç í
ë á
Ü
e:write(t)e:close()ë ì
Ü
â Ÿ.fileSize(e)å n=0
å e=Ÿ.open(e,"r")ä e í
å t=e:seek()n=e:seek("end")e:seek("set",t)Ÿ.close(e)Ü
ë n
Ü
â Ÿ.readJsonFile(e,n)å e=Ÿ.Â(e)ä ç==e è e==Œí
ë ç
Ü
ä n í
e=n(e)Ü
å n=ô"cjson"è ô"json"å e=n.decode(e)ë e
Ü
â Ÿ.writeJsonFile(t,r,n,o)ä ç==n í n=ì Ü
å e=£.”(t)£.–(e)å e=ô"cjson"è ô"json"å e=e.encode(r)ä n í
e=ñ.≠(e,"\\/",¬)e=ñ.≠(e,"\\\\",Á)Ü
ä o í
e=o(e)Ü
Ÿ.Ω(t,e)ë ì
Ü
â Ÿ.readLuaFile(e,n)å e=Ÿ.Â(e)ä ç==e í
ë ç
Ü
ä n í
e=n(e)Ü
å n=’ è load
å e=n(e)()ë e
Ü
â Ÿ.writeLuaFile(n,o,t)å e=£.”(n)£.–(e)ä ç==ó.ö í
ë á
Ü
å e=ó.ö(o)ä ç==e í
ë á
Ü
ä t í
e=t(e)Ü
Ÿ.Ω(n,e)ë ì
Ü
Ü)û.ü['sllib.os_ext']=(â(...)å n=ô"lfs"â £.pause(e)ä e í
£.´(_F('cmd /c echo "%s" && pause',e))Ñ
£.´("cmd /c pause")Ü
Ü
â £.sleep(e)e=e è 1
£.´("ping -n "..È(e+1)..‚)Ü
å â e(e,n)e=ñ.≠(e,Á,¬)e=ñ.≠(e,"//",¬)ä ñ.byte(e,-1)==47 í
ä é n í
e=ñ.Æ(e,1,-2)Ü
Ñ
ä n í
e=e..¬Ü
Ü
ë e
Ü
£.fixPath=e
å â r(e)ë ñ.ÿ(e,"^%a:")Ü
â £.newfile(e)£.À(e)å e="echo.>"..e
£.´(e)Ü
â £.currentdir()ë n.currentdir()Ü
â £.chdir(e)ë n.chdir(e)Ü
â £.filetime(t)t=e(t)å e=n.≥(t)ë e Å e.modification è 0
Ü
â £.Ï(t)t=e(t)å e=n.≥(t)ë e Å e.mode=="directory"Ü
â £.isfile(t)t=e(t)å e=n.≥(t)ë e Å e.mode=="file"Ü
â £.Ó(t)t=e(t)å e=n.≥(t)ë ç~=e
Ü
â £.filesize(t)t=e(t)å e=n.≥(t)ë e.size
Ü
â £.…(n)n=e(n)å e=#n
å t=ñ.Æ(n,e,e)ï e>0 Å t~=¬É
e=e-1
t=ñ.Æ(n,e,e)Ü
ä e==0 í
ëŒ,n
Ü
å t=ñ.Æ(n,1,e-1)å e=ñ.Æ(n,e+1)ë t,e
Ü
â £.¸(n)å e={}å t=n
å n
ï ì É
t,n=£.…(t)ä ç==n èŒ==n í
Ç
Ü
ó.ò(e,n)Ü
e=§.reverse(e)ë e,#e
Ü
â £.”(e)å e,n=£.…(e)ë e
Ü
â £.Ã(e)å n,e=£.…(e)ë e
Ü
â £.filename(e)å n=£.Ã(e)å e,t=ñ.ÿ(n,"^(.*)%.(%w*)$")ä e í
ë e,t
Ü
ë n
Ü
â £.extension(e)ë ñ.ÿ(e,"%.%w*$")Ü
â £.–(t)t=e(t)å t=£.¸(t)å e=Œà o=1,#t É
e=e..t[o]ä é r(t[o])Å é £.Ï(e)í
å e,n=n.–(e)ä ç==e í
ë e,n
Ü
Ü
e=e..¬Ü
ë ì
Ü
â £.À(n)n=e(n)å e=£.”(n)ä e Å e~=Œí
ë £.–(e)Ü
ë ì
Ü
â £.rmdir(n,e)ä é £.Ï(n)í
ä e í
°("os.rmdir error:not dir:"..n)Ü
ë
Ü
n=ñ.≠(n,¬,Á)å t
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
å e=£.Ã(t)n=n..¬..e
Ü
£.À(n)å e,o=£.rename(t,n)ä é e í
°("movedir failed",t,n,o)Ü
ë e
Ü
â £.copydir(n,t,o)n=e(n)t=e(t)ä é £.Ï(n)í
°("path error",n,t)ë á
Ü
n=ñ.≠(n,¬,Á)t=ñ.≠(t,¬,Á)å e
ä o í
e=ñ.†('xcopy /Y /E /I /Q "%s" "%s"',n,t)Ñ
e=ñ.†('xcopy /Y /E /I /Q "%s" "%s" 1>nul',n,t)Ü
ä o==ì í
o=°
Ü
ä o í o(e)Ü
£.´(e)ë ì
Ü
â £.copyfile(t,e,n)£.À(e)t=ñ.≠(t,¬,Á)e=ñ.≠(e,¬,Á)å o
ä n í
o=ñ.†('copy /Y "%s" "%s"',t,e)Ñ
o=ñ.†('copy /Y "%s" "%s"  1>nul',t,e)Ü
ä n==ì í
n=°
Ü
ä n í n(o)Ü
ë £.´(o)Ü
â £.movefile(t,n,o)t=e(t)n=e(n)ä é £.Ó(t)í
ä o í
°("[movefile] file not exist",t,n)Ü
ë
Ü
£.–(n)å e=£.Ã(t)n=n..¬..e
£.ø(n)å e,r=£.rename(t,n)ä é e í
ä o í
°("[movefile] failed",t,n,r)Ü
Ü
ë e
Ü
â £.dirempty(e)å e=£.dir(e,ì)ë ó.empty(e)Ü
â £.dir(o,e,l)ä ñ.Æ(o,-1,-1)==¬í
o=ñ.Æ(o,1,-2)Ü
å t=30
ä ß(e)=="boolean"í
e=e==á Å 1 è t
Ö ß(e)==∞í
e=e
Ñ
e=t
Ü
å i={}å s={}å â r(o,t)t=t-1
à e ã n.dir(o)É
ä e~='.'Å e~='..'í
å e=o..'/'..e
å n=n.≥(e)ä n==ç í
°("file can't read",e)Ñ
å n=n.mode=='directory'ä ç==l è l(e,n)í
ä n í
ó.ò(i,e)Ñ
ó.ò(s,e)Ü
ä n Å t>0 í
r(e,t)Ü
Ü
Ü
Ü
Ü
Ü
r(o,e)ë s,i
Ü
â £.dirext(e,t,n)å n=ó.›(n)ë £.dir(e,t,â(e,t)ä t í
ë ì
Ü
å e=£.extension(e)ä n[e]í
ë ì
Ü
ë á
Ü)Ü
Ü)û.ü['sllib.table_ext']=(â(...)å â e(n,e)à e,t ã ¨(e)É
n[e]=t
Ü
Ü
å n={¡=á,=ì,}e(ó,n)å â i(r)ä é ¡ í
ë{}Ü
å t={}å o={}å â n(e)ä t[e]í
o[e]=e
ë
Ü
t[e]=e
à t,e ã ¨(e)É
ä ß(t)==™í
n(t)Ö ß(e)==™í
n(e)Ü
Ü
Ü
n(r)ë o
Ü
å â c(c,f,u)å n=ó.ò
å d=ó.±
å a={}å r=i(c)å â s(o,i,t)i=i Å(i-1)è 30
ä i<0 í
ë t.."..."Ü
t=t èŒä next(o)==ç í
ë t.."{}"Ü
ä ¡ í
a[o]=o
Ü
å e={}n(e,t.."{")ä r[o]í
n(e,ª(o))Ü
n(e,·)t=t.."  "ä  è#o==0 í
à l,r ã ¨(o)É
n(e,t)ä ß(l)==™í
ä a[o]í
n(e,ª(o))Ñ
ø(e)n(e,s(l,i,t))Ü
Ö ß(l)==∞í
n(e,"["..ù(l).."]")Ñ
å t=¯.ö(l)n(e,'["'..t..'"]')Ü
n(e," = ")ä ß(r)==™í
ä a[r]í
n(e,ª(r))Ñ
n(e,·)n(e,s(r,i,t))Ü
Ö ß(r)==∞í
n(e,ù(r))Ö ß(r)==—í
n(e,÷..r..÷)Ñ
n(e,¯.ö(r))Ü
n(e,",\n")Ü
Ñ
à r,o ã ú(o)É
n(e,t)n(e,"["..ù(r).."]")n(e," = ")ä ß(o)==™í
n(e,·)ä a[o]í
n(e,ª(o))Ñ
n(e,s(o,i,t))Ü
Ö ß(o)==∞í
n(e,ù(o))Ñ
n(e,÷..¯.ö(o)..÷)Ü
n(e,",\n")Ü
Ü
e[#e]=","n(e,·..ñ.Æ(t,1,-3).."}")ë d(e)Ü
ë s(c,f,u)Ü
å â i(t,o)å n=ó.ò
å l=ó.±
o=o Å(o-1)è 10
ä o<0 í
ë"..."Ü
å e={}n(e,"{")à r,t ã ¨(t)É
ä ß(r)==™í
n(e,i(r,o))n(e,"=")Ö ß(r)==∞í
Ñ
n(e,'["'..¯.ö(r)..'"]')n(e,"=")Ü
ä ß(t)==™í
n(e,i(t,o))Ö ß(t)==∞í
n(e,ù(t))Ö ß(t)==—í
n(e,÷..t..÷)Ñ
n(e,¯.ö(t))Ü
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
â ó.˘(n)å e={}à t,n ã ¨(n è{})É
ó.ò(e,n)Ü
ë e
Ü
â ó.›(n)å e={}à t,n ã ¨(n è{})É
e[n]=t
Ü
ë e
Ü
â ó.clone(n,t)å e={}ä é t í
 (e,getmetatable(n))Ü
à t,n ã ¨(n)É
e[t]=n
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
ä ˝(¯,"_tostring")í
e=_tostring(n)Ñ
e=c(n)Ü
ë ñ.≠(e,"^table: ",Œ)èŒÜ
ó.ö=c
ó.˛=i
â ó.°(e)ä ß(e)~=™í
¯.°(e)Ñ
¯.°(ó.ö(e))Ü
Ü
Ü)û.ü['sllib.string_ext']=(â(...)â ñ.strtox16(e)ë ñ.≠(e,".",â(e)ë ñ.†("%02X",ñ.byte(e))Ü)Ü
â ñ.x16tostr(e)ë ñ.≠(e,"..",â(e)å e=È(e,16)ë ñ.char(e)Ü)Ü
â ñ.dumpex(e)ë ñ.≠(e,".",â(e)ë ñ.†("%02X ",ñ.byte(e))Ü)Ü
â ñ.rfind(i,r)å n,e=ñ.Ô(i,r,1,ì)å t,o=n,e
ï n~=ç É
t,o=n,e
n,e=ñ.Ô(i,r,e,ì)Ü
ë t,o
Ü
â ñ.trim(n,e)e=e è"both"ä e=="begin"í
ë(ñ.≠(n,"^%s*",Œ))Ö e=="end"í
ë(ñ.≠(n,"%s*$",Œ))Ö e=="both"í
n=ñ.≠(n,"^%s*",Œ)ë(ñ.≠(n,"%s*$",Œ))Ü
Ü
â ñ.iterateString(n,e,t)e=e è'\n'ä é ñ.ÿ(n,e)í
t(n)ë
Ü
à e ã ñ.gmatch(n,"(.-)"..e)É
t(e)Ü
ä ñ.Æ(n,#n-#e+1)==e í
t(Œ)ë
Ü
å e=ñ.ÿ(n,".+"..e.."(.*)$")ä e í
t(e)Ü
Ü
â ñ.split(n,o)å e=1
å t=1
å t={}ï e É
å o,r=ñ.Ô(n,o,e)ä o Å r í
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
å t=ñ.Æ(n,1,t-1)èŒå e=ñ.Æ(n,e+1)èŒë t..e
Ü
â ñ.cutsub(n,t,e)e=e è 1
å t,o=ñ.Ô(n,t,e,ì)ä t==ç í
ë n,-1
Ü
å e=Œä t>1 í
e=e..ñ.Æ(n,1,t-1)Ü
ä o<#n í
e=e..ñ.Æ(n,o+1)Ü
ë e,t
Ü
â ñ.replacesub(n,t,r,e)e=e è 1
å t,o=ñ.Ô(n,t,e,ì)ä t==ç í
ë n,-1
Ü
å e=Œä t>1 í
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
â ≤.cutf(e,n)å t,e=≤.‘(e)å e=e*≤.pow(10,n)e=≤.‘(e)e=e/≤.pow(10,n)ë t+e
Ü
Ü)û.ü['sllib.debug_ext']=(â(...)å r=ô"sllib.profiler"å s=10
å l=100
â µ.tracevalue(e,t)e=e è 2
t=t è 2
å r={}ó.ò(r,"stack tracevalue:")å i=á
å n="  "å t=e+t
ï e<t É
å o=µ.Ú(e,"nS")i=o.what=="main"å t={}ó.ò(t,ñ.†(n.."file:%s line:%d function:%s()\n",o.◊,o.œ,o.“ èŒ))n=n.."  "à n=1,s É
å o,e=µ.getlocal(e,n)ä ç==o í
Ç
Ü
ä ß(e)~="function"Å o~="self"í
å n
ä ß(e)==™í
n=ñ.Æ(ó.˛(e),1,l)Ñ
n=æ(e)Ü
ó.ò(t,æ(o).."="..n)ó.ò(t,·)Ü
Ü
ó.ò(r,ó.±(t,n))ä i í
Ç
Ü
e=e+1
n=n.."  "Ü
ë ó.±(r,·)Ü
µ.startanalysis=â(e)r:setLevel(3)r:start(e)Ü
µ.stopanalysis=â(e)r:stop(e)Ü
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
â §.±(...)å e={}à t,n ã ú({...})É
à t,n ã ú(n)É
ó.ò(e,n)Ü
Ü
ë e
Ü
â §.indexOf(e,t)à n,e ã ú(e)É
ä e==t í
ë n
Ü
Ü
ë-1
Ü
â §.ø(e,n)à o,t ã ú(e)É
ä t==n í
ó.ø(e,o)Ç
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
â §.Ó(e,n)à t,e ã ú(e)É
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
â §.merge(...)å e=§.±(...)e=ó.›(e)ë ó.keys(e)Ü
â §.mergeex(n,...)å e=§.±(...)e=§.project(e,n)ë ó.˘(e)Ü
â §.project(n,t)å e={}à o,n ã ú(n)É
e[n[t]]=n
Ü
ë e
Ü
Ü)û.ü['sllib.coroutine_ext']=(â(...)å n={}å o={}å e=coroutine
â e.start(n,...)å n=e.create(n)e.‡(n,...)ë n
Ü
â e.lock()å t=e.running()ë â()§.ø(n,t)e.‡(t)Ü
Ü
â e.wait()å t=e.running()ó.ò(n,t)e.yield(t)ä o[t]í
o[t]=ç
ë ì
Ü
ë á
Ü
â e.stop(t)o[cc]=ì
§.ø(n,t)e.‡(t)Ü
â e.stopAll()à r,t ã ú(n)É
o[t]=ì
e.‡(t)Ü
n={}Ü
Ü)û.ü['sllib.set']=(â(...)ä ˝(¯,"set")í
â ¶.ˆ(n,t)å e=¶.Î({})à n ã ¨(n)É
ä ¶.Õ(t,n)í
¶.ò(e,n)Ü
Ü
ë e
Ü
â ¶.„(n)å e={}à n ã ¨(n)É
ó.ò(e,n)Ü
ë e
Ü
â ¶.°(e)å e=¶.„(e)ó.°(e)Ü
ë
Ü
å e={}¶={}¶.ƒ=¨
â ¶.Î(n)å e= ({},e)à t,n ã ú(n è{})É
¶.ò(e,n)Ü
ë e
Ü
â ¶.Õ(n,e)ë ˝(n,e)==ì
Ü
â ¶.ò(n,e)ﬂ(n,e,ì)Ü
â ¶.delete(n,e)ﬂ(n,e,ç)Ü
â ¶.ˆ(e,t)å n=¶.Î()à e ã ¶.ƒ(e)É
ä ¶.Õ(t,e)í
¶.ò(n,e)Ü
Ü
ë n
Ü
â ¶.„(n)å e={}à n ã ¶.ƒ(n)É
ó.ò(e,n)Ü
ë e
Ü
â ¶.°(e)å e=¶.„(e)ó.°(e)Ü
å â i(n,t)å e=¶.Î()à n ã ¶.ƒ(n)É
¶.ò(e,n)Ü
à n ã ¶.ƒ(t)É
¶.ò(e,n)Ü
ë e
Ü
å â r(n,t)å e=¶.Î()à n ã ¶.ƒ(n)É
ä é ¶.Õ(t,n)í
¶.ò(e,n)Ü
Ü
ë e
Ü
å â o(e,n)à e ã ¶.ƒ(e)É
ä é ¶.Õ(n,e)í
ë á
Ü
Ü
ë ì
Ü
å â l(t,n)ë ¶.subset(t,n)Å é ¶.subset(n,t)Ü
e.__index=¶
e.__add=i
e.__sub=r
e.__le=o
e.__lt=l
Ü)û.ü['sllib.time']=(â(...)•=• è{}â •.•()ë £.•()Ü
â •.≈()ë £.≈()Ü
â •.∂()ä £.∂ í
ë £.∂()Ü
å e=ô"socket.core"ë(≤.‘(e.gettime()*1e3))Ü
â •.sleep(e)e=e è 0
£.´("ping -n "..È(e+1)..‚)Ü
â •.getstr(e,n)e=e è'%c'n=n è £.•()ë £.Ò(e,n)Ü
â •.getendofday(e)e=e è £.•()å e=£.Ò('*t',e)å e=£.Ò('*t',£.•({year=e["year"],month=e["month"],day=e["day"],hour=23,min=59,sec=59}))å e=£.•(e)ë e
Ü
â •.tohour(e)å n=≤.‘(e/3600)å t=≤.‘(≤.fmod(e,3600)/60)å e=≤.fmod(e,60)ë{hour=n,min=t,sec=e}Ü
Ü)û.ü['sllib.timer']=(â(...)å n=ô"ctimer"©=© è{}ä é n í
ë ©
Ü
å e={}â ©.after(o,r,t)å n=n.¥()å n={€=1,•=o+n,“=t,cbk=r}ó.ò(e,n)©.⁄()Ü
â ©.repeats(r,i,o,t)o=o è 0
t=t è{}å n=n.¥()å n=t.runsoon Å n è r+n
å n={€=o,•=n,“=t.“,cbk=i,interval=r,ﬁ=t.ﬁ}ó.ò(e,n)©.⁄()Ü
â ©.cancel(o)à t,n ã ú(e)É
ä n.“==o í
ó.ø(e,t)Ç
Ü
Ü
Ü
â ©.⁄()ó.sort(e,â(e,n)ë e.•<n.•
Ü)Ü
â ©._doUpdate(t)å t=n.¥()å o=0
à r,n ã ú(e)É
ä n.•<t í
n.€=n.€-1
n.cbk(t)ä n.€>0 í
n.•=n.interval+t
ó.ò(e,n)Ñ
ä n.ﬁ í
n.ﬁ(t)Ü
Ü
o=r
Ü
Ü
ä o>0 Å o<=#e í
e=§.Æ(e,o+1)Ü
Ü
â ©.˚()n.˚(©._doUpdate,1e3)Ü
â ©.stopUpdate()n.stopUpdate()Ü
â ©.ˇ()n.ˇ()Ü
â ©.∂()ë n.¥()Ü
â ©.•()ë ≤.floor(n.¥()/1e3+.5)Ü
â ©.timeinfo()ë n.getTime()Ü
ë © Ü)û.ü['sllib.logs']=(â(...)®=® è{}å i=á
å n=ç
å l=ì
å s=õ.∫()å r={}å â e(e)å e=ñ.≠(e,"[\r\n\t]",Œ)ä e==Œí
ë ì
Ü
ë á
Ü
å o=ì
å â c(e)ë æ(e,o)Ü
å â a()ä n í
ë n
Ü
å e=£.Ò("*t")å e=ñ.†("%s_%s_%s.log",e.year,e.month,e.day)n=e
ë e
Ü
å â d(n)ä é l í
ë
Ü
å e=a()Ÿ.Ω(e,n,"a+")Ü
å â t(t,e)e=á
å e=£.Ò("*t")å o=£.≈()å n=t
ä i í
n=ñ.†("[%s-%s-%s %02s:%02s:%02s %s]%s",e.year,e.month,e.day,e.hour,e.min,e.sec,o,t)Ü
°(n)d(n..'\n')Ü
â ®.˙(e)l=e
Ü
â ®.showLogTime(e)i=e
Ü
â ®.setLogPath(e)n=e
Ü
â ®.clear()å e=a()ä é £.Ó(e)í
ë
Ü
Ÿ.Ω(e,Œ)Ü
â ®.»(...)å n={...}å e=#n
å e={}à o,n ã ú(n)É
å n=c(n)ó.ò(e,n)Ü
t(ó.±(e,ı))Ü
â ®.i(...)®.»(...)Ü
â ®.w(...)õ.π(14)®.»(...)ä s í õ.∏()Ü
Ü
â ®.e(...)õ.π(12)®.»(...)å e=o
o=á
t(µ.traceback(Œ,2))o=e
ä s í õ.∏()Ü
Ü
â ®.f(e,...)t(ñ.†(e,...))Ü
â ®.Ì(e,...)e=e è"nil"å e=ñ.†(e,...)å e=µ.traceback(e,2)t(e)Ü
â ®.•(e)e=ö(e)r[e]=•.∂()Ü
â ®.timeEnd(e)e=ö(e)ä é r[e]í
ë
Ü
å n=•.∂()-r[e]°(_F("%s:%d",e,n))Ü
ë ®
Ü)û.ü['sllib.class']=(â(...)å e={}å â t(e)e.__index=e
ë  ({},e)Ü
â class(o,r)å n
ä r í
n=r:Ê(o)Ñ
n=e:Ê(o)Ü
n.Î=â(...)å e=t(n)e.__class=n
e:ctor(...)ë e
Ü
n.create=â(e,...)ë n.Î(...)Ü
ë n
Ü
â e:ctor(...)Ü
â e:dtor()Ü
â e:Ê(n)å e=t(¢)e.__name=n
e.super=¢
ë e
Ü
â e:attrReader(...)à n,e ã ú({...})É
å n="get"..ñ.upper(ñ.Æ(e,1,1))..ñ.Æ(e,2)¢[n]=â(n)ë n[e]Ü
Ü
Ü
â e:attrWriter(...)à n,e ã ú({...})É
å n="set"..ñ.upper(ñ.Æ(e,1,1))..ñ.Æ(e,2)¢[n]=â(t,n)t[e]=n
Ü
Ü
Ü
â e:include(...)à n,e ã ú({...})É
à e,n ã ¨(e)É
¢[e]=n
Ü
Ü
Ü
â e:delegate(e,n)à t,n ã ú(n)É
¢[n]=â(t,...)ë e[n](e,...)Ü
Ü
Ü
Ü)û.ü['sllib.profiler']=(â(...)å e={}â e:setLogFunc(e)¢.«=e
Ü
â e:setLevel(e)¢.Û=e
Ü
â e:start(e)e=e è"profile"¢.«=°
ä e=="trace"í
µ.Ù(bind(¢.Í,¢),'c')Ñ
¢.∑={}¢.startTime=£.≈()¢.Û=3
µ.Ù(bind(¢.‰,¢),'cr')Ü
Ü
â e:stop(e)e=e è"profile"µ.Ù()ä e=="trace"í
ë
Ü
¢.stopTime=£.≈()å n=¢.stopTime-¢.startTime
ä n<.001 í
¢.«("total time less 0.001s")ë
Ü
å e=ó.˘(¢.∑)ó.sort(e,â(n,e)ë n.Ø>e.Ø
Ü)à t,e ã ú(e)É
å n=(e.Ø/n)*100
ä n<1 í
Ç
Ü
å e=ñ.†("time:%6.3f, percent:%.2f%%, count:%d, %s",e.Ø,n,e.√,e.title)¢.«(e)Ü
Ü
â e:Í()å e=µ.Ú(¢.Û,'nS')å e=ñ.†("file:%s line:%d function:%s()",e.◊,e.œ,e.“ èŒ)¢.«(e)Ü
â e:˜(e)å t=e.“ è'anonymous'å n=e.◊ è'C_FUNC'å e=e.œ è 0
ë ñ.†("file:%s line:%s function:%s",n,e,t)Ü
â e:∆(e)å n=¢:˜(e)å e=¢.∑[n]ä é e í
e={title=n,√=0,Ø=0,}¢.∑[n]=e
Ü
ë e
Ü
â e:‰(n)å t=â(e)å e=¢:∆(e)e.¿=£.≈()e.√=e.√+1
Ü
å o=â(e)å n=£.≈()å e=¢:∆(e)ä e.¿ Å e.¿>0 í
e.Ø=e.Ø+(n-e.¿)e.¿=0
Ü
Ü
å e=µ.Ú(¢.Û,'nS')ä e í
ä n=="call"í
t(e)Ö n=="return"í
o(e)Ü
Ü
Ü
ë e
Ü)ﬂ(¯,"SLLIB_VERSION","1.1.2")ô"sllib.console"ô"sllib.global"ô"sllib.lang"ô"sllib.io_ext"ô"sllib.os_ext"ô"sllib.table_ext"ô"sllib.string_ext"ô"sllib.list_ext"ô"sllib.set"ô"sllib.math_ext"ô"sllib.debug_ext"ô"sllib.coroutine_ext"ô"sllib.time"ô"sllib.timer"ô"sllib.logs"ô"sllib.class"enum=ó.›
log=log è ®.i
logw=logw è ®.w
loge=loge è ®.e
logf=logf è ®.f
Ì=Ì è ®.Ì
clearLog=clearLog è ®.clear
writeLogInFile=®.˙
‹=‹ è ó.‹
’=’ è load
ﬂ(¯,"bind",â(e,...)å n={...}assert(e,"bind params error")ë â(...)å n=§.±(n,{...})ë e(‹(n))Ü
Ü)â æ(e)ä ß(e)==—í
ë÷..e..÷Ö ß(e)==™í
ë ó.ö(e)Ö ß(e)==∞í
ë ù(e)Ñ
å e=ö(e)èËë e
Ü
Ü
]===], '@sllib_base.lua'))()