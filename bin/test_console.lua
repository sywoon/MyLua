local console = require "console"

console:describe()

console:setColor(0x03)
print(123)

console:setColor(0x06)
print(456)

console:setColor(0x0E)
print(789)

console:setColor(0x0C)
print(111)

console:resetColor()

print(0x1 & 0x10)
