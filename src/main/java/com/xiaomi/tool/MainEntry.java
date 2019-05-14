package com.xiaomi.tool;

import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.dom4j.DocumentException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class MainEntry {
    private static final Logger LOGGER = LoggerFactory.getLogger(MainEntry.class);
    private static Set<String> XML_FILE_NAME_SET = new HashSet<>(Arrays.asList("plug_strings", "strings"));
    public static int ZH_CN = 0;
    public static int EN = 0;


    public static void main(String[] args) throws InterruptedException, DocumentException, IOException {
        /**args[0] 表示的是输入文件的绝对路径
         */

        //todo 传入windows的路径
        String path = fixPath(args[0]);
        File APK_FILE = new File(path);
        System.out.println("apk_file: " + APK_FILE);
//        File APK_FILE = new File("/Users/uamiumiu/Miot/Localization/localFile");

        XSSFWorkbook workbook = new XSSFWorkbook();
        for (String fileName : XML_FILE_NAME_SET) {
            List<File> fileListTmp = new ArrayList<>();
            List<File> fileListForeign = new ArrayList<>();
            List<File> fileListZh = new ArrayList<>();
            List<File> fileNameList = new ArrayList<>();
            Map<String, List<String>> map = new HashMap<>();
            List<File> fileNameListTmp = FileHelper.getAllDirsAndFiles(fileListTmp, APK_FILE, fileName);
            for (int i = 0; i < fileNameListTmp.size(); i++) {
                if (fileNameListTmp.get(i).getParentFile().getName().startsWith("zh")) {
                    fileListZh.add(fileNameListTmp.get(i));
                } else {
                    fileListForeign.add(fileNameListTmp.get(i));
                }
            }
            fileNameList.addAll(fileListZh);
            fileNameList.addAll(fileListForeign);
            for (int j = 0; j < fileNameList.size(); j++) {
                if (fileNameList.get(j).getParentFile().getName().equals("en")) {
                    EN = j;
                }
                if (fileNameList.get(j).getParentFile().getName().contains("CN")) {
                    ZH_CN = j;
                }
            }
            LOGGER.info("{}文件一共有文件{}个", fileName, fileNameList.size());
            LOGGER.info("=============== {} files parse begin ===============", fileName);
            for (File f : fileNameList) {
                FileHelper.parseAllXml(map, f);
            }
            LOGGER.info("{}文件一共有key {}个", fileName, map.size());
            LOGGER.info("=============== {} parse end ===============", fileName);
            XSSFSheet sheet = workbook.createSheet(fileName);
            LOGGER.info("=============== {} fill excel start ===============", fileName);
            ExcelHelper.fillExcel(fileNameList, fileListZh, fileListForeign, map, workbook, sheet);
            LOGGER.info("=============== {} fill excel end ===============", fileName);
        }
        if (isOsWindows()) {
            path = path + "\\data.xls";
        } else {
            path = path + "/data.xls";
        }
        workbook.write(new FileOutputStream(path));
        workbook.close();
        LOGGER.info("excel output finished, ptah is {}", path);
//        LOGGER.info("excel output finished, ptah is {}", "/Users/huamiumiu/Miot/Localization/localFile/data.xls");
        LOGGER.info("=============================== 解析完成 ===============================");
    }

    private static boolean isOsWindows() {
        String osname = System.getProperty("os.name").toLowerCase();
        boolean rt = osname.startsWith("windows");
        return rt;
    }

    public static String fixPath(String path) {
        if (null == path) return path;
        if (path.length() >= 1 && ('/' == path.charAt(0) || '\\' == path.charAt(0))) {
            // 根目录, Windows下需补上盘符.
            if (isOsWindows()) {
                String userdir = System.getProperty("user.dir");
                if (null != userdir && userdir.length() >= 2) {
                    return userdir.substring(0, 2) + path;
                }
            }
        }
        return path;
    }


}
