
function io.readFile(filepath, mode)
	mode = mode or "r"
	local file = io.open(filepath, mode)
	if file == nil then
		return nil
	end

	local str = file:read("*a")
	file:close()
	return str
end

-- "r": read mode
-- "w": write mode;
-- "a": append mode;
-- "r+": update mode, all previous data is preserved;
-- "w+": update mode, all previous data is erased;
-- "a+": append update mode, previous data is preserved, writing is only allowed at the end of file.
function io.writeFile(filepath, str, mode)
	mode = mode or "w"
	local file = io.open(filepath, mode)
	if file == nil then
		return false
	end

	file:write(str)
	file:close()
	return true
end
























