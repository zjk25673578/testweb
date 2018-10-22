package com.haner.servlet.tables;

import com.haner.dao.SourcedocDao;
import com.haner.service.tables.TablesService;
import com.haner.model.DBConnection;
import com.haner.util.MvcUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;

/**
 * 刷新表属性信息
 */
@WebServlet("/RefreshTable")
public class RefreshTableServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MvcUtil mvc = new MvcUtil(request, response);
        DBConnection dbConnection = mvc.getDocConnection(); // 获取数据库文档连接对象
        Connection connection = mvc.getLocalConnection(); // 获取数据存储对象
        SourcedocDao sourcedocDao = new SourcedocDao(dbConnection);
        TablesService tablesService = new TablesService(connection);
        tablesService.setSourcedocDao(sourcedocDao);

        try {
            int result = tablesService.refreshTables();
            System.err.println("更新了" + result + "条数据");
        } catch (Exception e) {
            e.printStackTrace();
        }
        mvc.redirect("TableList");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
