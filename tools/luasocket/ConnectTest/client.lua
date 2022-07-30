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


--transform into a client object
--support:send receive getsocketname getpeername settimeout close
local rtn, err = master:connect("127.0.0.1", 9001)
print("connet:", rtn, err)

local rtn, err = master:settimeout(10, "b")
print("settimeout:", rtn, err)

local ip, port = master:getpeername()
print("peer:", ip, port)

local ip, port = master:getsockname()
print("master sockname:", ip, port)   --这里得到的port不是9001 why?

local rev, sent, age = master:getstats()
print("stats:", rev, sent, age)

local line = io.read()
while line and line ~= "" do
	master:send(line .. "\n")
	if line == "Q" then
		break
	elseif line == "S" then
		master:shutdown("both")  --会导致远端的recive获得nil和timeout
		break
	end

	line = io.read()
end

local rev, sent, age = master:getstats()
print("getstats:", rev, sent, age)

local rtn, err = master:setstats(99, 98, 97)
print("setstats:", rtn, err)

local rev, sent, age = master:getstats()
print("getstats:", rev, sent, age)

master:close()
