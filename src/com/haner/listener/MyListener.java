package com.haner.listener;

import com.haner.util.DBHelper;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import java.sql.Connection;

/**
 * web内置对象的监听器
 */
@WebListener
public class MyListener implements ServletContextListener {

    public MyListener() {
    }

    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("生成全局对象");
    }

    /**
     * 用于监听application对象
     * 释放java.sql.Connection的资源
     *
     * @param sce
     */
    public void contextDestroyed(ServletContextEvent sce) {
        ServletContext application = sce.getServletContext();
        Connection docConn = (Connection) application.getAttribute("docConn");
        Connection localdb = (Connection) application.getAttribute("localdb");
        try {
            System.out.println("正在关闭Connection连接");
            DBHelper.destroy(docConn, null, null);
            DBHelper.destroy(localdb, null, null);
            if (docConn.isClosed()) {
                String schema = docConn.getSchema();
                System.out.println(schema + "连接已经关闭 !");
            }
            if (localdb.isClosed()) {
                String schema = localdb.getSchema();
                System.out.println(schema + "连接已经关闭 !");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
