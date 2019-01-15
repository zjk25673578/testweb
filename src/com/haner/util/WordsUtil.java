package com.haner.util;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.util.Map;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;

/**
 * 构建word文档工具类
 *
 * @author zhaojk
 * @version 1.0
 */
public class WordsUtil {

    /**
     * freemarker配置对象
     */
    private static Configuration configuration = new Configuration(Configuration.VERSION_2_3_28);

    static {
        configuration.setDefaultEncoding("UTF-8");
        // 加载模板路径
        configuration.setClassForTemplateLoading(WordsUtil.class, "/files/");//模板文件所在路径
    }

    /**
     * 生成docx文件, 并存储到当前项目下
     * 原理:
     * 将docx文件后缀名修改为压缩包的类型(比如: zip)
     * 解压之后取出document.xml文件作为模板
     * 数据填充进去之后生成新的data.xml
     * 再将data.xml替换原先的压缩包文件中的document.xml
     * 然后将压缩包文件后缀名改回docx
     * web上下文路径下的temp文件夹中需要有压缩包的替换文件
     *
     * @param dataMap  模板填充数据对象
     * @param rootPath tomcat下的物理路径
     * @return
     */
    public static byte[] createXml2Docx(Map<String, Object> dataMap, String rootPath) {
        if (dataMap == null) {
            return new byte[0];
        }
        Template template = getTemplate("docx-xml.ftl");
        if (template == null) {
            return new byte[0];
        }
        String outFilePath = rootPath + "temp/data.xml"; // 保存路径
        File docFile = new File(outFilePath);
        try {
            FileOutputStream fos = new FileOutputStream(docFile);
            OutputStreamWriter oWriter = new OutputStreamWriter(fos, StandardCharsets.UTF_8); // 输出流
            Writer out = new BufferedWriter(oWriter, 10240);
            template.process(dataMap, out);
            out.flush();
            out.close();
            // ZipUtils 是一个工具类，主要用来替换，具体可以看github工程
            File doc = new File(rootPath + "temp/document.docx");
            ZipInputStream zipInputStream = ZipUtils.wrapZipInputStream(new FileInputStream(new File(rootPath + "temp/docx-xml.zip")));
            ZipOutputStream zipOutputStream = ZipUtils.wrapZipOutputStream(new FileOutputStream(doc));
            String itemname = "word/document.xml";
            ZipUtils.replaceItem(zipInputStream, zipOutputStream, itemname, new FileInputStream(new File(rootPath + "temp/data.xml")));
            return file2Bytes(doc);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return new byte[0];
    }

    /**
     * 将文件类File转换成字节数组
     *
     * @param doc
     * @return
     * @throws Exception
     */
    public static byte[] file2Bytes(File doc) throws Exception {
        if (doc == null) {
            throw new Exception("com.haner.util.WordsUtil.file2Bytes(File doc), doc参数为null");
        }
        if (doc.exists()) {
            InputStream inputStream = new FileInputStream(doc);//原始输入流
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            byte[] buffer = new byte[1024 * 50]; // 每次读50kb
            int len;
            byte[] dataBytes;
            while ((len = inputStream.read(buffer)) != -1) {
                baos.write(buffer, 0, len);
            }
            baos.flush();
            dataBytes = baos.toByteArray();
            baos.close();
            return dataBytes;
        } else {
            System.err.println(doc.getAbsolutePath() + "不存在 !");
        }
        return new byte[0];
    }

    /**
     * freemarker转xml成doc
     *
     * @param dataMap
     * @return
     */
    public static byte[] createXml2Doc(Map<String, Object> dataMap) {
        byte[] bytes = new byte[0];
        Template template = getTemplate("doc-xml.ftl");
        if (template == null) {
            return null;
        }
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        Writer out = new OutputStreamWriter(baos, StandardCharsets.UTF_8); // 设置输出流得编码格式, 避免导出乱码
        try {
            template.process(dataMap, out);
            bytes = baos.toByteArray();
            baos.flush();
            baos.close();
        } catch (TemplateException | IOException e) {
            e.printStackTrace();
        }
        System.out.println("成功生成数据库文档");
        return bytes;
    }

    /**
     * 获取模板对象
     *
     * @param tempName
     * @return
     */
    private static Template getTemplate(String tempName) {
        try {
            return configuration.getTemplate(tempName); //获取模板文件
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }
}
