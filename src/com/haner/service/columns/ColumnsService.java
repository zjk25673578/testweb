package com.haner.service.columns;

import com.haner.dao.columns.ColumnsDao;
import com.haner.dao.SourcedocDao;
import com.haner.model.Columns;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * 业务逻辑
 */
public class ColumnsService {

    private ColumnsDao columnsDao;

    private SourcedocDao sourcedocDao;

    public ColumnsService(Connection connection) {
        columnsDao = new ColumnsDao(connection);
    }

    /**
     * 查询指定表名, 数据库中的列属性信息
     * 当表名, 数据库匹配不到任何信息则做添加操作
     * @param tname 表名
     * @param sche 数据库名
     * @return
     * @throws Exception
     */
    public List<Columns> columns(String tname, String sche) throws Exception {
        String sql = "select * from db_columns where sche=? and tname=?";
        List<Columns> list = columnsDao.query(sql, sche, tname);
        if (list == null || list.size() == 0) {
            String sqlInsert = "insert into db_columns(sche, tname, colname, coltype, " +
                    "clength, ccomment) values (?, ?, ?, ?, ?, ?)";
            List<Columns> sourceColumns = sourcedocDao.columnDatas(sche, tname);
            List<Object[]> params = new ArrayList<>();
            for (int i = 0; i < sourceColumns.size(); i++) {
                Columns col = sourceColumns.get(i);
                Object[] os = {sche, col.getTname(), col.getColname(),
                        col.getColtype(), col.getClength(), col.getCcomment()};
                params.add(os);
            }
            int[] results = columnsDao.updateBatch(sqlInsert, params);
            System.out.println(tname + "表列数据已经添加" + Arrays.toString(results));
            list = columnsDao.query(sql, sche, tname);
        }
        return list;
    }

    /**
     * 刷新指定表名, 数据库的列属性
     * 当表名, 列名, 数据库可以匹配到信息则做更新操作
     * 更新列类型, 最大长度, 注释这3个字段
     * @param tname
     * @param sche
     * @throws Exception
     */
    public void refreshColumns(String tname, String sche) throws Exception {
        String sqlInsert = "insert into db_columns(sche, tname, colname, coltype, clength, ccomment) " +
                "values (?, ?, ?, ?, ?, ?)";
        String sqlUpdate = "update db_columns set coltype=?, clength=?, ccomment=? where ids=?";
        String view_sql = "select ids from db_columns where sche=? and tname=? and colname=?";
        List<Columns> sourceColumns = sourcedocDao.columnDatas(sche, tname);
        for (int i = 0; i < sourceColumns.size(); i++) {
            Columns column = sourceColumns.get(i);
            // 查询结果是当前数据的主键
            Object o = columnsDao.getOne(view_sql, sche, tname, column.getColname());
            if (o == null) {
                columnsDao.update(sqlInsert, sche, tname, column.getColname(), column.getColtype(),
                        column.getClength(), column.getCcomment());
            } else {
                columnsDao.update(sqlUpdate, column.getColtype(), column.getClength(),
                        column.getCcomment(), o);
            }
        }
    }

    /**
     * 删除指定列信息
     * @param ids
     * @return
     */
    public int deleteColumn(String ids) {
        String sql = "delete from db_columns where ids=?";
        int result = 0;
        try {
            result = columnsDao.update(sql, ids);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    /**
     * 清空列属性信息表
     */
    public void delCols() {
        String sql = "delete from db_columns";
        try {
            columnsDao.update(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 查询指定列信息, 用于更新备注及关联
     * @param ids 主键
     * @return
     * @throws Exception
     */
    public Columns selectColumnsById(String ids) throws Exception {
        String sql = "select * from db_columns where ids=?";
        return columnsDao.queryOne(sql, ids);
    }

    /**
     * 更新指定列属性
     * @param columns
     * @return
     * @throws Exception
     */
    public int updateColInfo(Columns columns) throws Exception {
        String sql = "update db_columns set related=?, note=? where ids=?";
        Integer ids = columns.getIds();
        return columnsDao.update(sql, columns.getRelated(), columns.getNote(), ids);
    }

    public SourcedocDao getSourcedocDao() {
        return sourcedocDao;
    }

    public void setSourcedocDao(SourcedocDao sourcedocDao) {
        this.sourcedocDao = sourcedocDao;
    }
}
