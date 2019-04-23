import java.io.File;
import java.io.FileFilter;

public class MyFileFilter implements FileFilter {
    @Override
    public boolean accept(File pathname) {
//        if(pathname.isFile() && pathname.getParent().startsWith("values-") ){
        if(pathname.isFile() && pathname.getName().endsWith("string.xml") ){
            return true;
        }else return false;
    }
}
