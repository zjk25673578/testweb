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

    public List<Columns> columns(String tname) throws Exception {
        String sql = "select * from db_columns where tname=?";
        List<Columns> list = columnsDao.query(sql, tname);
        if (list == null || list.size() == 0) {
            String sqlInsert = "insert into db_columns(tname, colname, coltype, clength, ccomment) values (?, ?, ?, ?, ?)";
            List<Columns> sourceColumns = sourcedocDao.columnDatas(tname);
            List<Object[]> params = new ArrayList<>();
            for (int i = 0; i < sourceColumns.size(); i++) {
                Columns col = sourceColumns.get(i);
                Object[] os = {col.getTname(), col.getColname(), col.getColtype(), col.getClength(), col.getCcomment()};
                params.add(os);
            }
            int[] results = columnsDao.updateBatch(sqlInsert, params);
            System.out.println(tname + "表列数据已经添加" + Arrays.toString(results));
            list = columnsDao.query(sql, tname);
        }
        return list;
    }

    public SourcedocDao getSourcedocDao() {
        return sourcedocDao;
    }

    public void setSourcedocDao(SourcedocDao sourcedocDao) {
        this.sourcedocDao = sourcedocDao;
    }
}
