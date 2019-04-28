import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.dom4j.DocumentException;
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
    private static String EXCEL_FILE_PATH = System.getProperty("user.home") + "/tool";
    private static Set<String> XML_FILE_NAME_SET = new HashSet<>(Arrays.asList("plug_strings", "strings"));
    public static void main(String[] args) throws InterruptedException, DocumentException, IOException {
        /**args[0] 表示的是输入文件的绝对路径，args[1]产出excel的存放路径
         * 需要判断当前路径下是否有APK_FILE，有需要先删除，没有直接运行生成改文件。
         */
//        File zipFile = new File(args[0]);
        System.out.println("pwd:" + ShellUtil.exec("pwd"));
        File zipFile = new File("/Users/huamiumiu/Desktop/本地化工具/com.roborock.sapphire.android_2019030119560994161.zip");
        File APK_FILE = new File(zipFile + ".out");
        System.out.println("apkFile: " + APK_FILE);
        if (APK_FILE.exists()) {
            ShellUtil.exec("remove -rf " + APK_FILE);
        }
        String info = ShellUtil.exec("java -jar apktool.jar d " + zipFile);
        System.out.println("info" + info);
        HSSFWorkbook workbook = new HSSFWorkbook();
        for (String fileName : XML_FILE_NAME_SET) {
            List<File> fileList = new ArrayList<>();
            Map<String, List<String>> map = new HashMap<>();
            List<File> fileNameList = FileHelper.getAllDirsAndFiles(fileList, APK_FILE, fileName);
            for (File f : fileNameList) {
                FileHelper.parseAllXml(map, f);
            }
            for (Map.Entry<String, List<String>> mapEntry : map.entrySet()) {
                System.out.println("key: " + mapEntry.getKey() + " value: " + mapEntry.getValue());
            }
            System.out.println("keys size: " + map.keySet().size());
            System.out.println("map size" + map.size());
            HSSFSheet sheet = workbook.createSheet(fileName);
            ExcelHelper.fillExcel(fileNameList, map, workbook, sheet);
        }
        //todo args[1]  用于输出的路径
        workbook.write(new FileOutputStream(System.getProperty("user.home") + "/Miot/workCode/LocalTool/data.xls"));
        workbook.close();
    }
}
