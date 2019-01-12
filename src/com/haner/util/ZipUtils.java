package com.haner.util;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;

public class ZipUtils {
    /**
     * 替换某个 item,
     *
     * @param zipInputStream  zip文件的zip输入流
     * @param zipOutputStream 输出的zip输出流
     * @param itemName        要替换的 item 名称
     * @param itemInputStream 要替换的 item 的内容输入流
     */
    public static void replaceItem(ZipInputStream zipInputStream,
                                   ZipOutputStream zipOutputStream,
                                   String itemName,
                                   InputStream itemInputStream) {
        if (null == zipInputStream) {
            return;
        }
        if (null == zipOutputStream) {
            return;
        }
        if (null == itemName) {
            return;
        }
        if (null == itemInputStream) {
            return;
        }
        //
        ZipEntry entryIn;
        try {
            while ((entryIn = zipInputStream.getNextEntry()) != null) {
                String entryName = entryIn.getName();
                ZipEntry entryOut = new ZipEntry(entryName);
                // 只使用 name
                zipOutputStream.putNextEntry(entryOut);
                // 缓冲区
                byte[] buf = new byte[8 * 1024];

                replace(entryName, itemName, zipInputStream,
                        zipOutputStream, itemInputStream, buf);

            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            //e.printStackTrace();
            close(itemInputStream);
            close(zipInputStream);
            close(zipOutputStream);
        }
    }

    public static byte[] replaceItemReturnBytes(ZipInputStream zipInputStream,
                                                ZipOutputStream zipOutputStream,
                                                String itemName,
                                                InputStream itemInputStream) {
        if (null == zipInputStream) {
            return null;
        }
        if (null == zipOutputStream) {
            return null;
        }
        if (null == itemName) {
            return null;
        }
        if (null == itemInputStream) {
            return null;
        }
        //
        ZipEntry entryIn;
        byte[] buf = null;
        try {
            while ((entryIn = zipInputStream.getNextEntry()) != null) {
                String entryName = entryIn.getName();
                ZipEntry entryOut = new ZipEntry(entryName);
                // 只使用 name
                zipOutputStream.putNextEntry(entryOut);
                // 缓冲区
                // byte[] buf = new byte[8 * 1024];
                buf = new byte[zipInputStream.available()];
                replace2(entryName, itemName, zipInputStream, itemInputStream, buf);
            }
            return buf;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            //e.printStackTrace();
            close(itemInputStream);
            close(zipInputStream);
            close(zipOutputStream);
        }
        return null;
    }

    private static void replace(String entryName, String itemName, ZipInputStream zipInputStream,
                                ZipOutputStream zipOutputStream, InputStream itemInputStream, byte[] buf) throws Exception {
        int len;
        if (entryName.equals(itemName)) {
            // 使用替换流
            while ((len = (itemInputStream.read(buf))) > 0) {
                zipOutputStream.write(buf, 0, len);
            }
        } else {
            // 输出普通Zip流
            while ((len = (zipInputStream.read(buf))) > 0) {
                zipOutputStream.write(buf, 0, len);
            }
        }
        // 关闭此 entry
        zipOutputStream.closeEntry();
    }

    private static void replace2(String entryName, String itemName, ZipInputStream zipInputStream, InputStream itemInputStream, byte[] buf) throws Exception {
        int len;
        if (entryName.equals(itemName)) {
            len = itemInputStream.read(buf);
        } else {
            // 输出普通Zip流
            len = zipInputStream.read(buf);
        }
        System.out.println("读取的字节数组的长度" + len);
    }

    /**
     * 包装输入流
     */
    public static ZipInputStream wrapZipInputStream(InputStream inputStream) {
        return new ZipInputStream(inputStream);
    }

    /**
     * 包装输出流
     */
    public static ZipOutputStream wrapZipOutputStream(OutputStream outputStream) {
        return new ZipOutputStream(outputStream);
    }

    private static void close(InputStream inputStream) {
        if (null != inputStream) {
            try {
                inputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    private static void close(OutputStream outputStream) {
        if (null != outputStream) {
            try {
                outputStream.flush();
                outputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
