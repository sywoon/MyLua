
local TextureAtlasReader = require "atlas.texture_atlas_reader"
local TextureAtlasPage = require "atlas.texture_atlas_page"
local TextureAtlasRegion = require "atlas.texture_atlas_region"
local TextureAtlas = class("TextureAtlas")

local function log(...)
    -- print("[TextureAtlas]", ...)
end


function TextureAtlas:ctor()
    self.type = RegionType.Texture
    self.pages = {}
    self.regions = {}
end

function TextureAtlas:load(path)
    local text = io.readFile(path)
    local reader = TextureAtlasReader.new(text)
    local tuple = {}  -- Array<string>
    local page = nil  -- TextureAtlasPage

    while true do
        local line = reader:readLine()
        if line == nil then
            break
        end
        line = string.trim(line)  --spineboy.png
        log("line", #line, line)
        if #line == 0 then
            page = nil
        elseif not page then
            page = TextureAtlasPage.new()
            page.name = line
            local tuple = reader:readTuple()  --size: 1024,256
            if #tuple == 2 then
                page.width = tonumber(tuple[1])
                page.height = tonumber(tuple[2])
                tuple = reader:readTuple()  --format: RGBA8888
            end
            tuple = reader:readTuple()  --filter: Linear,Linear
            page.minFilter = tuple[1]
            page.magFilter = tuple[2]

            local direction= reader:readValue()  --repeat: none
            page.uWrap = TextureWrap.ClampToEdge  --spine默认值
            page.vWrap = TextureWrap.ClampToEdge
            if direction == "x" then
                page.uWrap = TextureWrap.Repeat
            elseif direction == "y" then
                page.vWrap = TextureWrap.Repeat
            elseif direction == "xy" then
                page.uWrap = TextureWrap.Repeat
                page.vWrap = TextureWrap.Repeat
            end

            page.texture = nil  --textureLoader(line)  --spineboy.png
            -- page.texture:setFilters(page.minFilter, page.magFilter)
            -- page.texture:setWraps(page.uWrap, page.vWrap)
            -- page.width = page.texture:getImage().width
            -- page.height = page.texture:getImage().height
            table.insert(self.pages, page)
        else
            local region = TextureAtlasRegion.new()
            region.name = line
            region.page = page
            local rotateValue = reader:readValue()  --rotate: false
            if string.lower(rotateValue) == "true" then
                region.degrees = 90
            elseif string.lower(rotateValue) == "false" then
                region.degrees = 0
            else
                region.degrees = tonumber(rotateValue)
            end
            region.rotate = region.degrees == 90

            tuple = reader:readTuple()  --xy: 813, 160
            local x = tonumber(tuple[1])
            local y = tonumber(tuple[2])

            tuple = reader:readTuple()  --size: 45, 45
            local width = tonumber(tuple[1])
            local height = tonumber(tuple[2])
            region.u = x / page.width
            region.v = y / page.height
            if region.rotate then
                region.u2 = (x + height) / page.width
                region.v2 = (x + width) / page.height
            else
                region.u2 = (x + width) / page.width
                region.v2 = (x + height) / page.height
            end
            region.x = x
            region.y = y
            region.width = math.abs(width)  --有负数?
            region.height = math.abs(height)

            tuple = reader:readTuple()  --orig: 45, 45 or split没见过
            if #tuple == 4 then  
                tuple = reader:readTuple()  --pad
                if #tuple == 4 then  
                    tuple = reader:readTuple()  --orig: 45, 45
                end
            end
            region.originalWidth = tonumber(tuple[1])
            region.originalHeight = tonumber(tuple[2])

            tuple = reader:readTuple()  --offset: 0, 0
            region.offsetX = tonumber(tuple[1])
            region.offsetY = tonumber(tuple[1])

            region.index = tonumber(reader:readValue())
            region.texture = page.texture
            table.insert(self.regions, region)
        end
    end
end

function TextureAtlas:findRegion(name)
    for _, region in ipairs(this.regions) do
        if region.name == name then
            return region
        end
    end
    return nil
end

function TextureAtlas:dispose()
    for _, page in ipairs(self.pages) do
        if page.texture then
            page.texture.dispose()
        end
    end
end

function TextureAtlas:dump()
    print("--TextureAtlas desc--")
    print(" page count:", #self.pages)
    for i = 1, #self.pages do
        local page = self.pages[i]
        print("  page:" .. i, page.name)
        print(_F("   size:%d,%d filter:%s,%s wrap:%s,%s", page.width, page.height, 
                page.minFilter, page.magFilter, TextureWrapName[page.uWrap], TextureWrapName[page.vWrap]))
    end

    print(" region count:", #self.regions)
    for i = 1, #self.regions do
        local region = self.regions[i]
        print("  region:" .. i, region.name)
        print(_F("   degree:%d xy:%d,%d size:%d,%d offxy:%d, %d origin:%d,%d", 
            region.degrees, region.x, region.y,
            region.width, region.height, 
            region.offsetX, region.offsetY, region.originalWidth, region.originalHeight))
    end
end



return TextureAtlas