package com.haner.test;

import java.io.File;

public class TestDemo2 {
    public static void main(String[] args) {
        File file = new File("files\\aaaa.xlsx");
        System.out.println(file.getAbsolutePath());
        System.out.println(file.exists());
    }
}
