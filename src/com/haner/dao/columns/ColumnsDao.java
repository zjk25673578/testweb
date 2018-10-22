package com.haner.dao.columns;

import com.haner.model.Columns;
import com.haner.util.BaseDao;

import java.sql.Connection;

/**
 * 数据库访问对象
 */
public class ColumnsDao extends BaseDao<Columns> {

    /**
     * 构造方法
     * @param conn 数据处理的数据库连接对象
     */
    public ColumnsDao(Connection conn) {
        this.clazz = Columns.class;
        this.conn = conn;
    }
}
