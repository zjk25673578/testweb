package com.haner.util;

import freemarker.template.Configuration;
import freemarker.template.Template;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.util.Date;
import java.util.Map;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;

public class WordsUtil {

    public static void createDbDoc(Map<String, Object> dataMap) throws Exception {
        Configuration configuration = new Configuration(Configuration.VERSION_2_3_28);
        configuration.setDefaultEncoding("UTF-8");
        configuration.setClassForTemplateLoading(WordsUtil.class, "/files/");//模板文件所在路径
        // Template template = configuration.getTemplate("document.ftl", "UTF-8");
        Template template = configuration.getTemplate("document.ftl");
        String outFilePath = "D:/dbDoc/data.xml";
        File docFile = new File(outFilePath);
        FileOutputStream fos = new FileOutputStream(docFile);
        OutputStreamWriter oWriter = new OutputStreamWriter(fos);
        Writer out = new BufferedWriter(oWriter, 10240);
        template.process(dataMap, out);
        out.flush();
        out.close();
        // ZipUtils 是一个工具类，主要用来替换，具体可以看github工程
        ZipInputStream zipInputStream = ZipUtils.wrapZipInputStream(new FileInputStream(new File("D:/dbDoc/t.zip")));
        ZipOutputStream zipOutputStream = ZipUtils.wrapZipOutputStream(new FileOutputStream(new File("D:/dbDoc/t.docx")));
        String itemname = "word/document.xml";
        ZipUtils.replaceItem(zipInputStream, zipOutputStream, itemname, new FileInputStream(new File("D:/dbDoc/data.xml")));
        System.out.println("成功生成数据库文档");
    }

    public static void createDbDocXml2(Map<String, Object> dataMap, String tmp) {
        Configuration configuration = new Configuration(Configuration.VERSION_2_3_28);
        configuration.setClassForTemplateLoading(WordsUtil.class, "/files/");//模板文件所在路径
        Template t;
        Writer out;
        try {
            t = configuration.getTemplate(tmp); //获取模板文件
            File outFile = new File("D:/dbDoc/" + new Date().getTime() + ".doc"); //导出文件
            out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(outFile), StandardCharsets.UTF_8));
            t.process(dataMap, out); //将填充数据填入模板文件并输出到目标文件
            out.flush();
            out.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static byte[] createDbDocXml(Map<String, Object> dataMap) {
        Configuration configuration = new Configuration(Configuration.VERSION_2_3_28);
        configuration.setDefaultEncoding("UTF-8");
        configuration.setClassForTemplateLoading(WordsUtil.class, "/files/");//模板文件所在路径
        Template template;
        byte[] bytes = null;
        try {
            template = configuration.getTemplate("t.ftl"); //获取模板文件
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            Writer out = new OutputStreamWriter(baos, StandardCharsets.UTF_8); // 设置输出流得编码格式, 避免导出乱码

            template.process(dataMap, out);
            System.out.println("成功生成数据库文档");
            bytes = baos.toByteArray();
            baos.flush();
            baos.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return bytes;
    }
}
