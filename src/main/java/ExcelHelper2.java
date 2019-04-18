//import org.apache.poi.hssf.usermodel.HSSFCell;
//import org.apache.poi.hssf.usermodel.HSSFRow;
//import org.apache.poi.hssf.usermodel.HSSFSheet;
//import org.apache.poi.hssf.usermodel.HSSFWorkbook;
//import org.dom4j.Document;
//import org.dom4j.DocumentException;
//import org.dom4j.Element;
//import org.dom4j.io.SAXReader;
//
//import java.io.File;
//import java.io.IOException;
//import java.util.ArrayList;
//import java.util.LinkedHashMap;
//import java.util.List;
//import java.util.Map;
//
//public class ExcelHelper2 {
//    @Test
//    public void xmlTest() throws IOException {
//        Map<String,List<String>> result = new LinkedHashMap<String,List<String>>();
//        List<File> stringFiles = new ArrayList<File>();
//        File file = new File(System.getProperty("user.home") + "/miu");
//        fillFile(file, stringFiles);
//        HSSFWorkbook hssfWorkbook = new HSSFWorkbook();
//        HSSFSheet sheet = hssfWorkbook.createSheet();
//        HSSFRow titlerRow = sheet.createRow(0);
//        int count = 1;
//        for (File stringFile : stringFiles) {
//            try {
//                HSSFCell cell = titlerRow.createCell(count++);
//                cell.setCellValue(stringFile.getParentFile().getName());
//                SAXReader reader = new SAXReader();
//                Document document = reader.read(stringFile);
//                Element rootElement = document.getRootElement();
//                List<Element> elements = rootElement.elements("string");
//                for (Element element : elements) {
//                    List<String> list = result.get(element.attributeValue("name"));
//                    if (list == null) {
//                        list = new ArrayList<>();
//                    }
//                    list.add(element.getText());
//                    result.put(element.attributeValue("name"), list);
//                }
//            } catch (DocumentException e) {
//                e.printStackTrace();
//            }
//        }
//        int rowNum = 1;
//        for (Map.Entry<String,List<String>> entry:result.entrySet()){
//            HSSFRow row = sheet.createRow(rowNum++);
//            HSSFCell cell = row.createCell(0);
//            cell.setCellValue(entry.getKey());
//            for (int i = 0; i < entry.getValue().size(); i++) {
//                HSSFCell cell1 = row.createCell(i + 1);
//                cell1.setCellValue(entry.getValue().get(i));
//            }
//        }
//        hssfWorkbook.write(new File(System.getProperty("user.home")+"/miu.xls"));
//    }
//
//    private void fillFile(File file, List<File> stringFiles) {
//        if (file.isFile()) {
//            if (file.getName().equals("strings.xml")) {
//                stringFiles.add(file);
//            }
//        } else {
//            for (File subFile : file.listFiles()) {
//                fillFile(subFile, stringFiles);
//            }
//        }
//    }
//}
