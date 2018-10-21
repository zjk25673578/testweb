package com.haner.servlet;

import com.haner.service.DBCommonsSrvice;
import com.haner.util.DBConnection;
import com.haner.util.DBHelper;
import com.haner.util.MvcUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;

import static com.haner.util.DBConstant.*;

@WebServlet("/Main")
public class MainServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        MvcUtil<DBConnection> mvc = new MvcUtil<>(request, response);
        DBConnection docDb = new DBConnection(); // 获取需要生成文档的数据库
        Connection conn;
        String issave = request.getParameter("issave");
        try {
            mvc.getEntity(docDb);
            request.setAttribute("dbConnection", docDb);
            conn = docDb.getConnection();
            if (conn != null) {
                request.getServletContext().setAttribute("docConn", docDb);
                // 连接本地数据库
                Connection localdb = DBHelper.getConnection(DRIVERCLASSNAME_MYSQL, URL_MYSQL,
                        USERNAME, PASSWORD);
                if (issave != null) {
                    DBCommonsSrvice dbCommons = new DBCommonsSrvice(localdb);
                    dbCommons.saveCommonsDB(docDb);
                }
                request.getServletContext().setAttribute("localdb", localdb);
                response.sendRedirect("TableList");
            } else {
                request.setAttribute("msg", "目标数据库连接出了点问题");
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
