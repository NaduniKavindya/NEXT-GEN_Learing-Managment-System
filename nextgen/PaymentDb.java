package com.nextgen;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class PaymentDb {

	
	
	public static List<payment>validate(String STUId,String PHONE){
	
		
		ArrayList<payment> pay = new ArrayList<>();
		
		String url = "jdbc:mysql://localhost:3306/nextgen";
		String user ="root";
		String pass="";															
																				
																				

		try {
																				
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection(url,user,pass);
			Statement stmt = (Statement) con.createStatement();
			String sql ="SELECT * FROM nextgen.payment WHERE STUDENT_NUMBER ='"+STUId+"' and PHONE_NUMBER='"+PHONE+"' ";
			
			ResultSet rs = stmt.executeQuery(sql);
			
			
			if (rs.next()) {
				
				int id=rs.getInt(1);
				String Name = rs.getString(2);
				String age = rs.getString(3);
				String student_numbr = rs.getString(4); 
				String  grade= rs.getString(5);
				String subject = rs.getString(6);
				String paydate = rs.getString(7);
				String email = rs.getString(8);
				String phone_number = rs.getString(9);
				String masseg = rs.getString(10);
				String img = rs.getString(11);
			
				payment p = new payment(id,Name,age,student_numbr,grade,subject,paydate,email,phone_number,masseg,img);
				pay.add(p);
			}
			else {
				
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		return pay;
		
	}
	
	
	
	
	public static List<payment>validates(String STUId){
	
		
		ArrayList<payment> pay = new ArrayList<>();
		
		String url = "jdbc:mysql://localhost:3306/nextgen";
		String user ="root";
		String pass="";															
																				
																				

		try {
																				
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection(url,user,pass);
			Statement stmt = (Statement) con.createStatement();
			
			String sql ="SELECT * FROM nextgen.payment WHERE Payment_ID ='"+STUId+"' ";
			
			ResultSet rs = stmt.executeQuery(sql);
			
			
			if (rs.next()) {
				
				int id=rs.getInt(1);
				String Name = rs.getString(2);
				String age = rs.getString(3);
				String student_numbr = rs.getString(4); 
				String  grade= rs.getString(5);
				String subject = rs.getString(6);
				String paydate = rs.getString(7);
				String email = rs.getString(8);
				String phone_number = rs.getString(9);
				String masseg = rs.getString(10);
				String img = rs.getString(11);
			
				payment p = new payment(id,Name,age,student_numbr,grade,subject,paydate,email,phone_number,masseg,img);
				pay.add(p);
			}
			else {
				
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		return pay;
		
	}
	
	
	
	
	public static boolean insertPayment(String name, String age, String stu, String grade, String subj, String payD, String email, String tell, String msg,String img) {
		
		boolean isSuccess = false;
		
		//send_email.sendMail(email);

		
		String url = "jdbc:mysql://localhost:3306/nextgen";
		String user ="root";
		String pass="";
		
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection(url,user,pass);
			Statement stmt = (Statement) con.createStatement();
			String sql ="INSERT INTO nextgen.payment values(0,'"+name+"','"+age+"','"+stu+"','"+grade+"','"+subj+"','"+payD+"','"+email+"','"+tell+"','"+msg+"','"+img+"')";
			int rs = stmt.executeUpdate(sql);
			
			
			if (rs>0) {
				
			isSuccess= true;	
				
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
	
	
public static boolean UpdatePayment(String id, String name, String age, String stu, String grade, String subj, String payD, String email, String tell, String msg,String img) {
		
		boolean isSuccess = false;
		
		

		
		String url = "jdbc:mysql://localhost:3306/nextgen";
		String user ="root";
		String pass="";
		
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection(url,user,pass);
			Statement stmt = (Statement) con.createStatement();
			String sql ="update nextgen.payment set NAME='"+name+"' , AGE='"+age+"' , STUDENT_NUMBER='"+stu+"' ,GRADE='"+grade+"',SUBJECT='"+subj+"', PAY_DATE='"+payD+"',EMAIL='"+email+"', PHONE_NUMBER='"+tell+"', FEEDBACK_OR_SPECIAL_NOTE = '"+msg+"',  PAYMENT_SLIP='"+img+"' where Payment_ID  ='"+id+"' ";	
			int rs = stmt.executeUpdate(sql);
			if (rs>0) {
				
			isSuccess= true;	
				
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
	
	
	
	public static boolean deletePayment(String ID) {
		
		int Cid = Integer.parseInt(ID);
		
		
       boolean isSuccess = false;
		
		

		
		String url = "jdbc:mysql://localhost:3306/nextgen";
		String user ="root";
		String pass="";
		
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection(url,user,pass);
			Statement stmt = (Statement) con.createStatement();
			String sql ="DELETE FROM nextgen.payment where Payment_ID  ='"+Cid+"'";	
			int rs = stmt.executeUpdate(sql);
			if (rs>0) {
				        
			isSuccess= true;	
				
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
