package com.haner.dao.tables;

import com.haner.model.Tables;
import com.haner.util.BaseDao;

import java.sql.Connection;

/**
 * 数据库访问对象
 */
public class TablesDao extends BaseDao<Tables> {

    /**
     * 构造方法
     * @param conn 数据处理的数据库连接对象
     */
    public TablesDao(Connection conn) {
        this.clazz = Tables.class;
        this.conn = conn;
    }
}
