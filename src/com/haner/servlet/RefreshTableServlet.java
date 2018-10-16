package com.haner.servlet;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.haner.dao.SourcedocDao;
import com.haner.service.TablesService;
import com.haner.util.DBConnection;
import com.haner.util.MvcUtil;

@WebServlet("/RefreshTable")
public class RefreshTableServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MvcUtil mvc = new MvcUtil(request, response);
        DBConnection dbConnection = mvc.getDocConnection();
        Connection connection = mvc.getLocalConnection();
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
