package com.haner.util;

import com.alibaba.fastjson.JSONObject;

/**
 * 用于构建JSON对象的工具类<br>
 * 必需要使用fastjson.jar第三方类库
 *
 * @author zhaojk
 * @version 2.0
 */
public class JsonUtil {

    /**
     * 该方法用于构建JSON对象
     *
     * @param objs 需要构建的参数, 分别是key, value, key, value...以此类推
     * @return 返回构建好的JSON对象
     * @throws Exception 当参数个数或者key类型错误时抛出的异常
     */
    public static JSONObject makeJson(Object... objs) throws Exception {
        JSONObject jo = null;
        if (objs.length % 2 == 0) {
            if (checkString(objs)) {
                jo = new JSONObject();
                for (int i = 0; i < objs.length; i += 2) {
                    String key = (String) objs[i];
                    jo.put(key, objs[i + 1]);
                }
            } else {
                throw new Exception("索引为偶数位上的值的类型必须为String");
            }
        } else {
            throw new Exception("传入的参数个数必须为偶数");
        }
        return jo;
    }

    /**
     * 该方法用于验证偶数位上的参数是否为字符串<br>
     * 因为JSONObject对象的key值必须为String<br>
     *
     * @param objs 需要验证的参数
     * @return 返回验证结果
     */
    private static boolean checkString(Object... objs) {
        for (int i = 0; i < objs.length; i += 2) {
            if (!(objs[i] instanceof String)) {
                return false;
            }
        }
        return true;
    }
}
