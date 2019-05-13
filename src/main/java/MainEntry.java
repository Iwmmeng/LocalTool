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
        LOGGER.info("输入文件路径为{}",args[0]);
        File APK_FILE = new File(args[0]);
        HSSFWorkbook workbook = new HSSFWorkbook();
        for (String fileName : XML_FILE_NAME_SET) {
            List<File> fileList = new ArrayList<>();
            Map<String, List<String>> map = new HashMap<>();
            Map<String, List<String>> mapLand = new HashMap<>();
            Map<String, List<String>> mapForign = new HashMap<>();
            Map<String, List<String>> mapLandResult = new HashMap<>();
            Map<String, List<String>> mapForignResult = new HashMap<>();
            List<String> zhFileList = new ArrayList<>();
            List<String> foreignFileList = new ArrayList<>();
            List<String> mapLandResultList = new ArrayList<>();


            List<File> fileNameList = FileHelper.getAllDirsAndFiles(fileList, APK_FILE, fileName);
            LOGGER.info("{}文件一共有文件{}个",fileName,fileNameList.size());
            LOGGER.info("=============== {} files parse begin ===============",fileName);
            for (File f : fileNameList) {
                if (f.getName().startsWith("zh")){
                    zhFileList.add(f.getName());
                    FileHelper.parseAllXml(mapLand, f);
                }else {
                    foreignFileList.add(f.getName());
                    FileHelper.parseAllXml(mapForign, f);
                }
            }
            for(String key:mapLand.keySet() ){
                Set setLand = new HashSet(mapLand.get(key));
                List landList = mapLand.get(key);
                if(setLand.size()!=1){
                    for(int j=0;j<landList.size();j++){
                        StringBuilder builder = new StringBuilder();
                        if(builder.indexOf(","+landList.get(j)+",") > -1) {

                            System.out.println("重复的有："+landList.get(j));
                        } else {
                            builder.append(",").append(landList.get(j)).append(",");
                            mapLandResultList.add(landList.get(j).toString());
                            mapLandResult.put(key,mapLandResultList);
                        }
                    }

                }


                for(int j=1;j<mapLand.get(key).size();j++){





                    StringBuilder builder = new StringBuilder();
                    for(String str : mapLand.get(key)) {
                        // 如果不存在返回 -1。
                        if(builder.indexOf(","+str+",") > -1) {

                            System.out.println("重复的有："+str);
                        } else {
                            builder.append(",").append(str).append(",");
                        }
                    }

                    String value0 = mapLand.get(key).get(0);
                    if(mapLand.get(key).get(j).equals(value0)){
                        continue;
                    }else {

                    }



                }

            }
            LOGGER.info("{}文件一共有key {}个",fileName,map.size());
            LOGGER.info("=============== {} parse end ===============",fileName);
            HSSFSheet sheet = workbook.createSheet(fileName);
            LOGGER.info("=============== {} fill excel start ===============",fileName);
            ExcelHelper.fillExcel(fileNameList, map, workbook, sheet);
            LOGGER.info("=============== {} fill excel end ===============",fileName);
        }
        workbook.write(new FileOutputStream(args[0] + "/data.xls"));
        workbook.close();
        LOGGER.info("excel output finished, ptah is {}", args[0] + "/data.xls");
        LOGGER.info("=============================== 解析完成 ===============================");
    }





}
