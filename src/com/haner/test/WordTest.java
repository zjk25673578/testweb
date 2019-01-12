package com.haner.test;

import com.haner.util.ZipUtils;
import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

import java.io.*;
import java.util.*;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;

public class WordTest {

    public static void main(String[] args) {
        Map<String, Object> dataMap = new HashMap<>();
        List<Map<String, Object>> dataList = new ArrayList<>();
        dataMap.put("title", "标题");
        for (int i = 1; i <= 5; i++) {
            Map<String, Object> data = new HashMap<>();
            data.put("name", "名称" + i);
            List<Map<String, Object>> itemList = new ArrayList<>();
            for (int j = 0; j < 3; j++) {
                Map<String, Object> item = new HashMap<>();
                item.put("stuName", "stuName" + j);
                item.put("project", "project" + j);
                item.put("score", "score" + j);
                itemList.add(item);
            }
            data.put("itemList", itemList);
            dataList.add(data);
        }
        dataMap.put("dataList", dataList);

        Configuration configuration = new Configuration(Configuration.VERSION_2_3_28);
        configuration.setDefaultEncoding("UTF-8");
        configuration.setClassForTemplateLoading(WordTest.class, "/files/");//模板文件所在路径

        try {
            Template template = configuration.getTemplate("document.xml");
            String outFilePath = "C:\\Users\\Administrator\\Desktop\\New Folder\\data.xml";
            File docFile = new File(outFilePath);
            FileOutputStream fos = new FileOutputStream(docFile);
            OutputStreamWriter oWriter = new OutputStreamWriter(fos);
            Writer out = new BufferedWriter(oWriter, 10240);
            template.process(dataMap, out);
            out.flush();
            out.close();
            // ZipUtils 是一个工具类，主要用来替换，具体可以看github工程
            ZipInputStream zipInputStream = ZipUtils.wrapZipInputStream(new FileInputStream(new File("C:\\Users\\Administrator\\Desktop\\New Folder\\test.zip")));
            ZipOutputStream zipOutputStream = ZipUtils.wrapZipOutputStream(new FileOutputStream(new File("C:\\Users\\Administrator\\Desktop\\New Folder\\t.docx")));
            String itemname = "word/document.xml";
            ZipUtils.replaceItem(zipInputStream, zipOutputStream, itemname, new FileInputStream(new File("C:\\Users\\Administrator\\Desktop\\New Folder\\data.xml")));

        } catch (IOException | TemplateException e) {
            e.printStackTrace();
        }

        System.out.println("成功生成数据库文档");
    }

}
