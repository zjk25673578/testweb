# MySQL数据库结构查看器
#### 这个软件用来展示MySQL数据库表的结构, 以及记录表关联关系使用
### 使用方法
* ## com.haner.util.DBConstant是一个常亮记录的类, 修改其中的本地存储的数据库连接信息<br>
找到: 
```
    public static final String USERNAME = "......";
    public static final String PASSWORD = "......";
    public static final String DRIVER_CLASSNAME_MYSQL = "......";
    public static final String URL_MYSQL = "......";
```
这些代码, 将以上代码修改为自己的本地数据库连接, 部署直接启动
* ## 运行起来之后会有一个登陆页面<br>
![登陆页面](https://raw.githubusercontent.com/zjk25673578/testweb/master/readme-img/login.png)<br>

1. 用户名
2. 密码
3. 数据库地址, 可以访问的ip地址
4. 数据库类型(目前只支持MySQL)
5. 数据库名
* ## 保存为常用数据库
可以将数据库信息保存, 下次直接点击信息自动填入<br>
填写的5个信息全部匹配视为重复信息, 不再保存

###### 遗留问题
```
没有ip判断, 假如不同ip地址的重名数据库将会发生信息错乱
```
* ## 使用技术
>前端
1. layui
>后端
1. jsp
2. servlet
3. mysql数据库