local socket = require "socket.core"

local Client = class("Client")



function Client:init()
	local client, err = socket.tcp()
	self.client = client
	return client, err
end

--transform into a client object
--support:send receive getsocketname getpeername settimeout close
function Client:connect(ip, port)
	local rtn, err = self.client:connect(ip, port)
	return rtn, err
end

function Client:settimeout(time, mode)
	local rtn, err = self.client:settimeout(time, mode)
	return rtn, err
end

function Client:getpeername()
	local ip, port = self.client:getpeername()
	return ip, port
end

function Client:getsockname()
	local ip, port = self.client:getsockname()	--这里得到的port不是80 why?
	return ip, port
end

function Client:getstats()
	local rev, send, age = self.client:getstats()
	return rev, send, age
end

function Client:setstats(rev, send, age)
	local rtn, err = self.client:setstats(rev, send, age)
	return rtn, err
end

function Client:send(data, i, j)
	local idx, err = self.client:send(data, i, j)
	return idx, err
end

function Client:shutdown(mode)
    mode = mode or "both"
	local rtn, err = self.client:shutdown(mode)  --会导致远端的recive获得nil和timeout
	return rtn, err
end

function Client:close()
	self.client:close()
	self.client = nil
end


return Client