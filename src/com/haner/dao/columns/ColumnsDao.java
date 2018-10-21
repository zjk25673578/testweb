package com.haner.dao.columns;

import com.haner.model.Columns;
import com.haner.util.BaseDao;

import java.sql.Connection;

public class ColumnsDao extends BaseDao<Columns> {

    public ColumnsDao(Connection conn) {
        this.clazz = Columns.class;
        this.conn = conn;
    }
}
