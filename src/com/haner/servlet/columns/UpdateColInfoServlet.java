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
import java.sql.Connection;

/**
 * 更新列属性的关联和备注
 */
@WebServlet("/UpdateColInfo")
public class UpdateColInfoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MvcUtil<Columns> mvc = new MvcUtil<>(request, response);
        Columns columns = new Columns();
        int r;
        Connection localdb = mvc.getLocalConnection(); // 获取数据存储对象
        ColumnsService columnsService = new ColumnsService(localdb);
        try {
            mvc.getEntity(columns);
            r = columnsService.updateColInfo(columns);
            if (r > 0) {
                columns = columnsService.selectColumnsById(columns.getIds() + "");
                mvc.redirect("ColumnList?tname=" + columns.getTname());
            } else {
                request.setAttribute("errormsg", "更新失败");
                mvc.forward("page/error");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
