package com.notice;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NoticeUpdateServlet
 */
@WebServlet("/NoticeUpdateServlet")
public class NoticeUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String noticeID = request.getParameter("notice_ID");
		String teacherID = request.getParameter("teacher_ID");
		String noticeGrade = request.getParameter("grade");
		String noticeSubject = request.getParameter("subject");
		String noticeText = request.getParameter("notice_Text");
	
		
		boolean success;
		
		success = NoticeDB.updateNotice(noticeID, teacherID, noticeGrade, noticeSubject, noticeText);
		
		if (success == true){
			
			System.out.println("Success");
			RequestDispatcher dis = request.getRequestDispatcher("Notice.jsp");
			request.setAttribute("success", success);
			dis.forward(request, response);
			
		}
		else{
			
			RequestDispatcher dis = request.getRequestDispatcher("noticeUpdate.jsp");
			request.setAttribute("success", success);
			dis.forward(request, response);
		}
	}
	
}
