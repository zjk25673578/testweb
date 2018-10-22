package com.haner.dao;

import com.haner.model.Columns;
import com.haner.model.Tables;
import com.haner.model.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * 需要生成文档的数据库访问对象
 */
public class SourcedocDao {

    /**
     * 数据库连接对象
     * 包含数据库信息的属性
     */
    protected DBConnection dbConnection;

    /**
     * 数据库连接对象
     */
    private Connection conn;

    /**
     * 构造方法
     * @param dbConnection
     */
    public SourcedocDao(DBConnection dbConnection) {
        this.dbConnection = dbConnection;
        try {
            this.conn = dbConnection.getConnection();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 获取目标数据库中表的注释及其他属性
     * @return
     * @throws Exception
     */
    public List<Tables> tableDatas() throws Exception {
        String sql = "SELECT TABLE_SCHEMA, TABLE_NAME, CREATE_TIME, TABLE_COMMENT FROM `TABLES` WHERE TABLE_SCHEMA=?";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, dbConnection.getDocDbname());
        ResultSet rs = ps.executeQuery();
        List<Tables> list = new ArrayList<>();
        while (rs.next()) {
            Tables tables = new Tables();
            tables.setTname(rs.getString("TABLE_NAME"));
            tables.setSche(rs.getString("TABLE_SCHEMA"));
            tables.setCtime(rs.getTimestamp("CREATE_TIME"));
            tables.setTcomment(rs.getString("TABLE_COMMENT"));
            list.add(tables);
        }
        return list;
    }

    /**
     * 获取目标数据库中指定表的列属性
     * @param sche mysql数据库名
     * @param tablename 表名
     * @return
     * @throws Exception
     */
    public List<Columns> columnDatas(String sche, String tablename) throws Exception {
        String sql = "SELECT TABLE_NAME, COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, COLUMN_COMMENT " +
                "FROM `COLUMNS` WHERE TABLE_NAME=? AND TABLE_SCHEMA=?";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, tablename);
        ps.setString(2, sche);
        ResultSet rs = ps.executeQuery();
        List<Columns> list = new ArrayList<>();
        while (rs.next()) {
            Columns columns = new Columns();
            columns.setSche(sche);
            columns.setTname(rs.getString("TABLE_NAME"));
            columns.setColname(rs.getString("COLUMN_NAME"));
            columns.setColtype(rs.getString("DATA_TYPE"));
            columns.setClength(rs.getString("CHARACTER_MAXIMUM_LENGTH"));
            columns.setCcomment(rs.getString("COLUMN_COMMENT"));
            list.add(columns);
        }
        return list;
    }

    public DBConnection getDbConnection() {
        return dbConnection;
    }

    public void setDbConnection(DBConnection dbConnection) {
        this.dbConnection = dbConnection;
    }
}
