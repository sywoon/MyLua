require "sllib_base"

local json = require "json"
local Server = require "net.socket.server"


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

function dealData(data)
    local status, rtn = pcall(json.decode, data)
    if not status then
        local err = rtn
        return false, err
    end

    local jsonData = rtn
    if jsonData.flag == "file" then
        local txt = jsonData.data.content .. os.time()
        io.writeFile(jsonData.data.path, txt)
        print("write file " .. jsonData.data.path)
    else
        table.print(jsonData)
    end

    return true
end

function processClient()
    local client, err = server:accept()
    
    local ip, port = client:getsockname()
    print("client connected:", client, ip, port)
    
    local rev, err = client:receive("*a")
    local suc, err = dealData(rev)
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


