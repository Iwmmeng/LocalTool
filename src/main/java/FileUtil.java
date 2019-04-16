import org.dom4j.Attribute;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.File;
import java.util.Iterator;
import java.util.List;

public class FileUtil {
    private static final Logger LOGGER = LoggerFactory.getLogger(FileUtil.class);

    public static void main(String[] args) throws DocumentException {
        parseXml();
    }

    public static void  parseXml() throws DocumentException {
        SAXReader reader = new SAXReader();
        Document doc = reader.read(new File("/Users/huamiumiu/Miot/Localization/localFile/de/plug_strings.xml"));
        Element root = doc.getRootElement();
        List<Element> childElements = root.elements();
        for (Element child : childElements) {
            //未知属性名情况下
            List<Attribute> attributeList = child.attributes();
            for (Attribute attr : attributeList) {
                System.out.println(attr.getName() + ": " + attr.getValue());
                System.out.println(attr.getQualifiedName());

            }
        }
    }
}

