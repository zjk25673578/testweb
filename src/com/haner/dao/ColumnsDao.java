package com.haner.dao;

import java.sql.Connection;

import com.haner.model.Columns;
import com.haner.util.BaseDao;

public class ColumnsDao extends BaseDao<Columns> {

    public ColumnsDao(Connection conn) {
        this.clazz = Columns.class;
        this.conn = conn;
    }
}
