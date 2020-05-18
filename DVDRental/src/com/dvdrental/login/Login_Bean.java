package com.dvdrental.login;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.dvdrental.database.MySQLConnect;

public class Login_Bean {
	private int userId;
	private String userName;
	private int userType;
	public boolean check(String userName,String password){
		
		MySQLConnect conn = MySQLConnect.getInstance();
		String queryString = "select * from login where user_name=? and password=?;";
		
	
		try {
			PreparedStatement stmt = conn.getConnection().prepareStatement(queryString);
			stmt.setString(1, userName);
			stmt.setString(2, password);
			ResultSet result = stmt.executeQuery();
			result.last();
			int resultcount = result.getRow();
			result.first();
			if(resultcount<1){
				return false;
			}
			else{
				while(result.next()){
				this.setUserId(result.getInt("cust_id"));
				this.setUserType(Integer.parseInt(result.getString("user_type")));
				}
				return true;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}
	public String getUserName(int user_id){
		return this.userName;
	}
	
	public int getUserId(){
		return this.userId;
	}
	public int getUserType(){
		return this.userType;
	}
	private void setUserId(int userId){
		this.userId = userId;
	}
	private void setUserType(int type){
		this.userType = type;
	}
	public static void main(String[] args) {
		//System.out.println(new Login().check("yogi", "yogi"));
	}
	
}
