package com.haner.servlet;

import com.haner.model.DBCommons;
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
import java.util.List;

import static com.haner.util.DBConstant.*;

@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        MvcUtil<DBConnection> mvc = new MvcUtil<>(request, response);
        DBConnection docDb = new DBConnection(); // 获取需要生成文档的数据库
        try {
            mvc.getEntity(docDb);
        } catch (Exception e) {
            e.printStackTrace();
        }
        List<DBCommons> list = null;
        try {
            Connection conn = DBHelper.getConnection(DRIVERCLASSNAME_MYSQL, URL_MYSQL, USERNAME, PASSWORD);
            DBCommonsSrvice service = new DBCommonsSrvice(conn);
            list = service.selectCommonsDBs();
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.setAttribute("dbConnection",docDb);
        request.setAttribute("list",list);
        request.getRequestDispatcher("/WEB-INF/page/login.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
