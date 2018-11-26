package com.haner.service.tables;

import com.haner.dao.SourcedocDao;
import com.haner.dao.tables.TablesDao;
import com.haner.model.Tables;

import java.sql.Connection;
import java.util.LinkedList;
import java.util.List;

/**
 * 业务逻辑
 */
public class TablesService {

    private TablesDao tablesDao;

    private SourcedocDao sourcedocDao;

    public TablesService(Connection connection) {
        tablesDao = new TablesDao(connection);
    }

    /**
     * 获取表属性信息
     *
     * @param tabname 表名模糊查询条件
     * @param colname 列名模糊查询条件
     * @return
     * @throws Exception
     */
    public List<Tables> tables(String tabname, String colname) throws Exception {
        String tabSqlPlus = "";
        String colSqlPlus = "";
        if (tabname != null && tabname.trim().length() > 0) {
            tabSqlPlus = " AND t.tname LIKE '%" + tabname + "%' ";
        }
        if (colname != null && colname.trim().length() > 0) {
            colSqlPlus = " AND t.tname IN (SELECT DISTINCT c.tname FROM db_columns c " +
                    "WHERE c.colname LIKE '%" + colname + "%' AND c.sche=t.sche) ";
        }
        String sql = "SELECT * FROM db_tables t WHERE t.sche=? " +
                tabSqlPlus +
                colSqlPlus +
                " ORDER BY t.tname";
        System.out.println(sql);
        String dbname = sourcedocDao.getDbConnection().getDocDbname();
        return tablesDao.query(sql, dbname);
    }

    /**
     * 刷新整个表的信息
     * 通过表名做匹配
     * 可以匹配到做修改操作
     * 匹配不到做添加操作
     *
     * @return
     * @throws Exception
     */
    public int refreshTables() throws Exception {
        List<Tables> table_data = sourcedocDao.tableDatas();
        String insert_sql = "insert into db_tables (sche, tname, ctime, tcomment) values (?, ?, ?, ?)";
        String update_sql = "update db_tables set ctime=?, tcomment=? where ids=?";
        String view_sql = "select ids from db_tables where tname=? and sche=?";
        List<Object[]> insert_param = new LinkedList<>();
        List<Object[]> update_param = new LinkedList<>();
        for (Tables tables : table_data) {
            System.out.print("正在");
            Object o = tablesDao.getOne(view_sql, tables.getTname(), tables.getSche()); // 获取的是主键
            if (o == null) {
                Object[] inserts = {tables.getSche(), tables.getTname(), tables.getCtime(),
                        tables.getTcomment()};
                insert_param.add(inserts);
                System.out.print("<添加>");
            } else {
                Object[] updates = {tables.getCtime(), tables.getTcomment(), o};
                update_param.add(updates);
                System.out.print("<更新>");
            }
            System.out.println(tables.getTname());
        }
        int len1 = 0;
        if (insert_param.size() > 0) {
            len1 = tablesDao.updateBatch(insert_sql, insert_param).length;
        }
        int len2 = 0;
        if (update_param.size() > 0) {
            len2 = tablesDao.updateBatch(update_sql, update_param).length;
        }
        return len1 + len2;
    }

    /**
     * 删除指定表信息
     *
     * @param ids
     * @return
     */
    public int deleteTable(String ids) {
        String sql = "delete from db_tables where ids=?";
        int result = 0;
        try {
            result = tablesDao.update(sql, ids);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    /**
     * 清空表属性信息表
     */
    public void delTables() {
        String sql = "delete from db_tables";
        try {
            tablesDao.update(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 查询指定主键表属性信息
     *
     * @param ids 主键
     * @return
     * @throws Exception
     */
    public Tables selectTableById(String ids) throws Exception {
        return tablesDao.queryOne("select * from db_tables where ids=?", ids);
    }

    /**
     * 更新指定表
     *
     * @param tables
     * @return
     * @throws Exception
     */
    public int updateTableInfo(Tables tables) throws Exception {
        String sql = "update db_tables set profunc=?,related=?,note=? where ids=?";
        return tablesDao.update(sql, tables.getProfunc(), tables.getRelated(), tables.getNote(), tables.getIds());
    }

    public SourcedocDao getSourcedocDao() {
        return sourcedocDao;
    }

    public void setSourcedocDao(SourcedocDao sourcedocDao) {
        this.sourcedocDao = sourcedocDao;
    }
}
