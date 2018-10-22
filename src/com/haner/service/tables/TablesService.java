package com.haner.service.tables;

import com.haner.dao.SourcedocDao;
import com.haner.dao.tables.TablesDao;
import com.haner.model.Tables;

import java.sql.Connection;
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
     * @param keywords 表名模糊查询条件
     * @return
     * @throws Exception
     */
    public List<Tables> tables(String keywords) throws Exception {
        String sqlPlus = "";
        if (keywords != null) {
            sqlPlus = "and tname like '%" + keywords + "%'";
        }
        String sql = "select * from db_tables where sche=? " + sqlPlus + " order by tname";
        return tablesDao.query(sql, sourcedocDao.getDbConnection().getDocDbname());
    }

    /**
     * 刷新整个表的信息
     * 通过表名做匹配
     *      可以匹配到做修改操作
     *      匹配不到做更新操作
     * @return
     * @throws Exception
     */
    public int refreshTables() throws Exception {
        List<Tables> table_data = sourcedocDao.tableDatas();
        String insert_sql = "insert into db_tables (sche, tname, ctime, tcomment) values (?, ?, ?, ?)";
        String update_sql = "update db_tables set ctime=?, tcomment=? where ids=?";
        String view_sql = "select ids from db_tables where tname=? and sche=?";
        int r = 0;
        for (int i = 0; i < table_data.size(); i++) {
            Tables tables = table_data.get(i);
            System.out.println("正在操作" + tables.getTname() + "表");
            Object o = tablesDao.getOne(view_sql, tables.getTname(), tables.getSche()); // 获取的是主键
            if (o == null) {
                r += tablesDao.update(insert_sql, tables.getSche(), tables.getTname(), tables.getCtime(),
                        tables.getTcomment());
            } else {
                r += tablesDao.update(update_sql, tables.getCtime(), tables.getTcomment(), o);
            }
        }
        return r;
    }

    /**
     * 删除指定表信息
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
     * @param ids 主键
     * @return
     * @throws Exception
     */
    public Tables selectTableById(String ids) throws Exception {
        return tablesDao.queryOne("select * from db_tables where ids=?", ids);
    }

    /**
     * 更新指定表
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