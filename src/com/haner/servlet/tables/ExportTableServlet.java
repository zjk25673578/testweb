package com.haner.servlet.tables;

import com.haner.util.MvcUtil;

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

/**
 * 获取文档数据库的表
 */
@WebServlet("/ExportTable")
public class ExportTableServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MvcUtil mvc = new MvcUtil(request, response);
        // 本地需要存储数据的数据源
        Connection localdb = mvc.getLocalConnection(); // 获取数据存储对象
        String ids = mvc.get("ids"); // 查询条件的关键字

        String realPath = request.getServletContext().getRealPath("/files");

        File f = new File(realPath + "/aaaa.xlsx");
        System.out.println(f.getAbsolutePath());
        if (f.exists()) {
            FileInputStream fis = new FileInputStream(f);
            String filename = URLEncoder.encode(f.getName(), "utf-8"); //解决中文文件名下载后乱码的问题
            byte[] b = new byte[fis.available()];
            fis.read(b);
            response.setCharacterEncoding("utf-8");
            response.setHeader("Content-Disposition", "attachment; filename=" + filename + "");
            //获取响应报文输出流对象
            ServletOutputStream out = response.getOutputStream();
            //输出
            out.write(b);
            out.flush();
            out.close();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
