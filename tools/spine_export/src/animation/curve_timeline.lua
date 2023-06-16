
local Timeline = require "animation.timeline"
local CurveTimeline = class("CurveTimeline", Timeline)



CurveTimeline.LINEAR = 0 
CurveTimeline.STEPPED = 1 
CurveTimeline.BEZIER = 2
CurveTimeline.BEZIER_SIZE = 10 * 2 - 1


function CurveTimeline:ctor(frameCount)
    CurveTimeline.super.ctor(self, frameCount)
    self.curves = {}  --size:(frameCount - 1) * BEZIER_SIZE
end

function CurveTimeline:getFrameCount () 
    return #self.curves / CurveTimeline.BEZIER_SIZE + 1
end

function CurveTimeline:setLinear (frameIndex) 
    self.curves[frameIndex * CurveTimeline.BEZIER_SIZE] = CurveTimeline.LINEAR
end

function CurveTimeline:setStepped (frameIndex) 
    self.curves[frameIndex * CurveTimeline.BEZIER_SIZE] = CurveTimeline.STEPPED
end

function CurveTimeline:getCurveType (frameIndex)
    local index = frameIndex * CurveTimeline.BEZIER_SIZE
    if index == self.curves.length then
        return CurveTimeline.LINEAR
    end
    local type = self.curves[index]
    if type == CurveTimeline.LINEAR then
        return CurveTimeline.LINEAR
    end
    if type == CurveTimeline.STEPPED then
        return CurveTimeline.STEPPED        
    end
    return CurveTimeline.BEZIER
end

function CurveTimeline:setCurve(frameIndex, cx1, cy1, cx2, cy2)
    local tmpx = (-cx1 * 2 + cx2) * 0.03
    local tmpy = (-cy1 * 2 + cy2) * 0.03
    local dddfx = ((cx1 - cx2) * 3 + 1) * 0.006
    local dddfy = ((cy1 - cy2) * 3 + 1) * 0.006
    local ddfx = tmpx * 2 + dddfx
    local ddfy = tmpy * 2 + dddfy
    local dfx = cx1 * 0.3 + tmpx + dddfx * 0.16666667
    local dfy = cy1 * 0.3 + tmpy + dddfy * 0.16666667

    local i = frameIndex * CurveTimeline.BEZIER_SIZE
    local curves = self.curves
    curves[i + 1] = CurveTimeline.BEZIER
    i = i + 1

    local x = dfx
    local y = dfy
    for n = i + CurveTimeline.BEZIER_SIZE - 1, i + 1, 2 do
        curves[n] = x
        curves[n + 1] = y
        dfx = dfx + ddfx
        dfy = dfy + ddfy
        ddfx = ddfx + dddfx
        ddfy = ddfy + dddfy
        x = x + dfx
        y = y + dfy
    end
end

function CurveTimeline:getCurvePercent(frameIndex, percent)
    percent = math.min(math.max(percent, 0), 1)
    local curves = self.curves
    local i = frameIndex * CurveTimeline.BEZIER_SIZE
    local type = curves[i + 1]
    if type == CurveTimeline.LINEAR then
        return percent
    end
    if type == CurveTimeline.STEPPED then
        return 0
    end
    i = i + 1
    local x = 0
    for n = i + CurveTimeline.BEZIER_SIZE - 1, i + 1, 2 do
        x = curves[n]
        if x >= percent then
            local prevX, prevY
            if n == i + 1 then
                prevX = 0
                prevY = 0
            else
                prevX = curves[n - 2]
                prevY = curves[n - 1]
            end
            return prevY + (curves[n + 1] - prevY) * (percent - prevX) / (x - prevX)
        end
    end
    local y = curves[i - 1]
    return y + (1 - y) * (percent - x) / (1 - x) -- Last point is 1,1.
end


function CurveTimeline:dump(pre)
    pre = pre or ""
    print(pre .. _F([[ CurveTimeline type:%d slot:%d]],
        self.type, self.slotIndex
    ))

    print(pre .. " curves", #self.curves)
    for idx, value in pairs(self.curves) do
        print(pre .. _F("  curve:%d value:%d", idx, value))
    end
end


return CurveTimeline