package com.haner.servlet;

import com.haner.service.DBCommonsService;
import com.haner.model.DBConnection;
import com.haner.util.DBHelper;
import com.haner.util.MvcUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;

/**
 * 判断数据库是否连接成功
 * 成功则重定向至表属性信息
 * 失败则跳转至错误页面
 * 同时连接存储数据库(存储数据库信息从com.haner.util.DBConstant中获取)
 */
@WebServlet("/Main")
public class MainServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        MvcUtil<DBConnection> mvc = new MvcUtil<>(request, response);
        DBConnection docDb = new DBConnection(); // 获取需要生成文档的数据库
        Connection conn;
        String issave = request.getParameter("issave"); // 是否将当前连接保存为常用连接
        try {
            mvc.getEntity(docDb);
            request.setAttribute("dbConnection", docDb);
            conn = docDb.getConnection();
            if (conn != null) { // 如果文档数据库连接不成功
                request.getSession().setAttribute("docConn", docDb);
                // 连接本地数据库
                Connection localdb = DBHelper.getConnection();
                if (issave != null) { // 是否保存为常用数据库
                    DBCommonsService dbCommons = new DBCommonsService(localdb); // 操作数据库的连接
                    dbCommons.saveCommonsDB(docDb); // 需要保存的数据库连接(文档数据库)
                }
                request.getSession().setAttribute("localdb", localdb);
                mvc.redirect("TableList");
            } else {
                request.setAttribute("msg", "目标数据库连接出了点问题");
                mvc.forward("page/main");
            }
        } catch (Exception e) {
            request.setAttribute("msg", "后台异常: " + e.getClass());
            mvc.forward("page/login");
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
