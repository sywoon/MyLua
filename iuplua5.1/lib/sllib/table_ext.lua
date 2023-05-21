require "sllib.global"

local _G = _G
local pairs = pairs
local type = type
local string = string
local next = next
local setmetatable = setmetatable
local getmetatable = getmetatable
local numbertostring = numbertostring


module("table")

function empty(t)
	return next(t) == nil
end

function values(t)
	local u = {}
	for _, v in pairs(t or {}) do
		insert(u, v)
	end
end

function invert(t)
	local u = {}
	for k, v in pairs(t or {}) do
		u[v] = k
	end
	return u
end

function clone(t, nometa)
	local u = {}
	if not nometa then
		setmetatable(u, getmetatable(t))
	end

	for k, v in pairs(t) do
		u[k] = v
	end
	return u
end

function merge(t, u)
	local r = clone(t)
	for k, v in pairs(u) do
		r[k] = v
	end
	return r
end


local function tableAddress(t)
    local str
    if _G._tostring then   --std库修改的
    	str = _G._tostring(t)
    else
    	_G.tostring(t)
    end
    return string.gsub(str, "^table: ", "") or ""
end

local function getInnerRef(tbl)
    local loaded = {}
    local ref = {}
    local function _get(t)
        if loaded[t] then
            ref[t] = t
            return
        end
        loaded[t] = t
        for k, v in pairs(t) do
            if type(k) == "table" then
                _get(k)
            elseif type(v) == "table" then
                _get(v)
            end
        end
    end
    _get(tbl)
    return ref
end

function tostring(t, level, pre)
	local loaded = {}
	local showAddress = getInnerRef(t)
	local function _tostring(t, level, pre)
		level = level and (level - 1) or 10
		if level < 0 then
			return pre .. "..."
		end

		pre = pre or ""
		if next(t) == nil then
			return pre .. "{}"
		end

		loaded[t] = t 

		local strs = {}
		insert(strs, pre .. "{")
		if showAddress[t] then
            insert(strs, tableAddress(t))
		end
		
		insert(strs, "\n")
		pre = pre .. "  "

		if #t == 0 then  --map
			for k, v in pairs(t) do
				insert(strs, pre)

				if type(k) == "table" then
	                if loaded[t] then
	                    insert(strs, tableAddress(t))
	                else
	                	remove(strs)  --多一个pre
	                    insert(strs, _tostring(k, level, pre))
	                end
				elseif type(k) == "number" then
					insert(strs, "[" .. numbertostring(k) .. "]")
				else
					local str = _G.tostring(k)
					insert(strs, '["' .. str .. '"]')
				end

				insert(strs, " = ")

				if type(v) == "table" then
	                if loaded[v] then
	                    insert(strs, tableAddress(v))
	                else
	                    insert(strs, "\n")
	                    insert(strs, _tostring(v, level, pre))
	                end
				elseif type(v) == "number" then
					insert(strs, numbertostring(v))
				else
					insert(strs, '"' .. _G.tostring(v) .. '"')
				end

				insert(strs, ",\n")
			end
		else  --array
			for _, v in ipairs(t) do
				insert(strs, pre)
				if type(v) == "table" then
	                if loaded[v] then
	                    insert(strs, tableAddress(v))
	                else
	                	remove(strs)  --多一个pre
	                    insert(strs, _tostring(v, level, pre))
	                end
				elseif type(v) == "number" then
					insert(strs, numbertostring(v))
				else
					insert(strs, '"' .. _G.tostring(v) .. '"')
				end

				insert(strs, ",\n")
			end
		end

		strs[#strs] = ","  --last ",\n"
		insert(strs, "\n" .. string.sub(pre, 1, -3) .. "}")

		return concat(strs)
	end
	return _tostring(t, level, pre)
end


---紧缩格式
--限制数字key只能用于数组
function tostringex(t)
	local strs = {}
	insert(strs, "{")

	for k, v in pairs(t) do
		if type(k) == "table" then
			insert(strs, tostringex(k))
			insert(strs, "=")
		elseif type(k) == "number" then
			--do nothing
		else
			insert(strs, '["' .. _G.tostring(k) .. '"]')
			insert(strs, "=")
		end

		if type(v) == "table" then
			insert(strs, tostringex(v))
		elseif type(v) == "number" then
			insert(strs, numbertostring(v))
		else
			insert(strs, '"' .. _G.tostring(v) .. '"')
		end
		insert(strs, ",")
	end
	insert(strs, "}")
	return concat(strs)
end

function print(t)
    if type(t) ~= "table" then
        _G.print(t)
    else
        _G.print(tostring(t))
    end
end




