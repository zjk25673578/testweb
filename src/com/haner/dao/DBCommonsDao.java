package com.haner.dao;

import com.haner.model.DBCommons;
import com.haner.util.BaseDao;

import java.sql.Connection;

/**
 * 数据库访问对象
 */
public class DBCommonsDao extends BaseDao<DBCommons> {

    /**
     * 构造方法
     * @param connection 数据处理的数据库连接对象
     */
    public DBCommonsDao(Connection connection) {
        this.clazz = DBCommons.class;
        this.conn = connection;
    }
}
