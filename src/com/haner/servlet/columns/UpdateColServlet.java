package com.haner.servlet.columns;

import com.haner.model.Columns;
import com.haner.service.columns.ColumnsService;
import com.haner.util.MvcUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 跳转至更新列页面
 */
@WebServlet("/UpdateCol")
public class UpdateColServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MvcUtil mvc = new MvcUtil(request, response);
        String ids = request.getParameter("ids");
        ColumnsService columnsService = new ColumnsService(mvc.getLocalConnection());
        Columns columns = null;
        try {
            columns = columnsService.selectColumnsById(ids);
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.setAttribute("col", columns);
        mvc.forward("page/column");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
