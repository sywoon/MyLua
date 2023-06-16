
local SD = class("SkeletonData")


function SD:ctor()
    self.name = ""

    self.x = 0
    self.y = 0
    self.width = 0
    self.height = 0
    self.version = "1.0"
    self.hash = ""
    self.fps = 0
    self.imagesPath = ""
    self.audioPath = ""

    self.bones = {}
    self.slots = {}
    self.skins = {}
    self.defaultSkin = nil  --Skin
    self.events = {}
    self.animations = {}

    self.ikConstraints = {}
    self.transformConstraints = {}
    self.pathConstraints = {}
end

function SD:dump()
    print("--SkeletonData desc--")
    print(_F(" hash:%s version:%s x:%f y:%f width:%f, height:%f fps:%f imagesPath:%s audioPath:%s",
        self.hash, self.version, self.x, self.y, self.width, self.height, 
        self.fps, self.imagesPath, self.audioPath))

    print(" bones count:", #self.bones)
    local pre = "  "
    for i = 1, #self.bones do
        local bone = self.bones[i]
        print("  bone:" .. i)
        bone:dump(pre)
    end

    print(" slots count:", #self.slots)
    for i = 1, #self.slots do
        local slot = self.slots[i]
        print("  slot:" .. i)
        slot:dump(pre)
    end

    print(" ikConstraints count:", #self.ikConstraints)
    for i = 1, #self.ikConstraints do
        local ikConstraint = self.ikConstraints[i]
        print("  ikConstraints:" .. i)
        ikConstraint:dump(pre)
    end

    print(" transformConstraints count:", #self.transformConstraints)
    for i = 1, #self.transformConstraints do
        local tc = self.transformConstraints[i]
        print("  transformConstraints:" .. i)
        tc:dump(pre)
    end
    
    print(" pathConstraints count:", #self.pathConstraints)
    for i = 1, #self.pathConstraints do
        local path = self.pathConstraints[i]
        print("  pathConstraints:" .. i)
        path:dump(pre)
    end

    print(" skin count:", #self.skins)
    self.defaultSkin:dump(pre)

    print(" events count:", #self.events)
    for i = 1, #self.events do
        local event = self.events[i]
        print("  event:" .. i)
        event:dump(pre)
    end

    print(" animations count:", #self.animations)
    for i = 1, #self.animations do
        local animation = self.animations[i]
        print("  animation:" .. i)
        -- animation:dump(pre)
    end
    
    
end

return SD