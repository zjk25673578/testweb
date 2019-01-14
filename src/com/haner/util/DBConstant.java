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
    public static final String ORACLE = "oracle";

    /**
     * 默认端口号
     */
    public static final String MYSQL_PORT = ":3306" + S;

    /**
     * 数据库驱动类文件(Oracle)
     */
    public static final String DRIVERCLASSNAME_ORCL = "oracle.jdbc.OracleDriver";

    /**
     * 数据库的地址(oracle)
     */
    public static final String URL_ORCL = "jdbc:oracle:thin:@localhost:1521:xe";
    public static final String URL_ORCL_PRE = "jdbc:oracle:thin:@";
    public static final String URL_ORCL_SUF = ":1521:";

    /**
     * 数据库的地址(mysql)
     */
    public static final String URL_MYSQL_PRE = "jdbc:mysql:" + st(2);
    public static final String URL_MYSQL_PORT = ":3306" + S;
    public static final String URL_MYSQL_SUF = "?useUnicode=true&characterEncoding=utf-8";

    /* 本地必须要有的数据库配置(可随时更改) start */
    /* ****************************************** IMPORTANT CONFIG ******************************************** */
    /* 获取的远程数据库信息将存储在以下数据库中 */
    public static final String USERNAME = "root";
    public static final String PASSWORD = "123456";
    public static final String DRIVER_CLASSNAME_MYSQL = "com.mysql.jdbc.Driver";
    public static final String URL_MYSQL = "jdbc:mysql://localhost:3306/mydb?useUnicode=true&characterEncoding=utf-8";
    /* ********************************************************************************************************* */
    /* 本地必须要有的数据库配置 end */

    /**
     * 重复输出分隔符
     *
     * @param count 重复次数
     * @return
     */
    public static String st(int count) {
        StringBuilder temp = new StringBuilder();
        for (int i = 0; i < count; i++) {
            temp.append(S);
        }
        return temp.toString();
    }

}
