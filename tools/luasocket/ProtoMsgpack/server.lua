require "sllib_base"
local msgpack = require "cmsgpack"

local json = require "json"
local Server = require "net.socket.server"

function table.foreach(t, func)
    for k, v in pairs(t) do
        print(k, v)
    end
end

local server = nil

function start(ip, port, lisNum)
    lisNum = lisNum or 10
    
    server = Server.new()
    local rtn, err = server:init()
    if not rtn then
        print("init failed", err)
        return false
    end
    
    local rtn, err = server:bind(ip, port)
    if not rtn then
        server:close()
        print("bind failed", err)
        return false
    end

    server:listen(lisNum)

    local ip, port = server:getsockname()
    print("start server:", ip, port)

    return true
end

function close()
    server:close()
end

function pack(...)
    return {...}
end

function dealData(data)
    local usecode = false
    local size = string.unpack(">I4", data)
    print("receive", size, #data, data)
    
    local protoId = string.unpack(">I2", data, 5)  --base:1
    print("protoId", protoId)
    
    local pos = 6  --size+protoid
    if usecode then
        local code = nil
        pos, code = msgpack.unpack_one(data, pos)  --base:0
        print("code", code, pos)
    end
    
    while pos ~= -1 and pos < size+4 do
        pos, v = msgpack.unpack_one(data, pos)
        print(pos, v)
    end
    
    --local t = pack(msgpack.unpack(data))
    --table.foreach(t, print)

    return true
end

function processClient()
    local client, err = server:accept()
    
    local ip, port = client:getsockname()
    print("client connected:", client, ip, port)
    
    --[[
    local rev, err = client:receive("*a")
    if nil == rev then
        print("receive error", err)
        return
    end
    print("receive", #rev, rev, err)
    local buf = rev
    ]]
    
    local buffs = {}
    local rev, err = client:receive(4)
    if nil == rev then
        print("receive error", err)
        return
    end
    
    local pos = 0
    local bodylen = string.unpack(">I4", rev)
    print("bodylen", bodylen)
    local buf = rev
    repeat
        local rev, err = client:receive(bodylen)
        if rev then
            buf = buf .. rev
        else
            print("receive error", err)
        end
    until rev ~= nil
    
    local suc, err = dealData(buf)
    if not suc then
        print("dealData err:", err)
    end

	local rev, sent, age = client:getstats()
	print("client stats:", rev, sent, age)

    client:close()
    print("client closed:", ip, port)
end

function process()
   while true do
        processClient()
        print("server continue:")
    end
end


server = Server.new()

local ip = "127.0.0.1"
local port = 1080
if not start(ip, port) then
    return
end

process()

close()


