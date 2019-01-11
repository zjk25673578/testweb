package com.haner.util;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.sql.*;
import java.util.*;
import java.util.Date;

/**
 * 数据库操作通用类<br>
 * 每一个操作数据库的类都应该继承此类并扩展<br>
 * 继承时必须给成员变量赋值, 举例:<br>
 * public class UserDao extends BaseDao&lt;AppUser&gt; {<br>
 * &nbsp;&nbsp;public UserDao() { <br>
 * &nbsp;&nbsp;&nbsp;this.e = new User(); <br>
 * &nbsp;&nbsp;&nbsp;this.clazz = e.getClass(); <br>
 * &nbsp;&nbsp;}<br>
 * }<br>
 * <br>
 * 此类用于统一增删改查的操作<br>
 * 在进行查询的时候需要注意<br>
 * 传入的实体类的成员变量标识符必须与数据库表中的字段名称相同, 字段的类型也必须对应<br>
 * 并且实体类的属性应严格按照 getter, setter 规范声明<br>
 * 目前只能处理字符串, 数字, 日期<br>
 * <p>
 * 数据库与实体类之间的对应<br>
 * Oracle数据库类型&lt;-----&gt;java类型<br>
 * varchar2&lt;-----&gt;java.lang.String<br>
 * number&lt;-----&gt;byte, short, int, long, float, double, BigDecimal, BigInteger<br>
 * date&lt;-----&gt;java.util.Date<br>
 *
 * @author zhaojk
 * @version 5.0
 */
public abstract class BaseDao<E> {

    protected Class<? extends E> clazz;

    protected Connection conn;

    /**
     * 根据主键或者多个条件查询单条数据
     *
     * @param sql  需要执行的数据库sql语句
     * @param objs 进行sql属性注入的参数
     * @return 返回当前查询表的实体类对象
     * @throws Exception
     * @since 1.0
     */
    public E queryOne(String sql, Object... objs) throws Exception {
        if (!checkCount(sql, objs)) {
            throw new Exception("占位符的个数与参数个数不相符 !");
        }
        PreparedStatement ps = conn.prepareStatement(sql);
        init2(ps, objs);
        ResultSet rs = ps.executeQuery();

        E orgObj = null;
        if (rs.next()) {
            // 构建实体类
            orgObj = entryBuild2(rs);
        }
        DBHelper.destroy(null, ps, rs);
        return orgObj;
    }

    /**
     * 使用当前传入的clazz的类名作为表名进行<mark><b>全表</b></mark>查询<br>
     * 使用此方法时确保实体类名与表名一致<br>
     *
     * @param objs 进行sql属性注入的参数
     * @return 返回当前查询表的实体类对象
     * @throws Exception
     * @since 5.0
     * @deprecated 弃用原因: 毫无意义的功能
     */
    public List<E> queryWithModel(Object... objs) throws Exception {
        // 使用当前的类名作为查询的表名
        String table = clazz.getName().substring(clazz.getName().lastIndexOf(".") + 1, clazz.getName().length());
        return query("select * from " + table, clazz, objs);
    }

    /**
     * 当进行<b>查询</b>操作时应调用此方法<br>
     * 此方法直接返回java.util.List类型<br>
     * 即存有实体类的集合<br>
     *
     * @param sql  需要执行的数据库sql语句
     * @param objs 进行sql属性注入的参数
     * @return 返回一个已经封装好的集合, 如果返回值为null, 则没有查询到相应的结果
     * @throws SQLException
     * @throws IllegalAccessException
     * @throws InstantiationException
     * @throws InvocationTargetException
     * @throws IllegalArgumentException
     * @since 1.0
     */
    public List<E> query(String sql, Object... objs) throws Exception {
        ResultSet rs = (ResultSet) commonCheck(sql, objs).get("resultSet");
        PreparedStatement ps = (PreparedStatement) commonCheck(sql, objs).get("prepareStatement");
        List<E> list = null;
        // 开始遍历查询结果
        if (rs.isBeforeFirst()) {
            list = new ArrayList<>();
            // 开始循环从ResultSet中取数据
            while (rs.next()) {
                // 构建实体类
                E orgObj = entryBuild2(rs);
                // 添加到集合中
                list.add(orgObj);
            }
        }
        DBHelper.destroy(null, ps, rs);
        return list;
    }

