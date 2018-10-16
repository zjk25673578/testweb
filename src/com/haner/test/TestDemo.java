package com.haner.test;

import java.util.List;

import com.haner.dao.SourcedocDao;
import com.haner.model.Columns;
import com.haner.util.DBConnection;
import com.haner.util.DBConstant;

public class TestDemo {
    public static void main(String[] args) {
        DBConnection dbConnection = new DBConnection();
        dbConnection.setUsername("root");
        dbConnection.setDbtype(DBConstant.MYSQL);
        dbConnection.setAddress("localhost");
        dbConnection.setDocDbname("stms_bak");
        try {
            SourcedocDao sourcedocDao = new SourcedocDao(dbConnection);
/*            List<Tables> list = sourcedocDao.tableDatas();
            for (int i = 0; i < list.size(); i++) {
                System.out.println(list.get(i));
            }*/

            List<Columns> list = sourcedocDao.columnDatas("st_user");
            for (int i = 0; i < list.size(); i++) {
                System.out.println(list.get(i));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
