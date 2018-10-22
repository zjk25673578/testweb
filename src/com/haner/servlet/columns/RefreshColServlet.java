package com.haner.servlet.columns;

import com.haner.dao.SourcedocDao;
import com.haner.service.columns.ColumnsService;
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
 * 刷新指定表名的列信息
 */
@WebServlet("/RefreshCol")
public class RefreshColServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MvcUtil mvc = new MvcUtil(request, response);
        DBConnection dbConnection = mvc.getDocConnection(); // 获取数据库文档连接对象
        Connection connection = mvc.getLocalConnection(); // 获取数据存储对象
        SourcedocDao sourcedocDao = new SourcedocDao(dbConnection);
        ColumnsService columnsService = new ColumnsService(connection);
        columnsService.setSourcedocDao(sourcedocDao);

        String tname = request.getParameter("tname");

        try {
            columnsService.refreshColumns(tname, dbConnection.getDocDbname());
        } catch (Exception e) {
            e.printStackTrace();
        }

        mvc.redirect("ColumnList?tname=" + tname);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
