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
import java.sql.Connection;

@WebServlet("/UpdateTableInfo")
public class UpdateTableInfoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MvcUtil<Tables> mvc = new MvcUtil<>(request, response);
        Tables tables = new Tables();
        try {
            mvc.getEntity(tables);
        } catch (Exception e) {
            e.printStackTrace();
        }

        Connection localdb = mvc.getLocalConnection();
        TablesService tablesService = new TablesService(localdb);
        int r = 0;
        try {
            r = tablesService.updateTableInfo(tables);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (r > 0) {
            mvc.redirect("TableList");
        } else {
            request.setAttribute("errormsg", "更新失败");
            mvc.forward("page/error");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
