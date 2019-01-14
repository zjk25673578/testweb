package com.haner.listener;

import java.sql.Connection;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.*;

import com.haner.util.DBHelper;

/**
 * web内置对象的监听器
 */
@WebListener
public class MyListener implements HttpSessionListener, HttpSessionAttributeListener {

    public MyListener() {
    }

    /**
     * 监听session对象创建
     *
     * @param se
     */
    @Override
    public void sessionCreated(HttpSessionEvent se) {
        HttpSession session = se.getSession();
        System.out.println("创建Session: " + session.getId());
    }

    /**
     * 监听session对象销毁
     * 释放java.sql.Connection的资源
     *
     * @param se
     */
    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        HttpSession session = se.getSession();
        Connection docConn = (Connection) session.getAttribute("docConn");
        Connection localdb = (Connection) session.getAttribute("localdb");
        try {
            System.out.println("正在关闭Connection连接");
            DBHelper.destroy(docConn, null, null);
            DBHelper.destroy(localdb, null, null);
            if (docConn != null && docConn.isClosed()) {
                String schema = docConn.getSchema();
                System.out.println(schema + "连接已经关闭 !");
            }
            if (localdb != null && localdb.isClosed()) {
                String schema = localdb.getSchema();
                System.out.println(schema + "连接已经关闭 !");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    /**
     * session对象属性添加事件的监听
     * @param se
     */
    @Override
    public void attributeAdded(HttpSessionBindingEvent se) {
        HttpSession session = se.getSession();
        String attrName = se.getName();
        System.out.println("Session:" + session.getId() + "被添加" + attrName + "属性");
    }

    @Override
    public void attributeRemoved(HttpSessionBindingEvent se) {

    }

    @Override
    public void attributeReplaced(HttpSessionBindingEvent se) {

    }
}
