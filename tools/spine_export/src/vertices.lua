

local Vertices = class("Vertices")


function Vertices:ctor()
    self.bones = {}  --Array<number>
    self.vertices = {}  -- Array<number>
end


return Vertices