package com.notice;

import java.sql.DriverManager;
import java.sql.Connection;

public class DBConnect {
	private static String url = "jdbc:postgresql://localhost:5432/LMS";
	
	private static String userName = "postgres";
	
	private static String password = "root"; 
	private static Connection con;
	
	public static Connection getConection() {
		
		try {
			
			Class.forName("org.postgresql.Driver");
			//Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, userName, password);
			
		
		}
		catch(Exception e){
			
			System.out.println("Database Connection Failure!!");
		}
		
		return con;
	}

}
