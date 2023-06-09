
local CData = require "data.constraint_data"
local IKData = class("IKConstraintData", CData)


function IKData:ctor(name)
    IKData.super.ctor(self, name)
    self.bones = {}
    self.targetBoneIdx = 0  --base:0
    self.target = nil  --ik target bone
    self.bendDirection = 1
    self.compress = false
    self.stretch = false
    self.uniform = false
    self.mix = 1
    self.softness = 0
end

function IKData:dump()
    print(_F([[IKData name:%s order:%d skinRequired:%d targetBoneIdx:%d dir:%d 
            compress:%d stretch:%d uniform:%d mix:%d softness:%d]],
        self.name, self.order, self.skinRequired and 1 or 0, self.targetBoneIdx, self.bendDirection,
        self.compress and 1 or 0, self.stretch and 1 or 0, self.uniform and 1 or 0,
        self.mix, self.softness
    ))
end


return IKData