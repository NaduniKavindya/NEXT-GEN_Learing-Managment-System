package com.notice;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class NoticeDB {
	private static boolean success;
	private static Connection con = null;
	private static Statement stat = null;
	private static ResultSet res = null;
	
public static boolean noticeInsert(String teacherID, String grade, String subject, String noticeText) {
		
		boolean success = false;
		
		try {
			
			int noticeGrade = Integer.parseInt(grade);
			int noticeTeacher = Integer.parseInt(teacherID);
			
		   // SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
		      //Parsing the given String to Date object
		   // Date date = formatter.parse(addedDate);
			
			DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
			//SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
			LocalDateTime now = LocalDateTime.now();
			System.out.println(LocalDateTime.now());
			
			String noticeAddedDate = dtf.format(now);
			System.out.println(noticeAddedDate);
		      
		      
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DBConnect.getConection();
			stat = con.createStatement();
			String sql = "INSERT INTO notice_management.notice VALUES (default, '"+noticeTeacher+"', '"+noticeGrade+"', '"+subject+"', '"+noticeText+"', '"+noticeAddedDate+"')";
			int res = stat.executeUpdate(sql);
			
			if (res > 0 )
			{
				success = true;
				
				
			}
			else {
				success = false;
			}
	
		}
		catch(Exception e){
			
			e.printStackTrace();
		}
		
		//Returning boolean value, true when success, false when failure
		return success;
	}

public static boolean noticeDelete(String id) {
	
	int intId = Integer.parseInt(id);
	
	try {
		
		con = DBConnect.getConection();
		stat = con.createStatement();
		String sql = "DELETE FROM notice_management.notice WHERE notice_id='"+intId+"'";
		int r = stat.executeUpdate(sql);
		
		if (r > 0) {
			success = true;
		}
		else {
			success = false;
		}
		
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return success;
}

public static List<Notice> getNoticeDetails(String noticeID) {
	
	int intID = Integer.parseInt(noticeID);
	
	ArrayList<Notice> notice = new ArrayList<>();
	
	try {
		
		con = DBConnect.getConection();
		stat = con.createStatement();
		String sql = "SELECT * FROM notice_management.notice WHERE notice_id='"+intID+"'";
		res = stat.executeQuery(sql);
		
		while(res.next()) {
			
			int id = res.getInt(1);
			int  teacherID = res.getInt(2);
			int grade = res.getInt(3);
			String subject = res.getString(4);
			String text = res.getString(5);
			Date date = res.getDate(6);
			
			
			
			Notice n1 = new Notice(id, teacherID, grade, subject, text, date);
			notice.add(n1);
		}
	}
	catch(Exception e) {
		e.printStackTrace();
		
	}
	return notice;
}

public static boolean updateNotice(String id, String teacherID, String grade, String subject, String text) {
	
	
	
	try {
		System.out.println(id);
		System.out.println(teacherID);
		System.out.println(grade);
		
		int noticeGrade = Integer.parseInt(grade);
		int noticeID = Integer.parseInt(id);
		int noticeTeacher = Integer.parseInt(teacherID);
		
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
		//SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
		LocalDateTime now = LocalDateTime.now();
		System.out.println(LocalDateTime.now());
		
		String noticeAddedDate = dtf.format(now);
		System.out.println(noticeAddedDate);
		
		con = DBConnect.getConection();
		stat = con.createStatement();
		String sql = "UPDATE notice_management.notice SET teacher_id = '"+noticeTeacher+"', grade = '"+noticeGrade+"', subject = '"+subject+"', notice_text = '"+text+"', added_date = '"+noticeAddedDate+"' WHERE notice_id = '"+noticeID+"'";
		
		int res = stat.executeUpdate(sql);
		
		if (res > 0 )
		{
			success = true;
			
			
		}
		else {
			success = false;
		}
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	return success;
}
}
