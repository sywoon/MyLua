loadstring = loadstring or load 
local base_char,keywords=128,{"and","break","do","else","elseif","end","false","for","function","if","in","local","nil","not","or","repeat","return","then","true","until","while","string","table","console","require","tostring","numbertostring","format","insert","self","os","type","package","preload","logs","ipairs","\"table\"","list","print","execute","totaltime","\"number\"","attributes","pairs","debug","time","sub","concat","gsub","reportsByTitle","resetColor","math","setColor","isSupportLineColor","tableAddress","defaultColor","writeFile","calltime","__showInnerRef","\"/\"","splitpath","clock","_showLogs","logFunc","getFuncReport","callcount","basename","mkpredir","linedefined","mkdir","\"string\"","loadstring","modf","dirname","'\"'","short_src","match","io","profilingHandler","unpack","remove","\"\\n\"","\" localhost > NUL\"","\"Unknown object!\"","readFile","subClass","tonumber","tracingHandler","\"\"","any2str","date","isdir","sethook","getinfo","level","trace","__keyCanBeNum","\"\\\\\"","getFuncTitle","setmetatable","invert","writeInFile","splitpathex","_G","\"color %02X\"","currentdir","startTime","close","month","traceback","extension","exist","stopTime","clearLog","setLevel","\"ping -n \"","\"  \"","year","seek","open","project","hour","reverse","\"profile\"","fmod","mode","dir",}; function prettify(code) return code:gsub("["..string.char(base_char).."-"..string.char(base_char+#keywords).."]", 
	function (c) return keywords[c:byte()-base_char]; end) end return assert(loadstring(prettify[===[°.¢['sllib.console']=(â(...)å e=_VERSION=="Lua 5.3"Å 1 è 0
å t
ä e==1 í
t=ô"console.core"Ü
ò=ò è{}ò.∏=7
â ò.∂()ë e==1
Ü
â ò.setDefaultColor(e)ò.∏=e
Ü
â ò.µ(n)ä e==1 í
ë t:setTextColor(n)Ñ
å e=ñ.ú(È,n)ë ü.®(e)Ü
Ü
â ò.≥()ä e==1 í
ò.µ(ò.∏)Ñ
å e=ñ.ú(È,ò.∏)ë ü.®(e)Ü
Ü
â ò.describe()å e=[[
    0x07 background:black foreground:white
    0	=	Black	 	8	=	Gray
    1	=	Blue	 	9	=	Light Blue
    2	=	Green	 	A	=	Light Green
    3	=	Aqua	 	B	=	Light Aqua
    4	=	Red	 	C	=	Light Red
    5	=	Purple	 	D	=	Light Purple
    6	=	Yellow	 	E	=	Light Yellow
    7	=	White	 	F	=	Bright White
]]ß(e)Ü
Ü)°.¢['sllib.global']=(â(...)â õ(e)ä e<0 í
ë"-"..õ(-e)Ü
ä e<=10^13 í
ë ö(e)Ü
ä ¥.…(e)~=e í
ë ö(e)Ü
å n=¥.˝(e,10^13)å e=¥.…(e/10^13)å e=ñ.ú("%s%013s",ö(e),ö(n))ë e
Ü
â _F(e,...)ë ñ.ú(e,...)Ü
å e=ò.∂()â printw(...)ò.µ(14)ß(...)ä e í ò.≥()Ü
Ü
â printe(...)ò.µ(12)ß(...)ä e í ò.≥()Ü
Ü
Ü)°.¢['sllib.io_ext']=(â(...)â Œ.’(n,e)e=e è"r"å e=Œ.¯(n,e)ä e==ç í
ë ç
Ü
å n=e:read("*a")e:Ï()ë n
Ü
â Œ.π(n,t,e)e=e è"w"å e=Œ.¯(n,e)ä e==ç í
ë á
Ü
e:write(t)e:Ï()ë ì
Ü
â Œ.fileSize(e)å n=0
å e=Œ.¯(e,"r")ä e í
å t=e:˜()n=e:˜("end")e:˜("set",t)Œ.Ï(e)Ü
ë n
Ü
â Œ.readJsonFile(e,n)å e=Œ.’(e)ä ç==e è e==Ÿí
ë ç
Ü
ä n í
e=n(e)Ü
å n=ô"cjson"è ô"json"å e=n.decode(e)ë e
Ü
â Œ.writeJsonFile(o,r,n,t)ä ç==n í n=ì Ü
å e=ü. (o)ü.∆(e)å e=ô"cjson"è ô"json"å e=e.encode(r)ä n í
e=ñ.±(e,"\\/",º)e=ñ.±(e,"\\\\",º)Ü
ä t í
e=t(e)Ü
Œ.π(o,e)ë ì
Ü
â Œ.readLuaFile(e,n)å e=Œ.’(e)ä ç==e í
ë ç
Ü
ä n í
e=n(e)Ü
å n=» è load
å e=n(e)()ë e
Ü
â Œ.writeLuaFile(t,o,n)å e=ü. (t)ü.∆(e)ä ç==ó.ö í
ë á
Ü
å e=ó.ö(o)ä ç==e í
ë á
Ü
ä n í
e=n(e)Ü
Œ.π(t,e)ë ì
Ü
Ü)°.¢['sllib.os_ext']=(â(...)å n=ô"lfs"â ü.pause(...)ß(...)ü.®("cmd /c pause")Ü
â ü.sleep(e)e=e è 1
ü.®(Ù..◊(e+1)..”)Ü
å â e(e)e=ñ.±(e,‚,º)e=ñ.±(e,"//",º)ä ñ.Ø(e,-1,-1)==ºí
e=ñ.Ø(e,1,-2)Ü
ë e
Ü
å â r(e)ë ñ.Õ(e,"^%a:")Ü
â ü.newfile(e)ü.ƒ(e)å e="echo.>"..e
ü.®(e)Ü
â ü.Í()ë n.Í()Ü
â ü.chdir(e)ë n.chdir(e)Ü
â ü.filetime(t)t=e(t)å e=n.´(t)ë e Å e.modification è 0
Ü
â ü.‹(t)t=e(t)å e=n.´(t)ë e Å e.˛=="directory"Ü
â ü.isfile(t)t=e(t)å e=n.´(t)ë e Å e.˛=="file"Ü
â ü.(t)t=e(t)å e=n.´(t)ë ç~=e
Ü
â ü.filesize(t)t=e(t)å e=n.´(t)ë e.size
Ü
â ü.Ω(n)n=e(n)å e=#n
å t=ñ.Ø(n,e,e)ï e>0 Å t~=ºÉ
e=e-1
t=ñ.Ø(n,e,e)Ü
ä e==0 í
ëŸ,n
Ü
å t=ñ.Ø(n,1,e-1)å e=ñ.Ø(n,e+1)ë t,e
Ü
â ü.Á(n)å e={}å t=n
å n
ï ì É
t,n=ü.Ω(t)ä ç==n èŸ==n í
Ç
Ü
ó.ù(e,n)Ü
e=¶.˚(e)ë e,#e
Ü
â ü. (e)å e,n=ü.Ω(e)ë e
Ü
â ü.√(e)å n,e=ü.Ω(e)ë e
Ü
â ü.filename(e)å n=ü.√(e)å e,t=ñ.Õ(n,"^(.*)%.(%w*)$")ä e í
ë e,t
Ü
ë n
Ü
â ü.Ô(e)ë ñ.Õ(e,"%.%w*$")Ü
â ü.∆(t)t=e(t)å t=ü.Á(t)å e=Ÿà o=1,#t É
e=e..t[o]ä é r(t[o])Å é ü.‹(e)í
å e,n=n.∆(e)ä ç==e í
ë e,n
Ü
Ü
e=e..ºÜ
ë ì
Ü
â ü.ƒ(n)n=e(n)å e=ü. (n)ä e Å e~=Ÿí
ë ü.∆(e)Ü
ë ì
Ü
â ü.rmdir(e,n)ä é ü.‹(e)í
ä n í
ß("os.rmdir error:not dir:"..e)Ü
ë
Ü
e=ñ.±(e,º,‚)å t
ä n í
t=ñ.ú('rd /S /Q  "%s"',e)Ñ
t=ñ.ú('rd /S /Q  "%s" 1>nul',e)Ü
ä n==ì í
n=ß
Ü
ä n í n(t)Ü
ë ü.®(t)Ü
â ü.movedir(t,n,o)ä ç==o í
o=ì
Ü
t=e(t)n=e(n)ä o í
å e=ü.√(t)n=n..º..e
Ü
ü.ƒ(n)å e,o=ü.rename(t,n)ä é e í
ß("movedir failed",t,n,o)Ü
ë e
Ü
â ü.copydir(n,t,o)n=e(n)t=e(t)ä é ü.‹(n)í
ß("path error",n,t)ë á
Ü
n=ñ.±(n,º,‚)t=ñ.±(t,º,‚)å e
ä o í
e=ñ.ú('xcopy /Y /E /I /Q "%s" "%s"',n,t)Ñ
e=ñ.ú('xcopy /Y /E /I /Q "%s" "%s" 1>nul',n,t)Ü
ä o==ì í
o=ß
Ü
ä o í o(e)Ü
ü.®(e)ë ì
Ü
â ü.copyfile(t,n,e)ü.ƒ(n)t=ñ.±(t,º,‚)n=ñ.±(n,º,‚)å o
ä e í
o=ñ.ú('copy /Y "%s" "%s"',t,n)Ñ
o=ñ.ú('copy /Y "%s" "%s"  1>nul',t,n)Ü
ä e==ì í
e=ß
Ü
ä e í e(o)Ü
ë ü.®(o)Ü
â ü.movefile(n,e)ü.∆(e)å t=ü.√(n)e=e..º..t
ü.—(e)å t,o=ü.rename(n,e)ä é t í
ß("movefile failed",n,e,o)Ü
ë t
Ü
â ü.dirempty(e)å e=ü.ˇ(e,ì)ë ó.empty(e)Ü
â ü.ˇ(o,e,i)ä ñ.Ø(o,-1,-1)==ºí
o=ñ.Ø(o,1,-2)Ü
å t=30
ä †(e)=="boolean"í
e=e==á Å 1 è t
Ö †(e)==™í
e=e
Ñ
e=t
Ü
å s={}å r={}å â l(o,t)t=t-1
à e ã n.ˇ(o)É
ä e~='.'Å e~='..'í
å e=o..'/'..e
å n=n.´(e)ä n==ç í
Ç
Ü
å n=n.˛=='directory'ä ç==i è i(e,n)í
ä n í
ó.ù(s,e)Ñ
ó.ù(r,e)Ü
ä n Å t>0 í
l(e,t)Ü
Ü
Ü
Ü
Ü
l(o,e)ë r,s
Ü
â ü.dirext(e,n,t)å t=ó.Â(t)ë ü.ˇ(e,n,â(e,n)ä n í
ë ì
Ü
å e=ü.Ô(e)ä t[e]í
ë ì
Ü
ë á
Ü)Ü
Ü)°.¢['sllib.table_ext']=(â(...)å â t(t,e)à e,n ã ¨(e)É
t[e]=n
Ü
Ü
å â d(e,n)à n,t ã ¨(n)É
e[n]=e[n]è t
Ü
Ü
å e={ª=á,·=ì,}t(ó,e)å â r(r)ä é ª í
ë{}Ü
å o={}å t={}å â n(e)ä o[e]í
t[e]=e
ë
Ü
o[e]=e
à t,e ã ¨(e)É
ä †(t)==•í
n(t)Ö †(e)==•í
n(e)Ü
Ü
Ü
n(r)ë t
Ü
å â c(c,d,f)å n=ó.ù
å u=ó.∞
å a={}å r=r(c)å â s(o,l,t)l=l Å(l-1)è 30
ä l<0 í
ë t.."..."Ü
t=t èŸä next(o)==ç í
ë t.."{}"Ü
ä ª í
a[o]=o
Ü
å e={}n(e,t.."{")ä r[o]í
n(e,∑(o))Ü
n(e,“)t=t..ıä · è#o==0 í
à i,r ã ¨(o)É
n(e,t)ä †(i)==•í
ä a[o]í
n(e,∑(o))Ñ
—(e)n(e,s(i,l,t))Ü
Ö †(i)==™í
n(e,"["..õ(i).."]")Ñ
å t=Ë.ö(i)n(e,'["'..t..'"]')Ü
n(e," = ")ä †(r)==•í
ä a[r]í
n(e,∑(r))Ñ
n(e,“)n(e,s(r,l,t))Ü
Ö †(r)==™í
n(e,õ(r))Ö †(r)==«í
n(e,À..r..À)Ñ
n(e,Ë.ö(r))Ü
n(e,",\n")Ü
Ñ
à r,o ã §(o)É
n(e,t)n(e,"["..õ(r).."]")n(e," = ")ä †(o)==•í
n(e,“)ä a[o]í
n(e,∑(o))Ñ
n(e,s(o,l,t))Ü
Ö †(o)==™í
n(e,õ(o))Ñ
n(e,À..Ë.ö(o)..À)Ü
n(e,",\n")Ü
Ü
e[#e]=","n(e,“..ñ.Ø(t,1,-3).."}")ë u(e)Ü
ë s(c,d,f)Ü
å â l(t,o)å n=ó.ù
å i=ó.∞
o=o Å(o-1)è 10
ä o<0 í
ë"..."Ü
å e={}n(e,"{")à r,t ã ¨(t)É
ä †(r)==•í
n(e,l(r,o))n(e,"=")Ö †(r)==™í
Ñ
n(e,'["'..Ë.ö(r)..'"]')n(e,"=")Ü
ä †(t)==•í
n(e,l(t,o))Ö †(t)==™í
n(e,õ(t))Ö †(t)==«í
n(e,À..t..À)Ñ
n(e,Ë.ö(t))Ü
n(e,",")Ü
n(e,"}")ë i(e)Ü
å e={["empty"]=â(e)ë next(e)==ç
Ü,["size"]=â(n)å e=0
à n,n ã ¨(n)É
e=e+1
Ü
ë e
Ü,["keys"]=â(n)å e={}à n,t ã ¨(n è{})É
ó.ù(e,n)Ü
ë e
Ü,["values"]=â(n)å e={}à t,n ã ¨(n è{})É
ó.ù(e,n)Ü
ë e
Ü,["invert"]=â(n)å e={}à n,t ã ¨(n è{})É
e[t]=n
Ü
ë e
Ü,["clone"]=â(n,t)å e={}ä é t í
‰(e,getmetatable(n))Ü
à n,t ã ¨(n)É
e[n]=t
Ü
ë e
Ü,["merge"]=â(...)å e={}à t,n ã §({...})É
à n,t ã ¨(n)É
e[n]=t
Ü
Ü
ë e
Ü,["address"]=â(n)å e
ä rawget(Ë,"_tostring")í
e=_tostring(n)Ñ
e=c(n)Ü
ë ñ.±(e,"^table: ",Ÿ)èŸÜ,["tostring"]=c,["tostringex"]=l,["print"]=â(e)ä †(e)~=•í
Ë.ß(e)Ñ
Ë.ß(ó.ö(e))Ü
Ü,}d(ó,e)Ü)°.¢['sllib.string_ext']=(â(...)â ñ.strtox16(e)ë ñ.±(e,".",â(e)ë ñ.ú("%02X",ñ.byte(e))Ü)Ü
â ñ.x16tostr(e)ë ñ.±(e,"..",â(e)å e=◊(e,16)ë ñ.char(e)Ü)Ü
â ñ.dumpex(e)ë ñ.±(e,".",â(e)ë ñ.ú("%02X ",ñ.byte(e))Ü)Ü
â ñ.iterateString(n,e,t)e=e è'\n'ä é ñ.Õ(n,e)í
t(n)ë
Ü
à e ã ñ.gmatch(n,"(.-)"..e)É
t(e)Ü
ä ñ.Ø(n,#n-#e+1)==e í
t(Ÿ)ë
Ü
å e=ñ.Õ(n,".+"..e.."(.*)$")ä e í
t(e)Ü
Ü
â ñ.split(n,o)å e=1
å t=1
å t={}ï e É
å o,r=ñ.find(n,o,e)ä o Å r í
ó.ù(t,ñ.Ø(n,e,o-1))e=r+1
Ñ
ä e<=#n í
ó.ù(t,ñ.Ø(n,e,-1))Ü
Ç
Ü
Ü
ë t
Ü
â ñ.cutsub(n,e)å t,o=ñ.find(n,e,1,ì)ä t==ç í
ë n
Ü
å e=Ÿä t>1 í
e=e..ñ.Ø(n,1,t-1)Ü
ä o<#n í
e=e..ñ.Ø(n,o+1)Ü
ë e
Ü
Ü)°.¢['sllib.math_ext']=(â(...)â ¥.cutf(e,n)å t,e=¥.…(e)å e=e*¥.pow(10,n)e=¥.…(e)e=e/¥.pow(10,n)ë t+e
Ü
Ü)°.¢['sllib.debug_ext']=(â(...)å r=ô"sllib.profiler"å i=10
å s=100
â ≠.tracevalue(e,t)e=e è 2
t=t è 2
å r={}ó.ù(r,"stack tracevalue:")å l=á
å n=ıå t=e+t
ï e<t É
å o=≠.ﬁ(e,"nS")l=o.what=="main"å t={}ó.ù(t,ñ.ú(n.."file:%s line:%d function:%s()\n",o.Ã,o.≈,o.name èŸ))n=n..ıà n=1,i É
å n,e=≠.getlocal(e,n)ä ç==n í
Ç
Ü
ä †(e)~="function"Å n~="self"í
å o
ä †(e)==•í
o=ñ.Ø(ó.tostringex(e),1,s)Ñ
o=⁄(e)Ü
ó.ù(t,⁄(n).."="..o)ó.ù(t,“)Ü
Ü
ó.ù(r,ó.∞(t,n))ä l í
Ç
Ü
e=e+1
n=n..ıÜ
ë ó.∞(r,“)Ü
≠.startanalysis=â(e)r:Û(3)r:start(e)Ü
≠.stopanalysis=â(e)r:stop(e)Ü
Ü)°.¢['sllib.list_ext']=(â(...)¶=¶ è{}â ¶.append(e,n)ó.ù(e,n)ë e
Ü
â ¶.∞(...)å e={}à t,n ã §({...})É
à t,n ã §(n)É
ó.ù(e,n)Ü
Ü
ë e
Ü
â ¶.—(e,o)à t,n ã §(e)É
ä n==o í
ó.—(e,t)Ç
Ü
Ü
ë e
Ü
â ¶.Ø(t,o,e)e=e è#t
å n={}à e=o,e É
ó.ù(n,t[e])Ü
ë n
Ü
â ¶.cut(n,e)å n=¶.Ø(1,e)å e=¶.Ø(e+1)ë n,e
Ü
â ¶.(e,n)à t,e ã §(e)É
ä e==n í
ë ì
Ü
Ü
ë á
Ü
â ¶.˚(e)å n={}à t=#e,1,-1 É
ó.ù(n,e[t])Ü
ë n
Ü
â ¶.mirror(n)å e={}à t,n ã §(n)É
e[n]=n
Ü
ë e
Ü
â ¶.merge(...)å e=¶.∞(...)e=ó.Â(e)ë ó.keys(e)Ü
â ¶.mergeex(n,...)å e=¶.∞(...)e=¶.˘(e,n)ë ó.values(e)Ü
â ¶.˘(n,t)å e={}à o,n ã §(n)É
e[n[t]]=n
Ü
ë e
Ü
Ü)°.¢['sllib.time']=(â(...)Æ=Æ è{}â Æ.Æ()ë ü.Æ()Ü
â Æ.æ()ë ü.æ()Ü
â Æ.millitime()ô"socket.core"ë ¥.…(socket.gettime()*1e3)Ü
â Æ.sleep(e)e=e è 0
ü.®(Ù..◊(e+1)..”)Ü
â Æ.getstr(n,e)n=n è'%c'e=e è ü.Æ()ë ü.€(n,e)Ü
â Æ.getendofday(e)e=e è ü.Æ()å e=ü.€('*t',e)å e=ü.€('*t',ü.Æ({ˆ=e["year"],Ì=e["month"],day=e["day"],˙=23,min=59,sec=59}))å e=ü.Æ(e)ë e
Ü
â Æ.tohour(e)å n=¥.…(e/3600)å t=¥.…(¥.˝(e,3600)/60)å e=¥.˝(e,60)ë{˙=n,min=t,sec=e}Ü
Ü)°.¢['sllib.logs']=(â(...)£=£ è{}å r=á
å o=ç
å l=ì
å s=ò.∂()å â e(e)å e=ñ.±(e,"[\r\n\t]",Ÿ)ä e==Ÿí
ë ì
Ü
ë á
Ü
å n=ì
å â c(e)ä †(e)==«í
ä n Å e~=“í
ëÀ..e..ÀÑ
ë e
Ü
Ö †(e)==•í
ë ó.ö(e)Ö †(e)==™í
ë õ(e)Ñ
å e=ö(e)è‘ë e
Ü
Ü
å â i()ä o í
ë o
Ü
å e=ü.€("*t")å e=ñ.ú("%s_%s_%s.log",e.ˆ,e.Ì,e.day)o=e
ë e
Ü
å â a(n)ä é l í
ë
Ü
å e=i()Œ.π(e,n,"a+")Ü
å â t(t,e)e=á
å e=ü.€("*t")å o=ü.æ()å n=t
ä r í
n=ñ.ú("[%s-%s-%s %02s:%02s:%02s %s]%s",e.ˆ,e.Ì,e.day,e.˙,e.min,e.sec,o,t)Ü
ß(n)a(n..'\n')Ü
â £.Ê(e)l=e
Ü
â £.showLogTime(e)r=e
Ü
â £.setLogPath(e)o=e
Ü
â £.clear()å e=i()ä é ü.(e)í
ë
Ü
Œ.π(e,Ÿ)Ü
â £.ø(...)å e={...}å n=#e
å n={}à o,e ã §(e)É
å e=c(e)ó.ù(n,e)Ü
t(ó.∞(n,'\t'))Ü
â £.i(...)£.ø(...)Ü
â £.w(...)ò.µ(14)£.ø(...)ä s í ò.≥()Ü
Ü
â £.e(...)ò.µ(12)£.ø(...)å e=n
n=á
t(≠.Ó(Ÿ,2))n=e
ä s í ò.≥()Ü
Ü
â £.f(e,...)t(ñ.ú(e,...))Ü
â £.‡(e,...)e=e è"nil"å e=ñ.ú(e,...)å e=≠.Ó(e,2)t(e)Ü
ë £
Ü)°.¢['sllib.class']=(â(...)å n={}å â o(e)e.__index=e
ë ‰({},e)Ü
â class(t,r)å e
ä r í
e=r:÷(t)Ñ
e=n:÷(t)Ü
e.new=â(...)å n=o(e)n.__class=e
n:ctor(...)ë n
Ü
e.create=â(n,...)ë e.new(...)Ü
ë e
Ü
â n:ctor(...)Ü
â n:dtor()Ü
â n:÷(n)å e=o(û)e.__name=n
e.super=û
ë e
Ü
â n:attrReader(...)à n,e ã §({...})É
å n="get"..ñ.upper(ñ.Ø(e,1,1))..ñ.Ø(e,2)û[n]=â(n)ë n[e]Ü
Ü
Ü
â n:attrWriter(...)à n,e ã §({...})É
å n="set"..ñ.upper(ñ.Ø(e,1,1))..ñ.Ø(e,2)û[n]=â(n,t)n[e]=t
Ü
Ü
Ü
â n:include(...)à n,e ã §({...})É
à e,n ã ¨(e)É
û[e]=n
Ü
Ü
Ü
â n:delegate(e,n)à t,n ã §(n)É
û[n]=â(t,...)ë e[n](e,...)Ü
Ü
Ü
Ü)°.¢['sllib.profiler']=(â(...)å e={}â e:setLogFunc(e)û.¿=e
Ü
â e:Û(e)û.ﬂ=e
Ü
â e:start(e)e=e è¸û.¿=ß
ä e=="trace"í
≠.›(bind(û.ÿ,û),'c')Ñ
û.≤={}û.Î=ü.æ()û.ﬂ=3
≠.›(bind(û.œ,û),'cr')Ü
Ü
â e:stop(e)e=e è¸≠.›()ä e=="trace"í
ë
Ü
û.Ò=ü.æ()å n=û.Ò-û.Î
ä n<.001 í
û.¿("total time less 0.001s")ë
Ü
å e=ó.values(û.≤)ó.sort(e,â(e,n)ë e.©>n.©
Ü)à t,e ã §(e)É
å n=(e.©/n)*100
ä n<1 í
Ç
Ü
å e=ñ.ú("time:%6.3f, percent:%.2f%%, count:%d, %s",e.©,n,e.¬,e.title)û.¿(e)Ü
Ü
â e:ÿ()å e=≠.ﬁ(û.ﬂ,'nS')å e=ñ.ú("file:%s line:%d function:%s()",e.Ã,e.≈,e.name èŸ)û.¿(e)Ü
â e:„(e)å n=e.name è'anonymous'å t=e.Ã è'C_FUNC'å e=e.≈ è 0
ë ñ.ú("file:%s line:%s function:%s",t,e,n)Ü
â e:¡(e)å n=û:„(e)å e=û.≤[n]ä é e í
e={title=n,¬=0,©=0,}û.≤[n]=e
Ü
ë e
Ü
â e:œ(n)å t=â(e)å e=û:¡(e)e.∫=ü.æ()e.¬=e.¬+1
Ü
å o=â(e)å n=ü.æ()å e=û:¡(e)ä e.∫ Å e.∫>0 í
e.©=e.©+(n-e.∫)e.∫=0
Ü
Ü
å e=≠.ﬁ(û.ﬂ,'nS')ä e í
ä n=="call"í
t(e)Ö n=="return"í
o(e)Ü
Ü
Ü
ë e
Ü)rawset(Ë,"SLLIB_VERSION","1.1.2")ô"sllib.console"ô"sllib.global"ô"sllib.io_ext"ô"sllib.os_ext"ô"sllib.table_ext"ô"sllib.string_ext"ô"sllib.list_ext"ô"sllib.math_ext"ô"sllib.debug_ext"ô"sllib.time"ô"sllib.logs"ô"sllib.class"enum=ó.Â
log=log è £.i
logw=logw è £.w
loge=loge è £.e
logf=logf è £.f
‡=‡ è £.‡
Ú=Ú è £.clear
writeLogInFile=£.Ê
–=– è ó.–
»=» è load
rawset(Ë,"bind",â(e,...)å n={...}assert(e,"bind params error")ë â(...)å n=¶.∞(n,{...})ë e(–(n))Ü
Ü)â ⁄(e)ä †(e)==«í
ëÀ..e..ÀÖ †(e)==•í
ë ó.ö(e)Ö †(e)==™í
ë õ(e)Ñ
å e=ö(e)è‘ë e
Ü
Ü
]===], '@sllib_base.lua'))()