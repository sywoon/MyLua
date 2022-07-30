local socket = require "socket.core"

local Server = class("Server")

function Server:init()
	local master, err = socket.tcp()
	self.master= master
	return master, err
end

function Server:bind(ip, port)
	local rtn, err = self.master:bind(ip, port)
	return rtn, err
end

--transform into a server object
--support:accect getsocketname setoption settimeout close
function Server:listen(num)
	local rtn, err = self.master:listen(num)
	return rtn, err
end

function Server:accept()
	local client, err = self.master:accept()
	return client, err
end

function Server:getsockname()
	local ip, port = self.master:getsockname()
	return ip, port
end

function Server:close()
    if not self.master then
        return
    end

	self.master:close()
	self.master = nil
end

return Server