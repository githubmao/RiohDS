**RiohDS数据代码管理**
1. 仅针对R；
2. 共享的代码请尽量遵循 Google's R Style Guide。

>概要: R编码风格约定
>
>文件命名: 以 .R (大写) 结尾

>标识符命名: variable.name, FunctionName, kConstantName

>单行长度: 不超过 80 个字符

>缩进: 两个空格, 不使用制表符

>空白

>花括号: 前括号不折行写, 后括号独占一行

>赋值符号: 使用 <-, 而非 =

>分号: 不要用

>总体布局和顺序

>注释准则: 所有注释以 # 开始, 后接一个空格; 行内注释需要在 # 前加两个空格

>函数的定义和调用

>函数文档

>示例函数

>TODO 书写风格: TODO(您的用户名)

>概要: R语言使用规则

>attach: 避免使用

>函数: 错误 (error) 应当使用 stop() 抛出

>对象和方法: 尽可能避免使用 S4 对象和方法; 永远不要混用 S3 和 S4