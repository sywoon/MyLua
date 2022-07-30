local socket = require "socket.core"

function table.foreach(t, func)
    for k, v in pairs(t) do
        func(k, v)
    end
end

table.foreach(socket, print)

print("\n")

local master, err = socket.tcp()
print("tcp:", master, err)

local rtn, err = master:bind("127.0.0.1", 9001)
print("bind:", rtn, err)


--transform into a server object
--support:accect getsocketname setoption settimeout close
local rtn, err = master:listen(2)
print("listen:", rtn, err)

local ip, port = master:getsockname()
print("master sockname:", ip, port)

local client, err = master:accept()
print("accept:", client, err)

--报错 master不能调用这个方法 需要一个client参数 ？
--local stats = master:getstats()
--print("stats:", stats)


local ip, port = client:getsockname()
print("client sockname:", ip, port)

local rev, sent, age = client:getstats()
print("client stats:", rev, sent, age)

local rev, err = client:receive("*l", "pre:")
print("receive:", rev, err)

while rev and rev ~= "Q" do
	rev, err = client:receive("*l")
	print("receive:", rev, err)
end

local rev, sent, age = client:getstats()
print("client stats:", rev, sent, age)

master:close()
