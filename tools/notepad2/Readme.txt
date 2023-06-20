
16.9.9
修复默认加载std库时 内部加载socket.core.dll报错问题
添加的cpath路径(一般是用自己的lua.exe的时候出现)


version:4.2.25 S1.0

用途：
    方便学习语言的语法 或临时写个小功能测试效果(支持运行lua js ts coffeescript)
    当然也可用于系统默认记事本的替代品(好用多了!)


准备：
0 安装字库 Droid Sans Mono.ttf  程序员必备！
1 修改文件打开方式
    右键js_test.js lua_test.lua coffee_test.coffee打开方式 
    选择这个目录下的Notepad2.exe
    (建议先把这个文件夹复制到某个固定的目录 如:Program Files (x86))
    设置这个步骤后  任意位置的lua或js文件 都能直接打开 运行
    
    如果想替换系统默认的txt 随便找一个txt文件 用上面的方式修改打开方式就行了
    (建议替换 好用多了 用过了 就再也回不去了!)

2 安装语言环境(已经装过的 就不用重复安装了)
    lua:
        安装LuaForWindows_v5.1.4-46.exe
    
    js:
        安装node-v0.12.0-x64.msi
        
    coffee:
        先安装js的node
        控制台 执行npm install -g coffee-script  
    
    安装成功后 可以在控制台验证lua node和coffee命令
    
    ts:
        npm i -g typescript
        npm i -g ts-node
        若还不行 将npm config get prefix得到的路径 加入环境path中

3 运行测试
    双击lua_test.lua js_test.js coffee_test.coffee ts_test.ts
    ctrl + L   查看运行的结果

4 常用的功能
    a、file菜单 => Encoding 随意改变不同的文本格式 ansi utf8等
    b、想要退出该文档 不用点击关闭按钮 直接按esc键(不用担心已经修改内容的情况)
    c、自动换行 工具栏上 放大图标前面的那个(如果是写代码 建议别写太长)




