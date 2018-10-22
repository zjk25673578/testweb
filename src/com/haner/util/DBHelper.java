package com.haner.util;

import java.sql.*;

import static com.haner.util.DBConstant.*;

/**
 * 数据库连接类, 通过这个类可以获取到数据库的连接对象Connection
 *
 * @author zhaojk
 * @version 2.0
 */
public class DBHelper {

    /**
     * 使用指定的数据库连接信息获取MYSQL数据库连接
     *
     * @param url      指定的数据库地址
     * @param username 指定的用户名
     * @param password 指定的密码
     * @return 数据库连接对象
     */
    public static Connection getConnection(String className, String url, String username, String password) {
        Connection conn;
        try {
            Class.forName(className);
            conn = DriverManager.getConnection(url, username, password);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        return conn;
    }

    /**
     * 获取连接对象, 属性取自com.haner.util.DBConstant中
     * @return
     */
    public static Connection getConnection() {
        return getConnection(DRIVERCLASSNAME_MYSQL, URL_MYSQL,
                USERNAME, PASSWORD);
    }

    /**
     * 此方法用于释放内存资源, 销毁Connection, Statement, ResultSet对象
     *
     * @param sm 用于执行sql语句的预处理对象
     * @param rs 进行查询时返回的结果集的对象
     */
    public static void destroy(Connection conn, Statement sm, ResultSet rs) throws Exception {
        if (conn != null) {
            conn.close();
        }
        if (sm != null) {
            sm.close();
        }
        if (rs != null) {
            rs.close();
        }
    }
}
