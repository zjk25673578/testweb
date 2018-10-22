package com.haner.servlet.columns;

import com.haner.service.columns.ColumnsService;
import com.haner.util.JsonUtil;
import com.haner.util.MvcUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;

/**
 * 删除指定列信息
 */
@WebServlet("/DeleteColumn")
public class DeleteColumnServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ids = request.getParameter("ids");
        String tname = request.getParameter("tname");
        MvcUtil mvc = new MvcUtil(request, response);
        Connection connection = mvc.getLocalConnection(); // 获取数据存储对象
        ColumnsService columnsService = new ColumnsService(connection);
        int result = columnsService.deleteColumn(ids);
        if (result > 0) {
            mvc.redirect("ColumnList?tname=" + tname);
        } else {
            try {
                mvc.forward("page/error", JsonUtil.makeJson("errormsg", "删除失败"));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
