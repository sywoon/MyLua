require "sllib_base"
local msgpack = require "cmsgpack"

local json = require "json"
local Client = require "net.socket.client"

function table.foreach(t, func)
    for k, v in pairs(t) do
        print(k, v)
    end
end

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


function sendProto()
    local usecode = false
    --local t = {true, false, 100, -200, 100.100, "abcd", {aa=1,bb=2,{cc=3,dd=4}}}
    -- code account sev_id
    
    local t = usecode and {100, "s001", 10001} or {"s001", 10001}
    table.foreach(t, print)
    
    local protoId = 1
    local strprotoId = string.pack(">I2", protoId)
    local data = msgpack.pack(unpack(t))
    print("bodylen", #data+#strprotoId)
    
    local head = string.pack(">I4", #data+#strprotoId) .. strprotoId
    local misc = "aabbccdd"
    data = head  .. data .. misc
    
    print("send", #data, data)
    client:send(data)
end


--timer.startUpdate()

client = Client.new()

local ip = "192.168.30.66"
local port = 5020

--local ip = "127.0.0.1"
--local port = 1080

if not start(ip, port) then
    return
end

--client:settimeout(10, "b")

sendProto()


local rev, sent, age = client:getstats()
print("getstats:", rev, sent, age)


--timer.waitUpdate()


close()




