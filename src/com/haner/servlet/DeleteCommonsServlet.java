package com.haner.servlet;

import com.haner.service.DBCommonsSrvice;
import com.haner.util.DBHelper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;

import static com.haner.util.DBConstant.*;

@WebServlet("/DeleteCommons")
public class DeleteCommonsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ids = request.getParameter("ids");
        int i = 0;
        try {
            Connection conn = DBHelper.getConnection(DRIVERCLASSNAME_MYSQL, URL_MYSQL, USERNAME, PASSWORD);
            DBCommonsSrvice service = new DBCommonsSrvice(conn);
            i = service.deleteCommonsDBs(ids);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (i <= 0) {
            request.setAttribute("errormsg", "删除失败");
        } else {
            request.getRequestDispatcher("?WEB-INF/page/error.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
