package com.haner.servlet;

import com.haner.dao.SourcedocDao;
import com.haner.model.Columns;
import com.haner.service.ColumnsService;
import com.haner.util.DBConnection;
import com.haner.util.MvcUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/ColumnList")
public class ColumnListServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MvcUtil mvc = new MvcUtil(request, response);
        DBConnection dbConnection = mvc.getDocConnection();
        Connection connection = mvc.getLocalConnection();
        try {
            if (connection == null || connection.isClosed()) {
                mvc.redirect("Login");
            } else {
                SourcedocDao sourcedocDao = new SourcedocDao(dbConnection);
                ColumnsService columnsService = new ColumnsService(connection);
                columnsService.setSourcedocDao(sourcedocDao);
                String tname = request.getParameter("tname");

                List<Columns> columnsList = null;
                try {
                    columnsList = columnsService.columns(tname, dbConnection.getDocDbname());
                } catch (Exception e) {
                    e.printStackTrace();
                }

                request.setAttribute("columnsList", columnsList);
                request.setAttribute("tname", tname);
                mvc.forward("page/columnlist");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
