local Color = require "color"
local SlotData = class("SlotData")

function SlotData:ctor(index, name, boneData, boneIdx)
    self.index = index  --base:1
    self.name = name
    self.boneData = boneData
    self.boneIdx = boneIdx  --base:1

    self.color = Color.new(1, 1, 1, 1)
    self.darkColor = Color.new()
    self.attachmentName = ""
    self.blendMode = BlendMode.Normal
end

function SlotData:dump(pre)
    pre = pre or ""
    -- print(pre .. "--SlotData desc--")
    print(pre .. _F([[ slot index:%d name:%s boneIdx:%d boneName:%s color:[%f,%f,%f,%f] darkColor:[%f,%f,%f,%f] attachmentName:%s blendMode:%d]],
            self.index, self.name, self.boneIdx, self.boneData.name,
            self.color.r, self.color.g, self.color.b, self.color.a,
            self.darkColor.r, self.darkColor.g, self.darkColor.b, self.darkColor.a,
            self.attachmentName, self.blendMode
    ))
end

return SlotData