package com.haner.dao;

import com.haner.model.Appuser;
import com.haner.util.BaseDao;
import com.haner.util.DBHelper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDao extends BaseDao<Appuser> {
    public UserDao() {
        this.e = new Appuser();
        this.clazz = e.getClass();
    }

    public List<Appuser> selectUsers() {
        String sql = "select * from appuser";
        Connection conn = DBHelper.getConnectionForMysql();
        List<Appuser> list = null;
        try {
            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
            list = new ArrayList<>();
            while(resultSet.next()){
                Appuser user = new Appuser();
                user.setIds(resultSet.getInt("ids"));
                user.setUsername(resultSet.getString("username"));
                user.setRealname(resultSet.getString("realname"));
                user.setCreatetime(resultSet.getTimestamp("createtime"));
                user.setStatus(resultSet.getByte("status"));
                list.add(user);
            }
        } catch (SQLException e1) {
            e1.printStackTrace();
        }
        return list;
    }

}
