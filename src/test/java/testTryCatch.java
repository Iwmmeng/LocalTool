import org.junit.Test;

import java.util.ArrayList;
import java.util.List;

public class testTryCatch {
    @Test
    public void test(){
        System.err.println("=========begin======");
        try {
            int i= 1/0;
            System.err.println("i==： "+ i);
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            System.err.println("===finally==");
        }
        System.err.println("代码块之外");
    }
    @Test
    public void test02(){
        System.out.println(System.getProperty("user.dir"));
    }

    @Test
    public void test03(){
        for(int i =0;i<5;i++){
            List list = new ArrayList();
            list.add(1);
            System.out.println(list);
        }
    }




}
