package com.haner.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.haner.model.Columns;
import com.haner.model.Tables;
import com.haner.util.DBConnection;

public class SourcedocDao {

    protected DBConnection dbConnection;

    private Connection conn;

    public SourcedocDao(DBConnection dbConnection) {
        this.dbConnection = dbConnection;
        try {
            this.conn = dbConnection.getConnection();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

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

    public List<Columns> columnDatas(String tablename) throws Exception {
        String sql = "SELECT TABLE_NAME, COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, COLUMN_COMMENT FROM `COLUMNS` WHERE TABLE_NAME=?";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, tablename);
        ResultSet rs = ps.executeQuery();
        List<Columns> list = new ArrayList<>();
        while (rs.next()) {
            Columns columns = new Columns();
            columns.setTname(rs.getString("TABLE_NAME"));
            columns.setColname(rs.getString("COLUMN_NAME"));
            columns.setColtype(rs.getString("DATA_TYPE"));
            columns.setClength(rs.getString("CHARACTER_MAXIMUM_LENGTH"));
            columns.setCcomment(rs.getString("COLUMN_COMMENT"));
            list.add(columns);
        }
        return list;
    }
}
