package com.haner.util;

import com.haner.model.DBConnection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.sql.Connection;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.Set;

/**
 * 此类用于以Model的形式直接接收前台传递的参数<br>
 * <b>使用此类需要注意:</b><br>
 * 前台的input控件的name值必须与实体类中的字段名一致<br>
 * 实体类中的setter, getter方法必须严格按照规范实现
 *
 * @param <T> 用于返回的实体类的实际类型
 * @author zhaojk
 * @version 3.0
 */
public class MvcUtil<T> {

    /**
     * 如果实体类中有Date类型的参数用于格式化日期
     */
    private String dateFormat = "yyyy-MM-dd";

    /**
     * 页面请求对象
     */
    private HttpServletRequest request;

    /**
     * 页面相应对象
     */
    private HttpServletResponse response;

    /**
     * 用于重定向和转发的
     *
     * @param request
     * @param response
     */
    public MvcUtil(HttpServletRequest request, HttpServletResponse response) {
        this.request = request;
        this.response = response;
        try {
            request.setCharacterEncoding("utf-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }

    /**
     * 弃用原因: 尽量使用setter方法设置此属性
     * @param dateFormat 可传入一个日期格式化的类型<br>
     *                   如果和前台传入的参数格式不一致则会报错<br>
     *                   实体类中所有的日期类型都会按照此格式解析<br>
     * @deprecated
     */
    public MvcUtil(String dateFormat) {
        this.dateFormat = dateFormat;
    }

    /**
     * 转发
     *
     * @param page
     * @throws ServletException
     * @throws IOException
     */
    public void forward(String page) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/" + page + ".jsp").forward(request, response);
    }

    /**
     * 带Model的转发
     *
     * @param page
     * @param map
     * @throws ServletException
     * @throws IOException
     */
    public void forward(String page, Map<String, Object> map) throws ServletException, IOException {
        Set<String> set = map.keySet();
        for (String key : set) {
            Object value = map.get(key);
            request.setAttribute(key, value);
        }
        forward(page);
    }

    /**
     * 重定向
     *
     * @param page
     * @throws ServletException
     * @throws IOException
     */
    public void redirect(String page) throws IOException {
        response.sendRedirect(page);
    }

    /**
     * 获取实体类的方法<br>
     * 将需要封装的实体类对象与request对象传入<br>
     * 将数据绑定在传入的实体类对象中
     *
     * @param o 需要绑定数据库的实体类对象
     * @return 返回传入的实体类
     * @throws ClassNotFoundException
     * @throws InvocationTargetException
     * @throws IllegalArgumentException
     * @throws IllegalAccessException
     * @throws ParseException
     */
    public void getEntity(T o) throws Exception {
        // 通过传入的类的全限定名来反射出一个实体类对象
        Class<?> clazz = o.getClass();

        // 获取类中所有的字段
        Field[] fields = clazz.getDeclaredFields();

        // 循环遍历字段
        for (Field field : fields) {
            // 获取实体类中字段名
            String fieldName = field.getName();

            Class<?> cla = field.getType();
            // 获取前台传入的值
            String requestValue = request.getParameter(fieldName);
            if (requestValue == null) {
                continue;
            }
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

            // 通过参数类型判断自动填充到实体类中
            if (cla == String.class) {
                m.invoke(o, requestValue);
            }
            if (cla == Float.class) {
                m.invoke(o, Float.parseFloat(requestValue));
            }
            if (cla == Double.class) {
                m.invoke(o, Double.parseDouble(requestValue));
            }
            if (cla == Byte.class) {
                m.invoke(o, Byte.parseByte(requestValue));
            }
            if (cla == Short.class) {
                m.invoke(o, Short.parseShort(requestValue));
            }
            if (cla == Integer.class) {
                m.invoke(o, Integer.parseInt(requestValue));
            }
            if (cla == Long.class) {
                m.invoke(o, Long.parseLong(requestValue));
            }
            if (cla == Date.class) {
                SimpleDateFormat sdf = new SimpleDateFormat(dateFormat);
                Date date = sdf.parse(requestValue);
                m.invoke(o, date);
            }
        }
    }

    /**
     * 获取本地连接
     *
     * @return
     */
    public Connection getLocalConnection() {
        return (Connection) request.getSession().getAttribute("localdb");
    }

    /**
     * 获取目标数据库连接
     *
     * @return
     */
    public DBConnection getDocConnection() {
        return (DBConnection) request.getSession().getAttribute("docConn");
    }

    /**
     * 获取请求中的参数
     * @param paramName 前台input控件的name的值
     * @return
     */
    public String get(String paramName) {
        return request.getParameter(paramName);
    }

    public HttpServletRequest getRequest() {
        return request;
    }

    public void setRequest(HttpServletRequest request) {
        this.request = request;
    }

    public HttpServletResponse getResponse() {
        return response;
    }

    public void setResponse(HttpServletResponse response) {
        this.response = response;
    }

    public String getDateFormat() {
        return dateFormat;
    }

    public void setDateFormat(String dateFormat) {
        this.dateFormat = dateFormat;
    }
}
