MySQL数据库结构查看器
=======
#### 这个软件用来展示MySQL数据库表的结构, 以及记录表关联关系使用, 导出表结构文档
### 使用方法
## com.haner.util.DBConstant是一个常量记录的类, 修改其中的本地存储的数据库连接信息<br>
找到: 
```
    public static final String USERNAME = "......";
    public static final String PASSWORD = "......";
    public static final String DRIVER_CLASSNAME_MYSQL = "......";
    public static final String URL_MYSQL = "......";
```
这些代码, 将以上代码修改为自己的本地数据库连接, 部署直接启动
* ## 登陆页面<br>
![登陆页面](https://raw.githubusercontent.com/zjk25673578/testweb/master/readme-img/login.png)  

1. 用户名
2. 密码
3. 数据库地址, 可以访问的ip地址
4. 数据库类型(目前只支持MySQL)
5. 数据库名
* ## "保存为常用数据库"按钮
可以将数据库信息保存, 下次直接点击信息自动填入  
填写的5个信息全部匹配视为重复信息, 不再保存
* ## 表信息主界面
![登陆页面](https://raw.githubusercontent.com/zjk25673578/testweb/master/readme-img/main.png)  

|序号|数据来源|关联项目模块|注释|关联其它表|备注|操作|
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
|1|所在数据库名|自定义|取自数据库中表注释|自定义|自定义|修改 删除|

"刷新数据"按钮
> 将会重新刷新表的数据, 原先有的数据做修改, 没有的数据做添加,  
当系统第一次运行的时候这个页面会是空页面, 需要点一下这个按钮

"重新登陆数据库"按钮
> 返回数据库的登陆界面

"删除所有表信息"按钮
> 清空当前连接数据库下的表信息(物理删除本地数据库)

"删除所有列信息"按钮
> 清空当前连接数据库下的列信息(物理删除本地数据库)

"导出数据库文档"按钮
> 选中行时导出选中表的docx文档, 表名, 表注释, 备注信息将会被导出  
没有选中时导出所有表

"Search"按钮
> 根据输入的查询条件查询表信息

"Reset"按钮
> 清空查询的输入框

"Clear"按钮
> 取消当前所有选中

"All"按钮
> 选中全部

行操作按钮
=========
* ## 点击"修改"按钮
![登陆页面](https://raw.githubusercontent.com/zjk25673578/testweb/master/readme-img/edit_table.png)  

记录自定义的信息, 将保存在配置的本地数据库

* ## 点击"删除"按钮

删除当前表数据(物理删除)

* ## 点击表名
![登陆页面](https://raw.githubusercontent.com/zjk25673578/testweb/master/readme-img/col_main.png)  

表中所有的列信息, 注释那一列也是从数据库取出的数据



## "刷新这个表"按钮
> 刷新所有的列信息, 更新注释消息, 如果添加了列也会获取到这里, 但是没有顺序的规定, 会排在最后  如果删除了某一列将不会发生任何改变, 可以点删除按钮手动删除(物理删除)

## 行的"修改"按钮
> 同表的"修改"按钮


* # 遗留问题
```
没有ip判断, 假如不同ip地址的重名数据库将会发生信息错乱
```
* ## 使用技术
> 前端
1. layui
> 后端
1. jsp
2. servlet
3. mysql数据库
> 总结  
技术本身非常简单, 只是作为一个小工具方便查看