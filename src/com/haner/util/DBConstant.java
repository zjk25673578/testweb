package com.haner.util;

/**
 * 常量类<br>
 * 数据库连接使用到的URL, DRIVERCLASS, USERNAME, PASSWORD
 * @author zhaojk
 * @version 1.0
 */
public class DBConstant {
	/**
	 * 访问数据库的用户名
	 */
	static final String USERNAME = "root";
	/**
	 * 访问数据库的用户密码
	 */
	static final String PASSWORD = "123456";
	/**
	 * 数据库的地址(oracle)
	 */
	static final String URL_ORCL = "jdbc:oracle:thin:@localhost:1521:xe";
	/**
	 * 数据库的地址(mysql)
	 */
	static final String URL_MYSQL_PRE = "jdbc:mysql://localhost:3306/";
	static final String URL_MYSQL_SUF = "?useUnicode=true&characterEncoding=utf-8";
	static final String URL_MYSQL = URL_MYSQL_PRE + "mydb" + URL_MYSQL_SUF;
	/**
	 * 数据库驱动类文件(Oracle)
	 */
	static final String DRIVERCLASSNAME_ORCL = "oracle.jdbc.OracleDriver";
	/**
	 * 数据库驱动类文件(mysql)
	 */
	static final String DRIVERCLASSNAME_MYSQL = "com.mysql.jdbc.Driver";
}