    public List<String> queryStringList(String sql, Object... objs) throws Exception {
        List<Object> list = queryList(sql, objs);
        List<String> listString = new ArrayList<>();
        list.forEach((o) -> listString.add(o.toString()));
        return listString;
    }

    public List<Integer> queryIntegerList(String sql, Object... objs) throws Exception {
        List<Object> list = queryList(sql, objs);
        List<Integer> listInteger = new ArrayList<>();
        list.forEach((o) -> {
            Integer item = null;
            try {
                item = Integer.parseInt(o.toString());
            } catch (NumberFormatException e) {
                // e.printStackTrace();
            }
            listInteger.add(item);
        });
        return listInteger;
    }

    private List<Object> queryList(String sql, Object... objs) throws Exception {
        ResultSet rs = (ResultSet) commonCheck(sql, objs).get("resultSet");
        PreparedStatement ps = (PreparedStatement) commonCheck(sql, objs).get("prepareStatement");
        List<Object> list = null;
        // 开始遍历查询结果
        if (rs.isBeforeFirst()) {
            list = new ArrayList<>();
            // 开始循环从ResultSet中取数据
            while (rs.next()) {
                // 构建实体类
                Object orgObj = rs.getObject(1);
                // 添加到集合中
                list.add(orgObj);
            }
        }
        DBHelper.destroy(null, ps, rs);
        return list;
    }

    /**
     * 返回分页信息的List, <b>仅限于Oracle数据库<b/>
     *
     * @param sql  需要执行的数据库sql语句
     * @param rows 每页显示条数
     * @param page 当前页数
     * @param objs 进行sql属性注入的参数
     * @return 返回一个已经封装好的集合, 如果返回值为null, 则没有查询到相应的结果
     * @throws Exception
     */
    public List<E> queryPage(String sql, int rows, int page, Object... objs) throws Exception {
        String sqlPage = "SELECT * FROM (SELECT r.*, ROWNUM rnum FROM (" + sql + ") r WHERE ROWNUM<=" + (page * rows)
                + ") WHERE rnum>" + ((page - 1) * rows);
        return query(sqlPage, objs);
    }

    /**
     * 返回单行单列的查询
     *
     * @param sql
     * @param objs
     * @return
     * @throws Exception
     */
    public Object getOne(String sql, Object... objs) throws Exception {
        ResultSet rs = (ResultSet) commonCheck(sql, objs).get("resultSet");
        PreparedStatement ps = (PreparedStatement) commonCheck(sql, objs).get("prepareStatement");
        Object o = null;
        if (rs.next()) {
            o = rs.getObject(1);
        }
        DBHelper.destroy(null, ps, rs);
        return o;
    }

    /**
     * 当进行<b>增删改</b>操作时应调用此方法<br>
     * 此方法执行完毕直接返回sql语句执行的结果<br>
     *
     * @param sql  需要执行的数据库sql语句
     * @param objs 进行sql属性注入的参数
     * @return 返回执行sql语句所影响的条数
     * @throws SQLException 抛出数据库执行异常
     * @since 1.0
     */
    public int update(String sql, Object... objs) throws Exception {
        PreparedStatement ps = conn.prepareStatement(sql);
        if (objs != null) {
            circleInitValue(ps, objs);
        }
        int result = ps.executeUpdate();
        DBHelper.destroy(null, ps, null);
        return result;
    }

