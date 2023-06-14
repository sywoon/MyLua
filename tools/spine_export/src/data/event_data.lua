

local EventData = class("EventData")

function EventData:ctor(name)
    self.name = name
    self.intValue = 0
    self.floatValue = 0.0
    self.stringValue = ""
    self.audioPath = ""
    self.volume = 1
    self.balance = 1
end

function EventData:dump(pre)
    pre = pre or ""
    print(pre .. _F([[ EventData name:%s intValue:%d floatValue:%f stringValue:%s audioPath:%s volume:%d balance:%d]],
        self.name, self.intValue, self.floatValue, self.stringValue,
        self.audioPath, self.volumn, self.balance
    ))
end



return EventData