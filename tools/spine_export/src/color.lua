local Color = class("Color")

Color.WHITE = Color.new(1, 1, 1, 1)

function Color.rgba8888ToColor(color, value)
    color.r = ((value & 0xff000000) >> 24) / 255
    color.g = ((value & 0x00ff0000) >> 16) / 255
    color.b = ((value & 0x0000ff00) >> 8) / 255
    color.a = ((value & 0x000000ff)) / 255
end

function Color.rgb888ToColor(color, value)
    color.r = ((value & 0xff000000) >> 24) / 255
    color.g = ((value & 0x00ff0000) >> 16) / 255
    color.b = ((value & 0x0000ff00) >> 8) / 255
end


function Color:ctor(r, g, b, a)
    self:set(r, g, b, a)
end

function Color:set(r, g, b, a)
    self.r = r or 0
    self.g = g or 0
    self.b = b or 0
    self.a = a or 0
    self:clamp()
end

function Color:setFromColor(c)
    self:set(c.r, c.g, c.b, c.a)
end

function Color:setFromString(hex)
    if string.byte(hex, 1) == string.byte('#') then
        hex = string.sub(hex, 2)
    end
    local r = tonumber(string.sub(hex, 1, 2), 16) / 255
    local g = tonumber(string.sub(hex, 3, 4), 16) / 255
    local b = tonumber(string.sub(hex, 5, 6), 16) / 255
    local a = 1
    if #hex > 6 then
        a = tonumber(string.sub(hex, 7, 8), 16) / 255
    end
    self:set(r, g, b, a)
end

function Color:add(r, g, b, a)
    self.r = r + r
    self.g = g + g
    self.b = b + b
    self.a = a + a
    self:clamp()
end

function Color:clamp()
    if self.r < 0 then
        self.r = 0
    elseif self.r > 1 then
        self.r = 1
    end

    if self.g < 0 then
        self.g = 0
    elseif self.g > 1 then
        self.g = 1
    end

    if self.b < 0 then
        self.b = 0
    elseif self.b > 1 then
        self.b = 1
    end

    if self.a < 0 then
        self.a = 0
    elseif self.a > 1 then
        self.a = 1
    end
end

return Color
