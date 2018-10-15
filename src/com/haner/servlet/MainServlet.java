package com.haner.servlet;

import com.haner.dao.UserDao;
import com.haner.model.Appuser;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/Main")
public class MainServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDao userDao = new UserDao();
//        List<Appuser> list = userDao.selectUsers();
        List<Appuser> list = null;
        try {
            list = userDao.query("select * from appuser");
        } catch (Exception e) {
            e.printStackTrace();
        }


        request.setAttribute("userList", list);
        request.getRequestDispatcher("/WEB-INF/page/main.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
