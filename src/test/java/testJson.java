import net.sf.json.JSONObject;

public class testJson {
    public static void main(String[] args) {
        student stu = new student();
        stu.setAdd("武汉");
        stu.setAge(10);
        stu.setName("lilei");

        //对象转string
        JSONObject jsonObject = JSONObject.fromObject(stu);
        String jsonStr = jsonObject.toString();
        System.out.println("jsonStr: "+jsonStr);

        String string = "{\"add\":\"武汉\",\"name\":\"lilei\",\"age\":10}";
        student jo= (student) JSONObject.toBean(JSONObject.fromObject(string),student.class);
        System.out.println(jo);
    }



}

