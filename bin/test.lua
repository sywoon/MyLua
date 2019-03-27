require "lfs"
require "sllib_base"

print(_VERSION)

print("\n")

for k, v in pairs(lfs) do
	print(k, v)
end

