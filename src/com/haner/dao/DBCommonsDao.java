package com.haner.dao;

import com.haner.model.DBCommons;
import com.haner.util.BaseDao;

import java.sql.Connection;

public class DBCommonsDao extends BaseDao<DBCommons> {
    public DBCommonsDao(Connection connection) {
        this.clazz = DBCommons.class;
        this.conn = connection;
    }
}
