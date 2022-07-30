require "sllib_base"

local json = require "json"
local Client = require "net.socket.client"

local client = nil

function start(ip, port)
    client = Client.new()
    local rtn, err = client:init()
    if not rtn then
        print("init failed", err)
        return false
    end
    
    local rtn, err = client:connect(ip, port)
    if not rtn then
    	print("connect failed", err)
    	client:close()
    	return false
    end

    local ip, port = client:getpeername()
    print("connet to server peername:", ip, port)
    
    local ip, port = client:getsockname()
    print("connet to server sockname:", ip, port)   --这里得到的port不是80 why?

    return true
end

function close()
    client:close()
end


function parsePath(filepath)
	filepath = string.gsub(filepath, "\\", "/")
	local path, file, ext = string.match(filepath, "(.*/)(.*)%.(.*)")
	return path, file, ext
end


function sendFile(filepath)
    local path, file, ext = parsePath(filepath)
    local str = io.readFile(filepath)
    if nil == str or "" == str then
        return
    end
    
    io.writeFile(filepath, "")
    local data = json.encode({flag="file", data={path=filepath, content=str}})

    client:send(data)
end


local filepath = arg[0]
filepath = "test.txt"
if not filepath then
	print("need input file!")
	return
end


client = Client.new()

local ip = "127.0.0.1"
local port = 1080
if not start(ip, port) then
    return
end

--client:settimeout(10, "b")

sendFile(filepath)


local rev, sent, age = client:getstats()
print("getstats:", rev, sent, age)

close()




