import org.junit.Test;

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




}
