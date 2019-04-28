import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.IndexedColors;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static org.apache.poi.ss.usermodel.FillPatternType.SOLID_FOREGROUND;

public class ExcelHelper {
    /**
     *          file1   file2   file3
     * key1     v11     v12     v13
     * key2     v21     v22      v23
     **/

    public static void fillExcel(List<File> fileNameList, Map<String, List<String>> map,HSSFWorkbook workbook,HSSFSheet sheet) throws IOException {
        //把文件名作为列表头（0行，从第一列开始）
        int count = 1;
        HSSFRow rowTitle = sheet.createRow(0);
        for (int i = 0; i < fileNameList.size(); i++) {
            HSSFCell cellFileName = rowTitle.createCell(count++);
            cellFileName.setCellValue(fileNameList.get(i).getParentFile().getName());
        }
        //把map的key作为行表头（0列，从第一行开始）
        int rowColloum = 1;
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            Map<String,IndexedColors> colorsMap = new HashMap<String, IndexedColors>();
            int colorIndex =20;
            for(String s:entry.getValue()){
                colorsMap.put(s,IndexedColors.fromInt(colorIndex++));
            }
            HSSFRow row = sheet.createRow(rowColloum++);
            HSSFCell cellKey = row.createCell(0);
            cellKey.setCellValue(entry.getKey());
            for (int j = 0; j < entry.getValue().size(); j++) {
                HSSFCellStyle style = workbook.createCellStyle();
                style.setFillForegroundColor(colorsMap.get(entry.getValue().get(j)).getIndex());
                style.setFillPattern(SOLID_FOREGROUND);
                HSSFCell cellValue = row.createCell(j + 1);
                cellValue.setCellValue(entry.getValue().get(j));
                cellValue.setCellStyle(style);
            }
        }
    }
}



