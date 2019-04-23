import org.dom4j.DocumentException;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class MainEntry {
    private static String EXCEL_FILE_PATH = System.getProperty("user.home") + "/tool";
    private static Set<String> FILE_NAME_SET = new HashSet<>(Arrays.asList("plug_strings", "strings"));






    public static void main(String[] args) throws InterruptedException, DocumentException, IOException {
        List<File> fileList= new ArrayList<>();
        List<File> fileSubList= new ArrayList<>();

        //args[0] 表示的是输入文件的绝对路径，args[1]产出excel的存放路径
//        File zipFile = new File(args[0]);
        File zipFile = new File("/Users/huamiumiu/Desktop/本地化工具/com.roborock.sapphire.android_2019030119560994161.zip");
        //需要判断当前路径下是否有APK_FILE，有需要先删除，没有直接运行生成改文件。
        System.out.println("pwd:"+ShellUtil.exec("pwd"));
        String info = ShellUtil.exec("java -jar apktool.jar d " + zipFile);
        System.out.println("info"+info);
        File APK_FILE= new File(zipFile + ".out");
        System.out.println("apkFile: " + APK_FILE);

        for (String fileName : FILE_NAME_SET) {
//            File excelFile = new File(args[1]+fileName+".xls");
            File excelFile = new File("/Users/huamiumiu/Miot/Localization"+fileName+".xls");
            List<File> subList= FileHelper.fileListSortByName(FileHelper.getAllDirsAndFiles(fileList,APK_FILE),fileSubList ,fileName);
            Map<String, List<String>> map = new HashMap<>();
            for(File f : subList){
                FileHelper.parseAllXml(map,f);
            }
            for (Map.Entry<String, List<String>> mapEntry : map.entrySet()) {
                System.out.println("key: " + mapEntry.getKey() + " value: " + mapEntry.getValue());
            }
            System.out.println("keys size: " + map.keySet().size());
            System.out.println("map size" + map.size());
//            String filepath = "/Users/huamiumiu/Miot/Localization/11.xls";
            ExcelHelper.createExcel(excelFile, subList, map);


        }

    }







}
