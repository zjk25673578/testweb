package com.haner.util;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.StandardCharsets;
import java.util.Map;

public class WordsUtil {

    private static Configuration configuration = new Configuration(Configuration.VERSION_2_3_28);

    static {
        configuration.setDefaultEncoding("UTF-8");
        configuration.setClassForTemplateLoading(WordsUtil.class, "/files/");//模板文件所在路径
    }

    public static byte[] createXml2Docx(Map<String, Object> dataMap) {
        byte[] bytes;
        Template template = getTemplate("docx-xml.ftl");
        return null;
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
