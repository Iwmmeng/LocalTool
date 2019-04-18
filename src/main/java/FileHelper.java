import org.dom4j.Attribute;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class FileHelper {
    private static final Logger LOGGER = LoggerFactory.getLogger(FileHelper.class);
    public static Map<String, List<String>> map = new HashMap<String, List<String>>();

    public static Map<String, List<String>> plugNotTranslateMap = new HashMap<String, List<String>>();
    public static Map<String, List<String>> stringNotTranslateMap = new HashMap<String, List<String>>();

    public static List<File> plugStringList = new ArrayList<File>();
    public static List<File> stringList = new ArrayList<File>();

    public static void main(String[] args) throws DocumentException, IOException {
//        parseXml();
        File file = new File("/Users/huamiumiu/Miot/Localization/localFile");
        List<File> filesList = new ArrayList<File>();
        getAllDirsAndFiles(filesList, file);
        System.out.println(filesList);
        System.out.println(filesList.size());
        getXMLList(filesList);


    }

    public static void getXMLList(List<File> filesList) throws DocumentException, IOException {
        for (File file : filesList) {
            if (file.getName().contains("plug")) {
                plugStringList.add(file);
            } else {
                stringList.add(file);
            }
        }
        System.out.println("plugStringList:" + plugStringList);
        System.out.println("plug size:" + plugStringList.size());
        System.out.println("stringList:" + stringList);
        System.out.println("string size:" + stringList.size());
        for (File xmlFile : plugStringList) {
            parseAllXml(xmlFile.toString());
        }
//        for (File xmlFile : stringList) {
//            parseAllXml(xmlFile.toString());
//        }

        for (Map.Entry<String, List<String>> mapEntry : map.entrySet()) {
            System.out.println("key: " + mapEntry.getKey() + " value: " + mapEntry.getValue());
        }
        System.out.println("keys size: "+map.keySet().size());
        System.out.println("map size"+ map.size());
        System.out.println(plugStringList.get(0).getParent());

        String filepath = "/Users/huamiumiu/Miot/Localization/11.xls";
        ExcelHelper.createExcel(filepath,plugStringList,map);




//        for (Map.Entry<String, List<String>> mapEntry : plugNotTranslateMap.entrySet()) {
//            System.out.println("key: " + mapEntry.getKey() + " value: " + mapEntry.getValue());
//        }
//        for (File xmlFile : stringList) {
//            parseXml(xmlFile.toString());
//        }
//        for (Map.Entry<String, List<String>> mapEntry : stringNotTranslateMap.entrySet()) {
//            System.out.println("key: " + mapEntry.getKey() + " value: " + mapEntry.getValue());
//        }

    }

    public static void getAllDirsAndFiles(List<File> files, File file) {
        File[] fileLists = file.listFiles();
        for (File f : fileLists) {
            if (f.isDirectory()) {
                getAllDirsAndFiles(files, f);
            } else {
                if (f.toString().contains(".DS_Store")) {
                    System.out.println("not we want file,its .DS_Store");
                } else {
                    files.add(f);
                }
            }
        }
    }

    //主要用于找出异常点
    public static void parseXml(String filePath) throws DocumentException {
        SAXReader reader = new SAXReader();
//        Document doc = reader.read(new File("/Users/huamiumiu/Miot/Localization/localFile/de/plug_strings.xml"));
        Document doc = reader.read(new File(filePath));
        Element root = doc.getRootElement();
        List<Element> childElements = root.elements();
        for (Element child : childElements) {
            //未知属性名情况下
            List<Attribute> attributeList = child.attributes();
            for (Attribute attr : attributeList) {
//                System.out.println(attr.getName() + ": " + attr.getValue());
//                System.out.println(child.getText());
                if (map.containsKey(attr.getValue())) {
                    if (map.get(attr.getValue()).contains(child.getText())) {
//                        System.out.println("ooooops,not translate!");
//                        System.out.println("没有翻译的重复的字段: " + filePath + " +field: " + attr.getValue() + " +value: " + child.getText());
//                        if (filePath.contains("plug")) {
                        if (attr.getValue().startsWith("plug_timer") || attr.getValue().startsWith("intelligent_plug") || attr.getValue().startsWith("plug_confirm")) {
                        } else {
                            System.out.println("重复的字段: " + filePath + " +field: " + attr.getValue() + " +value: " + child.getText());
                            List<String> repeatValueList = new ArrayList<String>();
                            repeatValueList.add(map.get(attr.getValue()).get(0));
                            repeatValueList.add(filePath);
                            plugNotTranslateMap.put(attr.getValue(), repeatValueList);
                        }
//                        }
//                        else {
//                            System.out.println("没有翻译的重复的字段: " + filePath + " +field: " + attr.getValue() + " +value: " + child.getText());
//                        }
                    } else {
//                        System.out.println("key same,value not same, go on");
                        List<String> valueList = map.get(attr.getValue());
                        valueList.add(filePath);
                        map.put(attr.getValue(), valueList);
                    }
                } else {
                    System.out.println("=====新增filepath：" + filePath + "=====新增key：" + attr.getValue() + "=======新增text：" + child.getText());
                    List<String> newValueList = new ArrayList<String>();
                    newValueList.add(child.getText());
                    map.put(attr.getValue(), newValueList);
                }
            }
        }
    }
//把所有的值都记录存到map
    public static void parseAllXml(String filePath) throws DocumentException {
        SAXReader reader = new SAXReader();
//        Document doc = reader.read(new File("/Users/huamiumiu/Miot/Localization/localFile/de/plug_strings.xml"));
        Document doc = reader.read(new File(filePath));
        Element root = doc.getRootElement();
        List<Element> childElements = root.elements();
        for (Element child : childElements) {
            //未知属性名情况下
            List<Attribute> attributeList = child.attributes();
            for (Attribute attr : attributeList) {
                if (map.containsKey(attr.getValue())) {
                    List<String> valueList= map.get(attr.getValue());
                    valueList.add(child.getText());
                    map.put(attr.getValue(),valueList);
                } else {
                    System.out.println("=====新增filepath：" + filePath + "=====新增key：" + attr.getValue() + "=======新增text：" + child.getText());
                    List<String> newValueList = new ArrayList<String>();
                    newValueList.add(child.getText());
                    map.put(attr.getValue(), newValueList);
                }
            }
        }
    }
}

