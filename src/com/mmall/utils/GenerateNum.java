package com.mmall.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class GenerateNum {
    private GenerateNum() {
    }

    private static volatile GenerateNum generateNum = null;

    public static GenerateNum getInstance() {
        if (generateNum == null) {
            synchronized (GenerateNum.class) {
                if (generateNum == null)
                    generateNum = new GenerateNum();
            }
        }
        return generateNum;
    }

    private static int count = 0;
    private static final int total = 9999;
    private static SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmssSS");

    private static String getNowDateStr() {
        return dateFormat.format(new Date());
    }

    private static String now = null;

    public synchronized String GenerateOrder() {
        String dateStr = getNowDateStr();
        if (dateStr.equals(now)) {
            count++;
        } else {
            count = 1;
            now = dateStr;
        }
        int countInteger = String.valueOf(total).length() - String.valueOf(count).length();
        String bu = "";
        for (int i = 0; i < countInteger; i++) {
            bu += "0";
        }
        bu += String.valueOf(count);
        if (count >= total) {
            count = 0;
        }
        return dateStr + bu;
    }
}
