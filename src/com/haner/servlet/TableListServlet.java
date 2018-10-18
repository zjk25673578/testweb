package com.haner.servlet;

import com.haner.model.Tables;
import com.haner.service.TablesService;
import com.haner.util.MvcUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/TableList")
public class TableListServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MvcUtil mvc = new MvcUtil(request, response);
        // 本地需要存储数据的数据源
        Connection localdb = mvc.getLocalConnection();
        String keywords = request.getParameter("keywords");
        try {
            if (localdb != null && !localdb.isClosed()) {

                TablesService tablesService = new TablesService(localdb);

                List<Tables> list = null;
                try {
                    list = tablesService.tables(keywords);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                request.setAttribute("keywords", keywords);
                request.setAttribute("list", list);
                mvc.forward("page/tablelist");
            } else {
                mvc.redirect("Login");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
