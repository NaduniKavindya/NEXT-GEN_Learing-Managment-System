package com.student;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	private static String url = "jdbc:mysql://localhost:3306/student_profile";  
	private static String user = "root";
	private static String password = "123456";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, user, password);
			
		}
		catch(Exception e) {
			System.out.println("Database connection is not successfull !!!");
		}
		
		return con;
	}
}
