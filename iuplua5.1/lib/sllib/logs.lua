require "sllib.table_ext"
require "sllib.io_ext"

local any2str_quotation = true
local function _any2str(value)
	if type(value) == "string" then
        if any2str_quotation then
            return '"' .. value .. '"'
        else
            return value
        end
	elseif type(value) == "table" then
		return table.tostring(value)
	elseif type(value) == "number" then
		return numbertostring(value)
	else
		local str = tostring(value) or "Unknown object!"
		return str
	end
end

function log(...)
	for _, v in ipairs({...}) do
		local str = _any2str(v)
		logs.showLog(str)
	end
end

function logw(v)
    local last = any2str_quotation
    any2str_quotation = false
    
    local str = _any2str(v)
    log(debug.traceback(str, 2))
    
    any2str_quotation = last
end

function logf(fmt, ...)
	logs.showLog(string.format(fmt, ...))
end

function trace(fmt, ...)
    fmt = fmt or "nil"
	local logmsg = string.format(fmt, ...)
	local tracemsg = debug.traceback(logmsg, 2)
	logs.showLog(tracemsg)
end

function clearlog()
	logs.clearLog()
end


local os = os
local string = string
local print = print
local io = io
local DEBUG_TIME = false
module("logs")

local _filepath
local function getLogPath()
	if _filepath then
		return _filepath
	end

	local date = os.date("*t")
	local filename = string.format("%s_%s_%s.log",
							date.year, date.month, date.day) 
	_filepath = filename
	return filename
end

function setLogPath(filepath)
	_filepath = filepath
end

function writeLogFile(str)
	local path = getLogPath()
	io.writeFile(path, str, "a+")
end

function showLog(str)
	local date = os.date("*t")
	local clock = os.clock()

	local msg = str
	if DEBUG_TIME then
		msg = string.format("[%s-%s-%s %02s:%02s:%02s %s]\n%s\n",
						date.year, date.month, date.day,
						date.hour, date.min, date.sec,
						clock,
						str)
	else
		msg = str .. "\n"
	end

	print(msg)	
	writeLogFile(msg)
end

function clearLog()
	local path = getLogPath()
	if not os.exist(path) then
		return
	end
	io.writeFile(path, "")
end




