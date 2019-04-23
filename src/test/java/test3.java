import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.io.SAXReader;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import java.util.Set;


public class test3 {
        private static String FILE_PATH = System.getProperty("user.home") + "/miu";
        private static Set<String> FILE_NAME_SET = new HashSet<>(Arrays.asList("plug_strings.xml", "strings.xml"));

        /**
         * args[0]是文件存放路径，args[1-最后]待解析的文件名
         *
         * @param args
         */
        public static void main(String[] args) throws IOException {
            //文件路金可以输入
            System.out.println("请输入文件路径：");
            Scanner scanner = new Scanner(System.in);
            String filePath = scanner.next();
            System.out.println(filePath);
            System.out.println("请输入解析文件名（多个用英文','隔开）：");
            List<String> fileNameList = Arrays.asList(scanner.next().split(","));
            System.out.println(fileNameList);
            File file = new File(FILE_PATH);
            List<File> fileSet = new ArrayList<>();
            Workbook workbook = new HSSFWorkbook();
            for (String fileName : FILE_NAME_SET) {
                collectFileNameSet(file, fileSet, fileName);
                LinkedHashMap<String, List<String>> stringListLinkedHashMap = parseAllByFileName(fileSet);
                if (!stringListLinkedHashMap.isEmpty()) {
                    Sheet sheet = workbook.createSheet(fileName.substring(0,fileName.lastIndexOf(".")));
                    Row titlerRow = sheet.createRow(0);
                    int cellPos = 0;
                    for (File file1 : fileSet) {
                        Cell cell = titlerRow.createCell(++cellPos);
                        cell.setCellValue(file1.getParentFile().getName());
                    }
                    int rowCount = 1;
                    for (Map.Entry<String, List<String>> entry : stringListLinkedHashMap.entrySet()) {
                        List<String> value = entry.getValue();
                        Map<String, Short> colorMap = generateColors(value);
                        Row dataRow = sheet.createRow(rowCount++);
                        Cell cell = dataRow.createCell(0);
                        cell.setCellValue(entry.getKey());
                        for (int i = 1; i <= value.size(); i++) {
                            Cell dataRowCell = dataRow.createCell(i);
                            dataRowCell.setCellValue(value.get(i-1));
                            CellStyle cellStyle = workbook.createCellStyle();
                            cellStyle.setFillForegroundColor(colorMap.get(value.get(i-1).trim()));
                            cellStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
                            dataRowCell.setCellStyle(cellStyle);
                        }
                    }
                }
                fileSet.clear();
            }
            workbook.write(new FileOutputStream(System.getProperty("user.home") + "/data.xlsx"));
        }

        private static Map<String, Short> generateColors(List<String> value) {
            Map<String, Short> colorData = new HashMap<>();
            short color = 19;
            for (String str : value) {
                colorData.put(str.trim(), color++);
            }
            return colorData;
        }

        private static LinkedHashMap<String, List<String>> parseAllByFileName(List<File> fileSet) {
            LinkedHashMap<String, List<String>> fileStringMap = new LinkedHashMap<>();
            fileSet.forEach(file -> {
                try {
                    Map<String, String> attrs = parseXml(file);
                    for (Map.Entry<String, String> entry : attrs.entrySet()) {
                        List<String> list = fileStringMap.get(entry.getKey());
                        if (list == null) {
                            list = new ArrayList<>();
                        }
                        list.add(entry.getValue());
                        fileStringMap.put(entry.getKey(), list);
                    }
                } catch (DocumentException e) {
                    e.printStackTrace();
                }
            });
            return fileStringMap;
        }

        private static Map<String, String> parseXml(File file) throws DocumentException {
            SAXReader reader = new SAXReader();
            Document doc = reader.read(file);
            List<Element> children = doc.getRootElement().elements("string");
            Map<String, String> attr = new HashMap<>();
            children.forEach(element -> {
                attr.put(element.attributeValue("name"), element.getText());
            });
            return attr;
        }

        private static void collectFileNameSet(File file, List<File> fileNameSet, String fileName) {
            if (file.exists() && file.isFile()) {
                if (file.getName().equals(fileName)) {
                    fileNameSet.add(file);
                }
            } else {
                for (File sub : file.listFiles()) {
                    collectFileNameSet(sub, fileNameSet, fileName);
                }
            }
        }
    }
