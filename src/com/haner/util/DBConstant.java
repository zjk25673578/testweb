package com.haner.util;

/**
 * 常量类<br>
 * 数据库连接使用到的URL, DRIVERCLASS, USERNAME, PASSWORD
 *
 * @author zhaojk
 * @version 1.0
 */
public class DBConstant {
    /**
     * 数据库url分隔符
     */
    public static final String S = "/";
    /**
     * 数据库类型
     */
    public static final String MYSQL = "mysql";
    public static final String MYSQL_PORT = ":3306" + S;
    public static final String ORACLE = "oracle";
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
    static final String URL_ORCL_PRE = "jdbc:oracle:thin:@";
    static final String URL_ORCL_SUF = ":1521:";
    /**
     * 数据库的地址(mysql)
     */
    static final String URL_MYSQL_PRE = "jdbc:mysql:" + st(2);
    static final String URL_MYSQL_PORT = ":3306" + S;
    static final String URL_MYSQL_SUF = "?useUnicode=true&characterEncoding=utf-8";
    static final String URL_MYSQL = "jdbc:mysql://localhost:3306/mydb?useUnicode=true&characterEncoding=utf-8";
    /**
     * 数据库驱动类文件(Oracle)
     */
    static final String DRIVERCLASSNAME_ORCL = "oracle.jdbc.OracleDriver";
    /**
     * 数据库驱动类文件(mysql)
     */
    static final String DRIVERCLASSNAME_MYSQL = "com.mysql.jdbc.Driver";

    /**
     * 重复输出分隔符
     *
     * @param count 重复次数
     * @return
     */
    public static String st(int count) {
        String temp = "";
        for (int i = 0; i < count; i++) {
            temp += S;
        }
        return temp;
    }

}
