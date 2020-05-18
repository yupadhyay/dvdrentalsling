package com.dvdrental.database;

import java.sql.Connection;
import java.sql.DriverManager;

public class MySQLConnect {
	private static volatile MySQLConnect mySQLConnect = null;
	private MySQLConnect(){
		
	}
	public static MySQLConnect getInstance(){
		if(mySQLConnect==null){
			mySQLConnect = new MySQLConnect();
			return mySQLConnect;
		}
		else{
			return mySQLConnect;
		}
	}
	public synchronized Connection getConnection(){
		Connection conn = null;
	    String url = "jdbc:mysql://localhost:3306/";
	    String dbName = "jdbctutorial";
	    String driver = "com.mysql.jdbc.Driver";
	    String userName = "root"; 
	    String password = "root";
	    try {
	        Class.forName(driver).newInstance();
	        conn = DriverManager.getConnection(url+dbName,userName,password);
	        //System.out.println("Connected to the database");
	        //conn.close();
	        //System.out.println("Disconnected from database");
	      } catch (Exception e) {
	        e.printStackTrace();
	      }
	      return conn;
	}
}