    /**
     * 批量操作数据库的方法<br>
     * 主要用于update或者insert
     *
     * @param sql      需要执行的数据库sql语句
     * @param objsList sql语句的参数设定<br>
     *                 list参数中的Object[]的长度必须全部相等
     * @return 返回int型数组, oracle数据库中, 当数组中的所有的值都为-2时表示执行成功(延续JDBC的返回结果)
     * @throws SQLException
     * @since 1.0
     */
    public int[] updateBatch(String sql, List<Object[]> objsList) throws Exception {
        if (!checkParam(objsList)) {
            throw new Exception("传入集合中的数组参数长度并不一致 !");
        }
        if (!checkCount(sql, objsList.get(0))) {
            throw new Exception("占位符的个数与参数个数不相符 !");
        }
        PreparedStatement ps = conn.prepareStatement(sql);
        int[] result;
        for (int i = 0; i < objsList.size(); i++) {
            Object[] os = objsList.get(i);
            circleInitValue(ps, os);
            ps.addBatch();
        }
        result = ps.executeBatch();
        DBHelper.destroy(null, ps, null);
        return result;
    }

    /**
     * 验证批量操作数据库时的数组参数是否长度一致
     *
     * @param list 批量操作时传入的数组参数
     * @return 通过验证返回true, 不通过返回false
     * @since 1.0
     */
    private static boolean checkParam(List<Object[]> list) {
        int temp = list.get(0).length;
        for (int i = 1; i < list.size(); i++) {
            if (list.get(i).length != temp) {
                return false;
            }
        }
        return true;
    }

    /**
     * 判断传入的参数是否与占位符的个数相同
     *
     * @param sql
     * @param objs
     * @return
     * @since 5.0
     */
    private static boolean checkCount(String sql, Object... objs) {
        int count = 0;
        for (int i = 0; i < sql.length(); i++) {
            char z = sql.charAt(i);
            if (z == '?') {
                count++;
            }
        }
        return objs.length == count;
    }

    /**
     * 动态设置预编译sql语句的占位符参数
     *
     * @param ps
     * @param objs
     * @throws SQLException
     * @since 2.0
     */
    private void init2(PreparedStatement ps, Object... objs) throws SQLException {
        if (objs != null && objs.length > 0) {
            for (int i = 1; i <= objs.length; i++) {
                ps.setObject(i, objs[i - 1]);
            }
        }
    }

    private Map<String, Object> commonCheck(String sql, Object... objs) throws Exception {
        if (!checkCount(sql, objs)) {
            throw new Exception("占位符的个数与参数个数不相符 !");
        }
        PreparedStatement ps = conn.prepareStatement(sql);
        init2(ps, objs);
        Map<String, Object> r = new HashMap<>();
        r.put("resultSet", ps.executeQuery());
        r.put("prepareStatement", ps);
        return r;
    }

    private void circleInitValue(PreparedStatement ps, Object...os) throws Exception {
        for (int j = 1; j <= os.length; j++) {
            if (os[j - 1] instanceof Date) {
                os[j - 1] = new Timestamp(((Date) os[j - 1]).getTime());
            }
            ps.setObject(j, os[j - 1]);
        }
    }

