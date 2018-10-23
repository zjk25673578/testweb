package com.haner.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.haner.model.DBCommons;
import com.haner.model.DBConnection;
import com.haner.service.DBCommonsService;
import com.haner.util.DBHelper;
import com.haner.util.JsonUtil;
import com.haner.util.MvcUtil;

/**
 * 登录目标数据库
 * 同时连接存储数据库(存储数据库信息从com.haner.util.DBConstant中获取)
 */
@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        MvcUtil<DBConnection> mvc = new MvcUtil<>(request, response);
        DBConnection docDb = new DBConnection(); // 获取需要生成文档的数据库, 用于填充表单
        List<DBCommons> list = null;
        try {
            mvc.getEntity(docDb);
            Connection conn = DBHelper.getConnection();
            if (conn == null) {
                mvc.forward("page/login", JsonUtil.makeJson("msg", "存储数据库未能连接..."));
                return;
            }
            DBCommonsService service = new DBCommonsService(conn);
            list = service.selectCommonsDBs();
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.setAttribute("dbConnection", docDb);
        request.setAttribute("list", list);
        mvc.forward("page/login");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
