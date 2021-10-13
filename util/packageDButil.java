package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.study_package.study_package;


public class packageDButil {


	public static List<study_package> validate  (String name, String suggested){
		
		ArrayList<study_package> stu = new ArrayList<>();
		
		
		String url ="jdbc:postgresql://localhost:5432/student_info";
		String user="postgres";
		String pass="E92243x+";
	
		try {
		
			Class.forName("org.postgresql.Driver");
			Connection con =DriverManager.getConnection(url,user,pass);
			Statement stat =con.createStatement();
			
			String sql = "SELECT * FROM student_info.packages WHERE fname ='"+name+"'and lname='"+suggested+"' ";
			ResultSet rs =  stat.executeQuery(sql);
			
			if (rs.next()) {
				int id = rs.getInt(1);
				String Fna =rs.getString(2);
				String lna =rs.getString(3);
				String dob =rs.getString(4);
				String un =rs.getString(5);
				String im = rs.getString(6);
				String price = rs.getString(7);
				study_package s =new study_package(id,Fna,lna,dob,un,im,price);
				stu.add(s);
			}
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
		
		return stu;
	}
		

	public static boolean updateCus(String id,String fna ,String lna,String dob,String una,String ima,String price) {
		
		boolean isSuccess = false;
				
				
		String url ="jdbc:postgresql://localhost:5432/student_info";
		String user="postgres";
		String pass="E92243x+";
				
			
		try {
					
					Class.forName("org.postgresql.Driver");
					Connection con =DriverManager.getConnection(url,user,pass);
					Statement stat =con.createStatement();
					
					String sql ="UPDATE student_info.packages SET fname='"+fna+"',lname='"+lna+"',dob='"+dob+"',uname='"+una+"',image='"+ima+"',price='"+price+"' where id='"+id+"' ";
					int rs = stat.executeUpdate(sql);
					
					if(rs>0) {
						isSuccess = true;
						
					}
					else {
						isSuccess = false;
					}
				}
				
				catch(Exception e) 
				{
					
					e.printStackTrace();
				}
				
		return isSuccess;
				
			}
	
	
	public static boolean DeletCus(String id) {
		
		boolean isSuccess = false;
		
		/* private static String url = "jdbc:postgresql://localhost:5432/student_management";
    private static String userName = "postgres";
    private static String password = "123456";
    private static Connection con;
 
    public static Connection getConnection() {

        try {

            Class.forName("org.postgresql.Driver");

            con = DriverManager.getConnection(url, userName, password);

        }
        catch (Exception e) {
            System.out.println("Database connection is not success!!!");
        }*/
		
		String url ="jdbc:postgresql://localhost:5432/student_info";
		String user="postgres";
		String pass="E92243x+";
		
		int conID = Integer.parseInt(id);
		
		
		
		try {
			
			Class.forName("org.postgresql.Driver");
			Connection con =DriverManager.getConnection(url,user,pass);
			Statement stat =con.createStatement();
			
			String sql ="DELETE FROM student_info.packages WHERE id='"+conID+"'";
			int rs = stat.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
				
			}
			else {
				isSuccess = false;
			}
		}
		
		catch(Exception e) 
		{
			
			e.printStackTrace();
		}
		
		
		return isSuccess;
		
	}


public static boolean custRegis(String fname,String lname,String dob, String uname,String image,String price) {
		 
		
		boolean isSuccess = false;
		
		
		String url ="jdbc:postgresql://localhost:5432/student_info";
		String user="postgres";
		String pass="E92243x+";
		
		
		try {
			
			Class.forName("org.postgresql.Driver");
			Connection con = (Connection)DriverManager.getConnection(url,user,pass);
			Statement stat = (Statement)con.createStatement();
			
			
			String sql ="INSERT INTO student_info.packages values (default,'"+fname+"','"+lname+"','"+dob+"','"+uname+"','"+image+"','"+price+"')";
			int rs = stat.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
				
			}
			else {
				isSuccess = false;
			}
		}
		
		catch(Exception e) 
		{
			
			e.printStackTrace();
		}
		
		return isSuccess;
		
		
		
	}



}
