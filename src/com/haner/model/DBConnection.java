package com.haner.model;

import com.haner.util.DBHelper;

import java.sql.Connection;
import java.util.HashMap;
import java.util.Map;

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
        this.password = "";
    }

    /**
     * 初始化的验证
     * 对username, address, dbtype做一个简单的非空判断
     *
     * @return
     */
    private Map<String, Object> initCheck() {
        String[] fields = {username, address, dbtype};
        Map<String, Object> result = new HashMap<>();
        for (String field : fields) {
            if (field == null || "".equals(field.trim())) {
                result.put("success", false);
                result.put("field", field);
                return result;
            }
        }
        result.put("success", true);
        return result;
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

    /**
     * 获取数据库的链接
     * 这里获取的链接是将要生成文档的数据库
     * 目前只做了mysql数据库的支持
     * 通过访问mysql中information_schema数据库中的信息表来获取需要生成的文档信息
     *
     * @return
     * @throws Exception
     */
    public Connection getConnection() throws Exception {
        Map<String, Object> map = initCheck();
        boolean flag = Boolean.parseBoolean(map.get("success").toString());
        if (flag) {
            switch (dbtype) {
                case MYSQL:
                    this.setDriverClass(DRIVER_CLASSNAME_MYSQL);
                    String db;
                    if (docDbname != null && !"".equals(docDbname.trim())) {
                        db = "information_schema";
                    } else {
                        throw new Exception("没有获取到任何远程数据库名称..");
                    }
                    String url_m = URL_MYSQL_PRE + address + MYSQL_PORT + db + URL_MYSQL_SUF;
                    connection = DBHelper.getConnection(driverClass, url_m, username, password == null ? "" : password);
                    break;
                default:
                    System.err.println("当前数据库暂时还不支持");
                    break;
            }
        } else {
            throw new Exception(map.get("field") + "属性为null或者接收到空字符串 !");
            // System.err.println("数据库属性信息填写错误, 正在启用默认mysql数据库配置");
            // this.setDriverClass(DRIVER_CLASSNAME_MYSQL);
            // connection = DBHelper.getConnection(driverClass, URL_MYSQL, USERNAME, PASSWORD);
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
