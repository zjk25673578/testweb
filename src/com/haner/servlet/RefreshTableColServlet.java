package com.haner.servlet;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.haner.dao.SourcedocDao;
import com.haner.service.ColumnsService;
import com.haner.util.DBConnection;
import com.haner.util.MvcUtil;

@WebServlet("/RefreshTableCol")
public class RefreshTableColServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MvcUtil mvc = new MvcUtil(request, response);
        DBConnection dbConnection = mvc.getDocConnection();
        Connection connection = mvc.getLocalConnection();
        SourcedocDao sourcedocDao = new SourcedocDao(dbConnection);
        ColumnsService columnsService = new ColumnsService(connection);
        columnsService.setSourcedocDao(sourcedocDao);

        String tname = request.getParameter("tname");

        try {
            columnsService.refreshColumns(tname, dbConnection.getDocDbname());
        } catch (Exception e) {
            e.printStackTrace();
        }

        mvc.redirect("TableDetail?tname=" + tname);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
