
local SD = class("SkeletonData")


function SD:ctor()
    self.bones = {}
    self.slots = {}
    self.skins = {}
    self.events = {}
    self.animations = {}

    self.ikConstraints = {}
    self.transformConstraints = {}
    self.pathConstraints = {}

    self.fps = 0
end


return SD