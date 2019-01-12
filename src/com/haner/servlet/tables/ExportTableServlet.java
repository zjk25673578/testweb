package com.haner.servlet.tables;

import com.haner.dao.SourcedocDao;
import com.haner.service.columns.ColumnsService;
import com.haner.service.tables.TablesService;
import com.haner.util.FileNameUtil;
import com.haner.util.MvcUtil;
import com.haner.util.WordsUtil;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.sql.Connection;
import java.util.Map;

/**
 * 获取文档数据库的表
 */
@WebServlet("/ExportTable")
public class ExportTableServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MvcUtil mvc = new MvcUtil(request, response);
        SourcedocDao sourcedocDao = new SourcedocDao(mvc.getDocConnection());
        // 本地需要存储数据的数据源
        Connection localdb = mvc.getLocalConnection(); // 获取数据存储对象
        String ids = mvc.get("ids"); // 查询条件的关键字
        ColumnsService columnsService = new ColumnsService(localdb);
        columnsService.setSourcedocDao(sourcedocDao);
        TablesService tablesService = new TablesService(localdb, columnsService);
        tablesService.setSourcedocDao(sourcedocDao);
        byte[] bytes = null;
        try {
            Map<String, Object> dataMap = tablesService.exportData(ids);
            bytes = WordsUtil.createXml2Doc(dataMap);
        } catch (Exception e) {
            e.printStackTrace();
        }

        response.setCharacterEncoding("UTF-8");
        String outName = FileNameUtil.yearMonthDate() + '-' + sourcedocDao.getDbConnection().getDocDbname() + "数据库文档";
        String dbName = new String(outName.getBytes(StandardCharsets.UTF_8), StandardCharsets.ISO_8859_1);
        response.setHeader("Content-Disposition", "attachment; filename=" + dbName + ".doc");
        //获取响应报文输出流对象
        ServletOutputStream out = response.getOutputStream();
        if (bytes == null) {
            bytes = new byte[0];
        }
        //输出
        out.write(bytes);
        out.flush();
        out.close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
