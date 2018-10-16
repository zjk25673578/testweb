package com.haner.util;

import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.sql.Connection;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 此类用于以Model的形式直接接收前台传递的参数<br>
 * <b>使用此类需要注意:</b><br>
 * 前台的input控件的name值必须与实体类中的字段名一致<br>
 * 实体类中的setter, getter方法必须严格按照规范实现
 *
 * @param <T> 用于返回的实体类的实际类型
 * @author zhaojk
 * @version 2.0
 */
public class MvcUtil<T> {

    /**
     * 如果实体类中有Date类型的参数用于格式化日期
     */
    private String dateFormat;

    private HttpServletRequest request;
    private HttpServletResponse response;

    /**
     * 构造方法用于构建此类的对象<br>
     * 调用此实体类的时候日期类型格式默认为 yyyy-MM-dd<br>
     * 实体类中所有的日期类型都会按照此格式解析<br>
     */
    public MvcUtil() {
        this.dateFormat = "yyyy-MM-dd";
    }

    /**
     * 用于重定向和转发的
     * @param request
     * @param response
     */
    public MvcUtil(HttpServletRequest request, HttpServletResponse response) {
        this.request = request;
        this.response = response;
    }

    /**
     * @param dateFormat<br> 可传入一个日期格式化的类型<br>
     *                       如果和前台传入的参数格式不一致则会报错<br>
     *                       实体类中所有的日期类型都会按照此格式解析<br>
     */
    public MvcUtil(String dateFormat) {
        this.dateFormat = dateFormat;
    }

    /**
     * 转发
     * @param page
     * @throws ServletException
     * @throws IOException
     */
    public void forward(String page) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/" + page + ".jsp").forward(request, response);
    }

    /**
     * 重定向
     * @param page
     * @throws ServletException
     * @throws IOException
     */
    public void redirect(String page) throws ServletException, IOException {
        response.sendRedirect(page);
    }

    /**
     * 获取实体类的方法<br>
     * 将需要封装的实体类对象与request对象传入<br>
     * 将数据绑定在传入的实体类对象中
     *
     * @param request web容器中的HttpServletRequest对象
     * @param o       需要绑定数据库的实体类对象
     * @return 返回传入的实体类
     * @throws ClassNotFoundException
     * @throws InvocationTargetException
     * @throws IllegalArgumentException
     * @throws IllegalAccessException
     * @throws ParseException
     */
    public T getEntity(HttpServletRequest request, T o) throws ClassNotFoundException, IllegalAccessException,
            IllegalArgumentException, InvocationTargetException, ParseException {
        // 通过传入的类的全限定名来反射出一个实体类对象
        Class<?> clazz = Class.forName(o.getClass().getName());

        // 获取类中所有的字段
        Field[] fields = clazz.getDeclaredFields();

        // 将前台所有的input控件中的name值获取出来
        Enumeration<String> enums = request.getParameterNames();

        // 将所有的值放到一个List里面
        List<String> enumsValueList = new ArrayList<String>();
        while (enums.hasMoreElements()) {
            enumsValueList.add(enums.nextElement());
        }

        // 循环遍历字段
        for (Field field : fields) {
            // 获取实体类中字段名
            String fieldName = field.getName();

            // 根据字段定义setter方法名
            String methodName = "set" + String.valueOf(fieldName.charAt(0)).toUpperCase() + fieldName.substring(1);

            // 获取此字段在实体类中的setter方法
            Method m;
            try {
                m = clazz.getMethod(methodName, field.getType());
            } catch (Exception e) {
                // e.printStackTrace();
                continue;
            }

            // 获取前台传入的值
            String requestValue = request.getParameter(fieldName);

            // 通过参数类型判断自动填充到实体类中
            if (field.getType().getName().contains("String")) {
                m.invoke(o, requestValue);
            }
            if (Number.class.isAssignableFrom(field.getType())) {
                if (field.getType().getName().contains("BigDecimal")) {
                    m.invoke(o, new BigDecimal(requestValue));
                } else if (field.getType().getName().contains("Float")) {
                    m.invoke(o, Float.parseFloat(requestValue));
                } else if (field.getType().getName().contains("Double")) {
                    m.invoke(o, Double.parseDouble(requestValue));
                } else if (field.getType().getName().contains("Byte")) {
                    m.invoke(o, Byte.parseByte(requestValue));
                } else if (field.getType().getName().contains("Short")) {
                    m.invoke(o, Short.parseShort(requestValue));
                } else if (field.getType().getName().contains("Integer")) {
                    m.invoke(o, Integer.parseInt(requestValue));
                } else {
                    m.invoke(o, Long.parseLong(requestValue));
                }
                if (field.getType().getName().contains("Integer")) {
                    Integer i = Integer.parseInt(requestValue);
                    m.invoke(o, i);
                }
            }
            if (field.getType().getName().contains("java.util.Date")) {
                SimpleDateFormat sdf = new SimpleDateFormat(dateFormat);
                Date date = sdf.parse(requestValue);
                m.invoke(o, date);
            }
        }
        return o;
    }

    /**
     * 获取本地连接
     * @return
     */
    public Connection getLocalConnection() {
        HttpSession session = request.getSession();
        Connection localdb = (Connection) session.getAttribute("localdb");
        return localdb;
    }

    /**
     * 获取本地连接
     * @return
     */
    public DBConnection getDocConnection() {
        HttpSession session = request.getSession();
        DBConnection docConn = (DBConnection) session.getAttribute("docConn");
        return docConn;
    }
}
