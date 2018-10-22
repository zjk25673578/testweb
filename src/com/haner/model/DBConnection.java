package com.haner.model;

import java.sql.Connection;

import com.haner.util.DBHelper;

import static com.haner.util.DBConstant.*;

/**
 * 数据库连接对象(对应java.sql.Connection)
 */
public class DBConnection {
    private String username;
    private String password;
    private String port;
    private String driverClass;
    private String address;
    private String dbtype;
    private String docDbname;
    private Connection connection;

    public DBConnection() {
    }

    private boolean initCheck() {
        String[] fields = {username, address, dbtype};
        for (int i = 0; i < fields.length; i++) {
            if (fields[i] == null || "".equals(fields[i].trim())) {
                return false;
            }
        }
        return true;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPort() {
        return port;
    }

    public void setPort(String port) {
        this.port = port;
    }

    public String getDriverClass() {
        return driverClass;
    }

    public void setDriverClass(String driverClass) {
        this.driverClass = driverClass;
    }

    public Connection getConnection() throws Exception {
        boolean flag = initCheck();
        if (flag) {
            switch (dbtype) {
                case MYSQL:
                    this.setDriverClass(DRIVERCLASSNAME_MYSQL);
                    String db;
                    if (docDbname != null && !"".equals(docDbname.trim())) {
                        db = "information_schema";
                    } else {
                        db = "mydb";
                    }
                    String url_m = URL_MYSQL_PRE + address + MYSQL_PORT + db + URL_MYSQL_SUF;
                    connection = DBHelper.getConnection(driverClass, url_m, username, password == null ? "" : password);
                    break;
                default:
                    System.err.println("当前数据库暂时还不支持");
                    break;
            }
        } else {
            System.err.println("数据库属性信息填写错误, 正在启用默认mysql数据库配置");
            this.setDriverClass(DRIVERCLASSNAME_MYSQL);
            String url = URL_MYSQL;
            connection = DBHelper.getConnection(driverClass, url, USERNAME, PASSWORD);
        }
        return connection;
    }

    public void setConnection(Connection connection) {
        this.connection = connection;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDbtype() {
        return dbtype;
    }

    public void setDbtype(String dbtype) {
        this.dbtype = dbtype;
    }

    public String getDocDbname() {
        return docDbname;
    }

    public void setDocDbname(String docDbname) {
        this.docDbname = docDbname;
    }

    public boolean close() throws Exception {
        if (connection != null && !connection.isClosed()) {
            connection.close();
        }
        return connection == null || connection.isClosed();
    }
}
