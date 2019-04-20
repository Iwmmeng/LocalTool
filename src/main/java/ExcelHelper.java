import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;

public class ExcelHelper {
    public static void main(String[] args) {
    }

    /**
     * key1    key2  key3
     * file1     v11    v12    v13
     * file2
     **/

    public static void createExcel(String fileName, List<File> list, Map<String, List<String>> map) throws IOException {
        String sheetName;
        HSSFWorkbook workbook = new HSSFWorkbook();
//        if(list.contains("plug")){
//            sheetName = "plug";
//        }else {
//            sheetName = "string";
//        }
        HSSFSheet sheet = workbook.createSheet("plug");

        //创建行表头(0列，从第1行开始)
        int count = 1;
        for (int i = 0; i < list.size(); i++) {
            HSSFRow row = sheet.createRow(count++);
            HSSFCell cellFileName = row.createCell((0));
            cellFileName.setCellValue(list.get(i).toString());
        }
        System.out.println("===========创建行表头成功==========");
        //创建列表头，并填充值进去（0行，第1列开始）
        int coloum = 1;
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            HSSFRow row = sheet.createRow(0);
            HSSFCell cellKey = row.createCell(coloum++);
            cellKey.setCellValue(entry.getKey());
            //填充map的value中list[String]的值
            //创建容纳map中list值的cell
            for (int tmpColoum = 1; tmpColoum <= map.size(); tmpColoum++) {
                for (int j = 0; j < list.size(); j++) {
                    HSSFRow row2 = sheet.createRow(j + 1);
                    HSSFCell cellValue = row2.createCell(tmpColoum);
                    cellValue.setCellValue(entry.getValue().get(j));
                }
            }

        }
        FileOutputStream fos = new FileOutputStream(new File(fileName));
        workbook.write(fos);
        workbook.close();
        fos.close();
    }
}





//        for (int i = 1; i <= list.size()+1; i++) {
//            Object[] keyList =  map.keySet().toArray();
//            HSSFRow row = sheet.createRow(i-1); // 在索引i的位置创建行
//            if((i-1)==0) {
//                for (int colValue = 0; colValue < map.size(); colValue++) {
//                    HSSFCell cellKey = row.createCell((colValue + 1));
//                    cellKey.setCellValue(keyList[colValue].toString());
//                }
//            }else {
//                for (int colValue = 0; colValue < map.size(); colValue++) {
//                    HSSFCell cellKey = row.createCell((colValue + 1));
//                    cellKey.setCellValue(map.get(keyList[colValue]).get(i-1));
//                }
//            }


//                for (int colValue = 0; colValue < map.size(); colValue++) {
//                    HSSFCell cellKey = row.createCell((colValue + 1));
////建立列索引
//                            if(i==0){
//                                cellKey.setCellValue(keyList[colValue].toString());
//                            }else {
//                                cellKey.setCellValue(map.get(keyList[colValue]).get(i-1));
//                            }
//                    }
                    //建立行索引
//                    HSSFCell cellFileName = row.createCell((0));
//                    if(i!=0) {
//                        cellFileName.setCellValue(list.get(i-1).getParent());
//                    } else continue;
//            HSSFRow row2 = sheet.createRow(list.size()); // 在索引i的位置创建行




