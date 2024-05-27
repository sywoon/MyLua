
多个bat同时执行，并能获取执行的结果
用于压缩执行时间

缺点：
看起来像异步  实际还是bat挨个执行 并没同步执行
也没压缩时间


在 Lua 中，可以使用 os.execute 或者 io.popen 来执行外部命令，但这些方法默认是同步执行的。如果你想并行执行多个批处理文件 (.bat) 并获取其执行结果，可以使用 LuaSocket 库中的 socket.select 或者使用协程。

不过，更常见的方法是使用 LuaJIT 的 FFI 库来调用底层操作系统 API 或者通过 os.spawn 类似的方法。这里有一个简单的例子使用 LuaSocket 和协程实现并行执行多个批处理文件：

luarocks install luasocket

