package com.haner.servlet.tables;

import com.haner.dao.SourcedocDao;
import com.haner.model.Tables;
import com.haner.service.columns.ColumnsService;
import com.haner.service.tables.TablesService;
import com.haner.test.WordTest;
import com.haner.util.MvcUtil;
import com.haner.util.WordsUtil;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;
import java.sql.Connection;
import java.util.HashMap;
import java.util.List;
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
        try {
//            Map<String, Object> dataMap = tablesService.exportDataBaseDoc(ids);
            Map<String, Object> dataMap = new HashMap<>();
            WordTest.getData2(dataMap);
            // WordsUtil.createDbDoc(dataMap);
        } catch (Exception e) {
            e.printStackTrace();
        }
/*        String realPath = request.getServletContext().getRealPath("/files");

        File f = new File(realPath + "/template.ftl");
        System.out.println(f.getAbsolutePath());
        if (f.exists()) {
            FileInputStream fis = new FileInputStream(f);
            String filename = URLEncoder.encode(f.getName(), "utf-8"); //解决中文文件名下载后乱码的问题
            byte[] b = new byte[fis.available()];
            fis.read(b);
            response.setCharacterEncoding("utf-8");
            response.setHeader("Content-Disposition", "attachment; filename=a.docx");
            //获取响应报文输出流对象
            ServletOutputStream out = response.getOutputStream();
            //输出
            out.write(b);
            out.flush();
            out.close();
        }*/
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
