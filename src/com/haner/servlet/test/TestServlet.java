package com.haner.servlet.test;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Enumeration;

@WebServlet("/TestServlet")
public class TestServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String key = request.getParameter("key");
        System.out.println(key);
        // request.setAttribute("key", key);
        // request.getRequestDispatcher("success.jsp").forward(request, response);
        Enumeration<String> enums = request.getParameterNames();
        while(enums.hasMoreElements()) {
            System.out.println(enums.nextElement());
        }
        String uri = request.getRequestURI();
        System.out.println(uri);
        response.getWriter().append("{\"test\":\"").append(key).append("\"}");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
