package com.haner.servlet;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.haner.util.DBConnection;
import com.haner.util.DBConstant;
import com.haner.util.MvcUtil;

@WebServlet("/Main")
public class MainServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        MvcUtil<DBConnection> mvc = new MvcUtil<>();
        DBConnection docDb = new DBConnection(); // 获取需要生成文档的数据库
        Connection conn;
        try {
            mvc.getEntity(request, docDb);
            request.setAttribute("dbConnection", docDb);
            conn = docDb.getConnection();
            if (conn != null) {
                request.getServletContext().setAttribute("docConn", docDb);
                // request.setAttribute("msg", "目标数据库已经连接, 正在检索...");
                // 连接本地数据库
                DBConnection db = new DBConnection();
                db.setUsername("root");
                db.setDbtype(DBConstant.MYSQL);
                db.setAddress("127.0.0.1");
                Connection localdb = db.getConnection();
                request.getServletContext().setAttribute("localdb", localdb);
                response.sendRedirect("TableList");
            } else {
                request.setAttribute("msg", "数据库连接出了点问题");
                request.getRequestDispatcher("/WEB-INF/page/main.jsp").forward(request, response);
            }
        } catch (Exception e) {
            request.setAttribute("msg", e.getMessage());
            request.getRequestDispatcher("/WEB-INF/page/login.jsp").forward(request, response);
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
