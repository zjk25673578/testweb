package com.haner.servlet.columns;

import com.haner.service.columns.ColumnsService;
import com.haner.util.MvcUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;

/**
 * 清空列信息表
 */
@WebServlet("/DelColumn")
public class DelColumnServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MvcUtil mvc = new MvcUtil(request, response);
        Connection connection = mvc.getLocalConnection(); // 获取数据存储对象
        ColumnsService columnsService = new ColumnsService(connection);

        columnsService.delCols();

        mvc.redirect("TableList");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
