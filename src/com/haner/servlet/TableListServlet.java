package com.haner.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.haner.model.Tables;
import com.haner.service.TablesService;
import com.haner.util.MvcUtil;

@WebServlet("/TableList")
public class TableListServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MvcUtil mvc = new MvcUtil(request, response);
        // 本地需要存储数据的数据源
        Connection localdb = mvc.getLocalConnection();
        if (localdb != null) {

            TablesService tablesService = new TablesService(localdb);

            List<Tables> list = null;
            try {
                list = tablesService.tables();
            } catch (Exception e) {
                e.printStackTrace();
            }
            request.setAttribute("list", list);
            mvc.forward("page/tablelist");
        } else {
            mvc.redirect("Login");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
