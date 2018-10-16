package com.haner.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.haner.dao.SourcedocDao;
import com.haner.model.Columns;
import com.haner.service.ColumnsService;
import com.haner.service.TablesService;
import com.haner.util.DBConnection;
import com.haner.util.MvcUtil;

@WebServlet("/TableDetail")
public class TableDetailServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MvcUtil mvc = new MvcUtil(request, response);
        DBConnection dbConnection = mvc.getDocConnection();
        Connection connection = mvc.getLocalConnection();
        SourcedocDao sourcedocDao = new SourcedocDao(dbConnection);
        ColumnsService columnsService = new ColumnsService(connection);
        columnsService.setSourcedocDao(sourcedocDao);
        String tname = request.getParameter("tname");

        List<Columns> columnsList = null;
        try {
            columnsList = columnsService.columns(tname);
        } catch (Exception e) {
            e.printStackTrace();
        }

        request.setAttribute("columnsList", columnsList);
        request.setAttribute("tname", tname);
        mvc.forward("page/tabledetail");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
