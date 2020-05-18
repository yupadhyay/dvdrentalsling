package com.dvdrental.util;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.text.DateFormatSymbols;
import java.util.Map;
import java.util.Properties;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.apache.log4j.lf5.LogLevel;

import com.dvdrental.constant.ApplicationConstant;
import com.dvdrental.logger.Logwriter;
/**
 * this is util class
 * testing chek in
 * @author yogeshupadhyay
 *
 */

public class Util {
	public static String getMonthName(int monthIndex){
		String[] monthName = new DateFormatSymbols().getMonths();
		return monthName[monthIndex];
	}
	public static boolean isLoggedIn(HttpServletRequest request){
		HttpSession session = request.getSession();
		Object isLoggedIn = session.getAttribute("isLoggedIn");
		if(isLoggedIn!=null && Boolean.parseBoolean(isLoggedIn.toString())==true){
			return true;
		}
		return false;
	}
	public static String getLogFileName(){
		String logFilePath = null;
		if(getApplicationProperty("tomcat_path")!=null && getApplicationProperty("application_name")!=null){
			logFilePath = getApplicationProperty("tomcat_path")+"/"+getApplicationProperty("application_name")+"/"+ApplicationConstant.LOG_FILE_NAME;
		}
	   return logFilePath;
	}
	public static String getClassPath(){
		return Util.class.getClassLoader().getResource("").toString();
	}
	public static String getApplicationProperty(String propertyName){
		Properties properties = new Properties();
		String value = null;
		try {
			properties.load(new FileInputStream("application.properties"));
			value = properties.getProperty(propertyName);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return value;
	}
	public static String NotNull(String input){
		if(input!=null){
			return input;
		}
		else{
			return "";
		}
	}
	public static void main(String[] args) {
		Logwriter.getInstance().log(Logger.getLogger(Util.class), LogLevel.ERROR, "this is a test");
	}
	
}
