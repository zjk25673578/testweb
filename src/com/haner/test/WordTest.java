package com.haner.test;

import freemarker.template.Configuration;
import freemarker.template.Template;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.util.*;

public class WordTest {

    private Configuration configuration;

    public WordTest() {
        configuration = new Configuration(Configuration.VERSION_2_3_28);
        configuration.setDefaultEncoding("UTF-8");
    }

    public static void main(String[] args) {
        WordTest test = new WordTest();
        test.createWord("t.ftl");
    }

    public void createWord(String tmp) {
        Map<String, Object> dataMap = new HashMap<>();
        getData2(dataMap);
        configuration.setClassForTemplateLoading(this.getClass(), "/files/");//模板文件所在路径
        Template t;
        Writer out;
        try {
            t = configuration.getTemplate(tmp); //获取模板文件
            File outFile = new File("D:/dbDoc/" + new Date().getTime() + ".docx"); //导出文件
            out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(outFile), StandardCharsets.UTF_8));
            t.process(dataMap, out); //将填充数据填入模板文件并输出到目标文件
            out.flush();
            out.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void getData(Map<String, Object> dataMap) {
        dataMap.put("sche", "stms");
        List<Map<String, Object>> dataList = new ArrayList<>();
        Map<String, Object> item;
        for (int i = 1; i <= 5; i++) {
            item = new HashMap<>();
            item.put("num", i);
            item.put("tableName", "sys_city" + i);
            item.put("tableDesp", "地区表" + i);
            List<Map<String, Object>> itemList = new ArrayList<>();
            for (int j = 1; j <= 10; j++) {
                Map<String, Object> it = new HashMap<>();
                it.put("colName", "id" + i);
                it.put("colType", "varchar" + i);
                it.put("colLen", "500" + i);
                it.put("isNull", "YES" + i);
                it.put("related", "st_user" + i);
                it.put("comment", "地区信息表" + i);
                it.put("note", "关联表结构" + i);
                itemList.add(it);
            }
            item.put("columns", itemList);
            dataList.add(item);
        }
        dataMap.put("dataList", dataList);

        /*List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
        for (int i = 0; i < 10; i++) {
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("xuehao", i);
            map.put("neirong", "内容" + i);
            list.add(map);
        }
        dataMap.put("list", list);*/
    }

    public static void getData2(Map<String, Object> dataMap) {
        dataMap.put("sche", "stms");
        dataMap.put("tableName", "stms");
        dataMap.put("num", "stms");
        dataMap.put("tableDesp", "stms");
        dataMap.put("colName", "stms");
        dataMap.put("colType", "stms");
        dataMap.put("colLen", "stms");
        dataMap.put("isNull", "stms");
        dataMap.put("related", "stms");
        dataMap.put("comment", "stms");
        dataMap.put("note", "stms");
    }
}
