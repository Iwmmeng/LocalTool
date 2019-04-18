import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.junit.Test;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class test2 {
    @Test
    public void xmlTest() throws IOException {
        Map<String,List<String>> result = new LinkedHashMap<String,List<String>>();
        List<File> stringFiles = new ArrayList<File>();
        File file = new File(System.getProperty("user.home") + "/miu");
        fillFile(file, stringFiles);
        Workbook workbook = new XSSFWorkbook();
        Sheet sheet = workbook.createSheet();
        Row titlerRow = sheet.createRow(0);
        int count = 1;
        for (File stringFile : stringFiles) {
            try {
                Cell cell = titlerRow.createCell(count++);
                cell.setCellValue(stringFile.getParentFile().getName());
                SAXReader reader = new SAXReader();
                Document document = reader.read(stringFile);
                Element rootElement = document.getRootElement();
                List<Element> elements = rootElement.elements("string");
                for (Element element : elements) {
                    List<String> list = result.get(element.attributeValue("name"));
                    if (list == null) {
                        list = new ArrayList<String>();
                    }
                    list.add(element.getText());
                    result.put(element.attributeValue("name"), list);
                }
            } catch (DocumentException e) {
                e.printStackTrace();
            }
        }
        int rowNum = 1;
        for (Map.Entry<String,List<String>> entry:result.entrySet()){
            Row row = sheet.createRow(rowNum++);
            Cell cell = row.createCell(0);
            cell.setCellValue(entry.getKey());
            Map<String,IndexedColors> colorsMap = new HashMap<String,IndexedColors>();
            List<String> values = entry.getValue();
            int color = 19;
            for (String s : values) {
                colorsMap.put(s.trim(), IndexedColors.fromInt(color++));
            }
            for (int i = 0; i < values.size(); i++) {
                CellStyle cellStyle = workbook.createCellStyle();
                cellStyle.setFillForegroundColor(colorsMap.get(values.get(i).trim()).getIndex());
                cellStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
                Cell cell1 = row.createCell(i + 1);
                cell1.setCellValue(entry.getValue().get(i));
                cell1.setCellStyle(cellStyle);
            }
        }
        workbook.write(new FileOutputStream(new File(System.getProperty("user.home")+"/miu.xlsx")));
    }

    private void fillFile(File file, List<File> stringFiles) {
        if (file.isFile()) {
            if (file.getName().equals("strings.xml")) {
                stringFiles.add(file);
            }
        } else {
            for (File subFile : file.listFiles()) {
                fillFile(subFile, stringFiles);
            }
        }
    }
}
