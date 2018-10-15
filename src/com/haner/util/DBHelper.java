package com.haner.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import static com.haner.util.DBConstant.*;

/**
 * 数据库连接类, 通过这个类可以获取到数据库的连接对象Connection
 *
 * @author zhaojk
 * @version 2.0
 */
public class DBHelper {

    /**
     * java.sql.Connection的实例对象
     */
    private static Connection conn;

    static {
        try {
            Class.forName(DRIVERCLASSNAME_MYSQL);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    /**
     * 所有参数使用默认值<br>
     * 默认连接本地ORACLE数据库<br>
     * 用户名, 密码和数据库地址将使用DBConstant类中的USERNAME, PASSWORD和URL_ORCL<br>
     *
     * @return 数据库连接对象
     */
    public static Connection getConnectionForOracle() {
        if (conn == null) {
            conn = getConnectionForOracle(URL_ORCL, USERNAME, PASSWORD);
        }
        return conn;
    }

    /**
     * 所有参数使用默认值<br>
     * 默认连接本地MYSQL数据库<br>
     * 用户名, 密码和数据库地址将使用DBConstant类中的USERNAME, PASSWORD和URL_MYSQL<br>
     *
     * @return 数据库连接对象
     */
    public static Connection getConnectionForMysql() {
        if (conn == null) {
            conn = getConnectionForMysql(URL_MYSQL, USERNAME, PASSWORD);
        }
        return conn;
    }

    /**
     * 使用指定的用户名和密码获取本地ORACLE数据库的连接
     *
     * @param username 用户名
     * @param password 密码
     * @return
     */
    public static Connection getConnectionForOracle(String username, String password) {
        if (conn == null) {
            conn = getConnectionForMysql(URL_ORCL, username, password);
        }
        return conn;
    }

    /**
     * 使用指定的数据库连接信息获取ORACLE数据库连接
     *
     * @param url      指定的数据库地址
     * @param username 指定的用户名
     * @param password 指定的密码
     * @return 数据库连接对象
     */
    public static Connection getConnectionForOracle(String url, String username, String password) {
        if (conn == null) {
            try {
                conn = DriverManager.getConnection(url, username, password);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return conn;
    }

    /**
     * 使用指定的数据库连接信息获取MYSQL数据库连接
     *
     * @param url      指定的数据库地址
     * @param username 指定的用户名
     * @param password 指定的密码
     * @return 数据库连接对象
     */
    public static Connection getConnectionForMysql(String url, String username, String password) {
        try {
            conn = DriverManager.getConnection(url, username, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }

    /**
     * 此方法用于释放内存资源, 销毁Connection, Statement, ResultSet对象
     *
     * @param sm 用于执行sql语句的预处理对象
     * @param rs 进行查询时返回的结果集的对象
     */
    public static void destroy(Statement sm, ResultSet rs) {
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            conn = null;
        }

        if (sm != null) {
            try {
                sm.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            sm = null;
        }

        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            rs = null;
        }
    }
}
