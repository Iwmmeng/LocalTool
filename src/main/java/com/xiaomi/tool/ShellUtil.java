package com.xiaomi.tool;

import org.junit.Test;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ShellUtil {
    public static String exec(String command) throws InterruptedException {
        String returnString = "";
        Process pro = null;
        Runtime runTime = Runtime.getRuntime();
        if (runTime == null) {
            System.err.println("Create runtime false!");
        }
        try {
            pro = runTime.exec(command);
            BufferedReader input = new BufferedReader(new InputStreamReader(pro.getInputStream()));
            PrintWriter output = new PrintWriter(new OutputStreamWriter(pro.getOutputStream()));
            String line;
            while ((line = input.readLine()) != null) {
                returnString = returnString + line + "\n";
            }
            input.close();
            output.close();
            pro.destroy();
        } catch (IOException ex) {
            Logger.getLogger(ShellUtil.class.getName()).log(Level.SEVERE, null, ex);
        }
        return returnString;
    }



    @Test
    public void test99() throws InterruptedException {
        String zipFile="/Users/huamiumiu/Desktop/本地化工具/com.roborock.sapphire.android_2019030119560994161.zip";
//        System.out.println(exec("ls -al"));
        String info1 = exec("pwd");
        System.out.println("info: "+info1);
        exec("java -jar apktool.jar d " + zipFile);
    }




}
