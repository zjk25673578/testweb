package com.haner.servlet.tables;

import com.haner.model.Tables;
import com.haner.service.tables.TablesService;
import com.haner.util.MvcUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 跳转至表的更新页面
 */
@WebServlet("/UpdateTable")
public class UpdateTableServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MvcUtil mvc = new MvcUtil(request, response);
        String ids = request.getParameter("ids");
        TablesService tablesService = new TablesService(mvc.getLocalConnection());
        Tables tables = null;
        try {
            tables = tablesService.selectTableById(ids);
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.setAttribute("tab", tables);
        mvc.forward("page/table");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
