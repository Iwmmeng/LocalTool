package com.xiaomi.tool;

import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
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
    public static void main(String[] args) throws InterruptedException, DocumentException, IOException {
        /**args[0] 表示的是输入文件的绝对路径，args[1]产出excel的存放路径
         * 需要判断当前路径下是否有APK_FILE，有需要先删除，没有直接运行生成改文件。
         */
        LOGGER.info("=============================== 解析开始 ===============================");
//        LOGGER.info("输入文件路径为{}",args[0]);
//        File APK_FILE = new File(args[0]);
        File APK_FILE = new File("/Users/huamiumiu/Miot/Localization/localFile");


        HSSFWorkbook workbook = new HSSFWorkbook();
        for (String fileName : XML_FILE_NAME_SET) {
            List<File> fileListTmp = new ArrayList<>();
            List<File> fileListForeign = new ArrayList<>();
            List<File> fileListZh = new ArrayList<>();
            List<File> fileNameList = new ArrayList<>();
            Map<String, List<String>> map = new HashMap<>();
            List<File> fileNameListTmp = FileHelper.getAllDirsAndFiles(fileListTmp, APK_FILE, fileName);
            for(int i=0;i<fileNameListTmp.size();i++){
                if(fileNameListTmp.get(i).getParentFile().getName().startsWith("zh")){
                    fileListZh.add(fileNameListTmp.get(i));
                }else{
                    fileListForeign.add(fileNameListTmp.get(i));
                }
            }
            fileNameList.addAll(fileListZh);
            fileNameList.addAll(fileListForeign);

            System.out.println(fileNameList);
            LOGGER.info("{}文件一共有文件{}个",fileName,fileNameList.size());
            LOGGER.info("=============== {} files parse begin ===============",fileName);
            for (File f : fileNameList) {
                    FileHelper.parseAllXml(map, f);
            }
            LOGGER.info("{}文件一共有key {}个",fileName,map.size());
            LOGGER.info("=============== {} parse end ===============",fileName);
            HSSFSheet sheet = workbook.createSheet(fileName);
            LOGGER.info("=============== {} fill excel start ===============",fileName);
            ExcelHelper.fillExcel(fileNameList,fileListZh,fileListForeign, map,workbook, sheet);
            LOGGER.info("=============== {} fill excel end ===============",fileName);
        }
        workbook.write(new FileOutputStream("/Users/huamiumiu/Miot/Localization/localFile/data.xls"));
//        workbook.write(new FileOutputStream(args[0] + "/data.xls"));
        workbook.close();
//        LOGGER.info("excel output finished, ptah is {}", args[0] + "/data.xls");
        LOGGER.info("excel output finished, ptah is {}", "/Users/huamiumiu/Miot/Localization/localFile/data.xls");
        LOGGER.info("=============================== 解析完成 ===============================");

        //todo 对解析完成的数据进行上色








    }





}
