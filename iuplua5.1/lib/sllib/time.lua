module("time", package.seeall)

--精确到1秒
function time()
    return os.time()
end

--精确到0.01秒
function clock()
    return os.clock()
end

function millitime()
    return math.modf(socket.gettime() * 1000)
end

function sleep(n)  --秒
    n = n or 0
    os.execute("ping -n " .. tonumber(n+1) .. " localhost > NUL")
    
    --linux
    -- os.execute("sleep" .. n)
end

function millisleep(n) --毫秒
    require "socket"
    n = n or 0
    --socket.select(nil, nil, n / 1000)
    socket.sleep(n / 1000) 
end



--　%a 星期几的简写
--　%A 星期几的全称
--　%b 月份的简写
--　%B 月份的全称
--　%c 标准的日期的时间串
--　%C 年份的后两位数字
--　%d 十进制表示的每月的第几天
--　%D 月/天/年
--　%e 在两字符域中，十进制表示的每月的第几天
--　%F 年-月-日
--　%g 年份的后两位数字，使用基于周的年
--　%G 年份，使用基于周的年
--　%h 简写的月份名
--　%H 24小时制的小时
--　%I 12小时制的小时
--　%j 十进制表示的每年的第几天
--　%m 十进制表示的月份
--　%M 十时制表示的分钟数
--　%n 新行符
--　%p 本地的AM或PM的等价显示
--　%r 12小时的时间
--　%R 显示小时和分钟：hh:mm
--　%S 十进制的秒数
--　%t 水平制表符
--　%T 显示时分秒：hh:mm:ss
--　%u 每周的第几天，星期一为第一天 （值从0到6，星期一为0）
--　%U 第年的第几周，把星期日作为第一天（值从0到53）
--　%V 每年的第几周，使用基于周的年
--　%w 十进制表示的星期几（值从0到6，星期天为0）
--　%W 每年的第几周，把星期一做为第一天（值从0到53）
--　%x 标准的日期串
--　%X 标准的时间串
--　%y 不带世纪的十进制年份（值从0到99）
--　%Y 带世纪部分的十制年份
--　%z，%Z 时区名称，如果不能得到时区名称则返回空字符。
--　%% 百分号

--取服务器时间格式化字串,fmtStr未填，则取默认格式
function getStr(fmtStr, time)
	fmtStr = fmtStr or '%c'
	time = time or os.time()	

	return os.date(fmtStr, time)
end

--year (four digits), month (1--12), day (1--31), hour (0--23), min (0--59), sec (0--61), 
--wday (weekday, Sunday is 1), yday (day of the year), and isdst (daylight saving flag, a boolean).


--取23:59:59时间
function getEndOfDay()
    local time = os.time()
    local time_t = os.date('*t', time)
    local time_t_end = os.date('*t', os.time({year=time_t["year"], month=time_t["month"], day=time_t["day"], 
                                            hour=23, min=59, sec=59}))

    local time_end = os.time(time_t_end)
    return time_end
end


function splitTime(time)
	local hour = math.modf(time / 3600)
	local min = math.modf( math.fmod(time, 3600) / 60 )
	local sec = math.fmod(time, 60)
	return {hour=hour, min=min, sec=sec}
end




--[[
print(os.time())
print(os.time(os.date("*t", os.time())))
print(os.time(os.date("!*t", os.time())))

print(os.date())
print(os.date("*t", os.time()))
print(os.date("!*t", os.time()))
print(os.date("%c", os.time()))
print(os.date("%c", 1375637048))

print(os.setlocale())
--]]































