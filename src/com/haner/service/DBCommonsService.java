package com.haner.service;

import com.haner.dao.DBCommonsDao;
import com.haner.model.DBCommons;
import com.haner.model.DBConnection;

import java.sql.Connection;
import java.util.List;

/**
 * 业务逻辑
 * 常用数据库信息
 */
public class DBCommonsService {
    private DBCommonsDao dbCommonsDao;

    public DBCommonsService(Connection conn) {
        dbCommonsDao = new DBCommonsDao(conn);
    }

    /**
     * 保存一条常用数据库信息
     * @param conn
     * @return
     * @throws Exception
     */
    public int saveCommonsDB(DBConnection conn) throws Exception {
        String sql = "insert into db_commons(username, password, address, dbtype, dbname) values " +
                "(?, ?, ?, ?, ?)";
        String querySql = "select ids from db_commons where username=? and password=? " +
                "and address=? and dbtype=? and dbname=?";
        Object o = dbCommonsDao.getOne(querySql, conn.getUsername(), conn.getPassword(),
                conn.getAddress(), conn.getDbtype(), conn.getDocDbname());
        if (o == null) {
            int r = dbCommonsDao.update(sql, conn.getUsername(), conn.getPassword(),
                    conn.getAddress(), conn.getDbtype(), conn.getDocDbname());
            return r;
        }
        return 0;
    }

    /**
     * 获取常用数据库连接信息
     * @return
     * @throws Exception
     */
    public List<DBCommons> selectCommonsDBs() throws Exception {
        String sql = "select * from db_commons";
        return dbCommonsDao.query(sql);
    }

    /**
     * 删除指定信息
     * @param ids
     * @return
     * @throws Exception
     */
    public int deleteCommonsDBs(String ids) throws Exception {
        String sql = "delete from db_commons where ids=?";
        return dbCommonsDao.update(sql, ids);
    }

    public DBCommonsDao getDbCommonsDao() {
        return dbCommonsDao;
    }

    public void setDbCommonsDao(DBCommonsDao dbCommonsDao) {
        this.dbCommonsDao = dbCommonsDao;
    }
}
