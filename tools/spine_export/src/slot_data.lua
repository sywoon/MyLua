local Color = require "color"
local SlotData = class("SlotData")

function SlotData:ctor(index, name, boneData, boneIdx)
    self.index = index  --base:0
    self.name = name
    self.boneData = boneData
    self.boneIdx = boneIdx

    self.color = Color.new(1, 1, 1, 1)
    self.darkColor = Color.new()
    self.attachmentName = ""
    self.blendMode = BlendMode.Normal
end

function SlotData:dump()
    print(_F([[SlotData name:%s index:%d boneIdx:%d color:[%f,%f,%f,%f]
            darkColor:[%f,%f,%f,%f] attachmentName:%s blendMode:%d]],
            self.name, self.index, self.boneIdx, 
            self.color.r, self.color.g, self.color.b, self.color.a,
            self.darkColor.r, self.darkColor.g, self.darkColor.b, self.darkColor.a,
            self.attachmentName, self.blendMode
    ))
end

return SlotData