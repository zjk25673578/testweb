package com.haner.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.haner.dao.ColumnsDao;
import com.haner.dao.SourcedocDao;
import com.haner.model.Columns;

public class ColumnsService {

    private ColumnsDao columnsDao;

    private SourcedocDao sourcedocDao;

    public ColumnsService(Connection connection) {
        columnsDao = new ColumnsDao(connection);
    }

    public List<Columns> columns(String tname, String sche) throws Exception {
        String sql = "select * from db_columns where sche=? and tname=?";
        List<Columns> list = columnsDao.query(sql, sche, tname);
        if (list == null || list.size() == 0) {
            String sqlInsert = "insert into db_columns(sche, tname, colname, coltype, clength, ccomment) values (?, ?, ?, ?, ?, ?)";
            List<Columns> sourceColumns = sourcedocDao.columnDatas(sche, tname);
            List<Object[]> params = new ArrayList<>();
            for (int i = 0; i < sourceColumns.size(); i++) {
                Columns col = sourceColumns.get(i);
                Object[] os = {sche, col.getTname(), col.getColname(), col.getColtype(), col.getClength(), col.getCcomment()};
                params.add(os);
            }
            int[] results = columnsDao.updateBatch(sqlInsert, params);
            System.out.println(tname + "表列数据已经添加" + Arrays.toString(results));
            list = columnsDao.query(sql, sche, tname);
        }
        return list;
    }

    public void refreshColumns(String tname, String sche) throws Exception {
        String sqlInsert = "insert into db_columns(tname, colname, coltype, clength, ccomment) values (?, ?, ?, ?, ?)";
        String sqlUpdate = "update db_columns set coltype=?, clength=?, ccomment=? where ids=?";
        String view_sql = "select ids from db_columns where sche=? and tname=? and colname=?";
        List<Columns> sourceColumns = sourcedocDao.columnDatas(sche, tname);
        for (int i = 0; i < sourceColumns.size(); i++) {
            Columns column = sourceColumns.get(i);
            Object o = columnsDao.getOne(view_sql, sche, tname, column.getColname()); // 查询结果是当前数据的主键
            if (o == null){
                columnsDao.update(sqlInsert, tname, column.getColname(), column.getColtype(), column.getClength(), column.getCcomment());
            } else {
                columnsDao.update(sqlUpdate, column.getColtype(), column.getClength(), column.getCcomment(), o);
            }
        }
    }

    public SourcedocDao getSourcedocDao() {
        return sourcedocDao;
    }

    public void setSourcedocDao(SourcedocDao sourcedocDao) {
        this.sourcedocDao = sourcedocDao;
    }
}
