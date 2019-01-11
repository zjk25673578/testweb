package com.haner.test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import com.haner.dao.SourcedocDao;
import com.haner.model.Columns;
import com.haner.model.DBConnection;
import com.haner.util.DBConstant;

public class TestDemo {
    public static void main(String[] args) {

    }
    public static void main111(String[] args) {
        WordTest wt = new WordTest();
        // wt.createWord();
    }
    public static void main2222(String[] args) {
        DBConnection dbConnection = new DBConnection();
        dbConnection.setUsername("root");
        dbConnection.setDbtype(DBConstant.MYSQL);
        dbConnection.setAddress("localhost");
        try {
            Connection connection = dbConnection.getConnection();

            String sql = "insert into appuser (uname, pword, rname, hiredate, status) values (?, ?, ?, ?, ?)";
            String sql_update = "update appuser set uname=?, pword=? where ids=?";
            PreparedStatement ps1 = connection.prepareStatement(sql);
            PreparedStatement ps2 = connection.prepareStatement(sql_update);
            for (int i = 0; i < 10; i++) {
                if (i < 6) {
                    ps1.setString(1, "newaccount");
                    ps1.setString(2, "abcdef");
                    ps1.setString(3, "新的账号");
                    ps1.setTimestamp(4, new Timestamp(new Date().getTime()));
                    ps1.setInt(5, 1);
                    ps1.addBatch();
                } else {
                    ps2.setString(1, "xiaoming");
                    ps2.setString(2, "222222");
                    ps2.setInt(3, i);
                    ps2.addBatch();
                }
            }
            int[] arr = ps1.executeBatch();
            int[] arr2 = ps2.executeBatch();
            System.out.println(Arrays.toString(arr));
            System.out.println(Arrays.toString(arr2));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
