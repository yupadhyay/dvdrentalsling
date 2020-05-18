package com.dvdrental.logger;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;

import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.apache.log4j.SimpleLayout;
import org.apache.log4j.WriterAppender;
import org.apache.log4j.lf5.LogLevel;

import com.dvdrental.util.Util;

public class Logwriter {
	private static volatile Logwriter logwriter = null;
	private Logwriter(){
		
	}
	public synchronized static Logwriter getInstance(){
		if(logwriter==null){
			logwriter = new Logwriter();
		}
		return logwriter;
	}
	public static void log(Logger logger,LogLevel loglevel,String message){
		WriterAppender appender = null;
		FileOutputStream out = null;
		message = new Date().toString()+"      "+message;
		File file = new File(Util.getLogFileName());
		if(!file.exists()){
			try {
				file.createNewFile();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		SimpleLayout layout = new SimpleLayout();
		try {
			out = new FileOutputStream(file,true);			
			appender = new WriterAppender(layout,out);
			logger.addAppender(appender);
			logger.setLevel((Level) Level.DEBUG);
			if(loglevel.equals(LogLevel.DEBUG))
				logger.debug(message);
			if(loglevel.equals(LogLevel.ERROR))
				logger.error(message);
			if(loglevel.equals(LogLevel.FATAL))
				logger.fatal(message);
			if(loglevel.equals(LogLevel.WARN))
				logger.warn(message);
			if(loglevel.equals(LogLevel.INFO))
				logger.info(message);
			
			
		} catch (FileNotFoundException e) {
			
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
}
