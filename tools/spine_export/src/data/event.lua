
local Event = class("Event")

function Event:ctor(time, data)
    if data == nil then
        error("data cannot be null.")
    end
    self.data = data
    self.time = time
end


return Event


