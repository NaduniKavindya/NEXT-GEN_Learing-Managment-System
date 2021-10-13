package com.notice;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/NoticeInsertServlet")
public class NoticeInsertServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String teacherID = request.getParameter("teacher");
		String noticeGrade = request.getParameter("grade");
		String noticeSubject = request.getParameter("subject");
		String noticeText = request.getParameter("text");
		
				
		boolean success;
		
		success = NoticeDB.noticeInsert(teacherID, noticeGrade, noticeSubject, noticeText);
		
		if ( success == true) {
			//code when insert is successfull
			System.out.println("Success");
			request.setAttribute("insertSuccess", "Successfull");
			
			
		}
		else {
			//code when insert operation is unsuccessfull
			System.out.println("unSuccess");
			request.setAttribute("insertFail", "Fail");
			
		}
	}

}
