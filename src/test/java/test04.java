import org.dom4j.Attribute;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.junit.Test;

import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class test04 {
    @Test
    public void test01(){
        Map<String,String> map = new HashMap();
        map.put("1","1");
        map.put("11","2");
        map.put("111","3");
        map.put("1111","4");
        Iterator<String> it = map.keySet().iterator();
        while(it.hasNext()){
            Object key = it.next();
            System.out.println("key: "+key);
        }
    }

    @Test
    public void xmlTest() throws DocumentException {
        SAXReader reader = new SAXReader();
        Document document = reader.read(new File(System.getProperty("user.home")+"/Miot/xmlTest/test01.xml"));
        Element rootElement = document.getRootElement();
        List<Element> elementsList = rootElement.elements();
        for(Element e:elementsList){
            System.out.println("elementsList: "+elementsList);
        }
        for(Element e:elementsList){

            System.out.println("e:name: " + e.getName());
            System.out.println("e.attributeCount: "+e.attributeCount());
            System.out.println("e.attribute name: "+e.attribute(0).getName());
            System.out.println("e.attribute value: "+e.attribute(0).getValue());
            List<Element> subList= e.elements();
            for(Element sube:subList){
                System.out.println("sube.name: "+ sube.getName());
                System.out.println("sube.text: "+ sube.getText());
            }


//            List<Attribute> attributeList= e.attributes();
//            for(Attribute attribute : attributeList){
//                System.out.println("attribute name : "+attribute.getName());
//                System.out.println("attribute value: "+attribute.getValue());

            }
        }

    }
