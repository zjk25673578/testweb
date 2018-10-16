package com.haner.dao;

import java.sql.Connection;

import com.haner.model.Tables;
import com.haner.util.BaseDao;

public class TablesDao extends BaseDao<Tables> {

    public TablesDao(Connection conn) {
        this.clazz = Tables.class;
        this.conn = conn;
    }
}
