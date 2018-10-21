package com.haner.dao.tables;

import com.haner.model.Tables;
import com.haner.util.BaseDao;

import java.sql.Connection;

public class TablesDao extends BaseDao<Tables> {

    public TablesDao(Connection conn) {
        this.clazz = Tables.class;
        this.conn = conn;
    }
}
