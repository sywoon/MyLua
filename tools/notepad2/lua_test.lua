--require "std"


print("Hello World!")

--print table
s1 = {x=1, y=2}
print(table.tostring(s1))
--or
table.print({name="Li", age=18})


--coroutine test
co = coroutine.create(function (a, b) 
                print("a", "test " .. a .. b)
                print("b", coroutine.yield(a+b, a-b))  --2 yield to resume
                print("end")
                return 11, 22 --4 function to resume
            end)

print("1", coroutine.status(co))
print(2, coroutine.resume(co, 1, 2))  --1 resume to function

print(3, coroutine.status(co))
print(4, coroutine.resume(co, 3, 4)) --3 resume to yield

print(5, coroutine.status(co))
print(6, coroutine.resume(co))