    /**
     * 使用反射与ResultSet中的值构建实体类对象的方法<br>
     * 弃用原因: 需要根据实体类的属性名来构建实体类与查询结果矛盾<br>
     *
     * @param fields 该实体类对象中的字段
     * @param clazz  实体类类型
     * @param rs     数据库取出的查询结果
     * @param orgObj 调用反射实例化的实体类对象
     * @throws Exception
     * @since 4.0
     * @deprecated
     */
    protected static <E> void entryBuild(Field[] fields, Class<E> clazz, ResultSet rs, E orgObj) throws Exception {
        for (Field field : fields) {
            // 遍历获取成员变量的名字
            String fname = field.getName();
            // 方法名必须符合setter规范
            String methodName = "set" + String.valueOf(fname.charAt(0)).toUpperCase() + fname.substring(1);
            Method method;
            // 取出查询结果集中的数据
            Object obj;
            try {
                method = clazz.getMethod(methodName, field.getType());
                obj = rs.getObject(fname);
            } catch (Exception e) {
                continue;
            }

            if (field.getType() == String.class) {
                method.invoke(orgObj, obj.toString());
            }
            if (field.getType() == Byte.class) {
                method.invoke(orgObj, obj == null ? obj : ((BigDecimal) obj).byteValue());
            }
            if (field.getType() == Short.class) {
                method.invoke(orgObj, obj == null ? obj : ((BigDecimal) obj).shortValue());
            }
            if (field.getType() == Integer.class) {
                method.invoke(orgObj, obj == null ? obj : ((BigDecimal) obj).intValue());
            }
            if (field.getType() == Long.class) {
                method.invoke(orgObj, obj == null ? obj : ((BigDecimal) obj).longValue());
            }
            if (field.getType() == Double.class) {
                method.invoke(orgObj, obj == null ? obj : ((BigDecimal) obj).doubleValue());
            }
            if (field.getType() == Float.class) {
                method.invoke(orgObj, obj == null ? obj : ((BigDecimal) obj).floatValue());
            }
            if (field.getType() == BigDecimal.class) {
                method.invoke(orgObj, obj);
            }
            if (field.getType() == BigInteger.class) {
                method.invoke(orgObj, obj == null ? obj : ((BigDecimal) obj).toBigInteger());
            }
            if (field.getType() == Date.class) {
                method.invoke(orgObj, obj);
            }
        }
    }

    /**
     * 使用反射与ResultSet中的值构建实体类对象的方法
     *
     * @param rs 数据库取出的查询结果
     * @throws Exception
     * @since 6.0
     */
    private E entryBuild2(ResultSet rs) throws Exception {
        ResultSetMetaData rsmd = rs.getMetaData();
        // 获取总列数
        int count = rsmd.getColumnCount();
        E orgObj = clazz.newInstance();
        Field field;
        for (int i = 1; i <= count; i++) {
            String colname = rsmd.getColumnName(i).toLowerCase();
            String methodName = "set" + colname.substring(0, 1).toUpperCase() + colname.substring(1);
            try {
                field = clazz.getDeclaredField(colname);
            } catch (Exception e) {
                continue;
            }
            Class<?> clazzField = field.getType();
            Method method = clazz.getMethod(methodName, clazzField);

            if (field.getType() == String.class) {
                method.invoke(orgObj, rs.getString(colname));
            }
            if (field.getType() == Byte.class) {
                method.invoke(orgObj, rs.getByte(colname));
            }
            if (field.getType() == Short.class) {
                method.invoke(orgObj, rs.getShort(colname));
            }
            if (field.getType() == Integer.class) {
                method.invoke(orgObj, rs.getInt(colname));
            }
            if (field.getType() == Long.class) {
                method.invoke(orgObj, rs.getLong(colname));
            }
            if (field.getType() == Double.class) {
                method.invoke(orgObj, rs.getDouble(colname));
            }
            if (field.getType() == Float.class) {
                method.invoke(orgObj, rs.getFloat(colname));
            }
            if (field.getType() == BigDecimal.class) {
                method.invoke(orgObj, rs.getBigDecimal(colname));
            }
            if (field.getType() == BigInteger.class) {
                Object obj = rs.getObject(colname);
                method.invoke(orgObj, obj == null ? null : ((BigDecimal) obj).toBigInteger());
            }
            if (field.getType() == Date.class) {
                method.invoke(orgObj, rs.getTimestamp(colname));
            }
        }
        return orgObj;
    }

    /**
     * 私有的通用的初始化方法<br>
     * 用于向sql语句中的占位符进行参数值的注入<br>
     * 弃用原因: 不便于释放资源
     *
     * @param sql
     * @param objs
     * @throws SQLException
     * @deprecated
     */
    protected void init(String sql, Object... objs) throws SQLException {
        PreparedStatement ps = conn.prepareStatement(sql);
        if (objs != null) {
            for (int i = 1; i <= objs.length; i++) {
                ps.setObject(i, objs[i - 1]);
            }
        }
    }
}
