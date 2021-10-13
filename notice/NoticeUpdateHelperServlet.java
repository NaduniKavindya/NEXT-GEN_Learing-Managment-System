package com.notice;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NoticeUpdateHelperServlet
 */
@WebServlet("/NoticeUpdateHelperServlet")
public class NoticeUpdateHelperServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String noticeID = request.getParameter("submit");
		
		try {
			List<Notice> noticeDetails = NoticeDB.getNoticeDetails(noticeID);
			
			//passing notice details
			request.setAttribute("noticeDetails", noticeDetails);
		}
			catch (Exception e) {
				e.printStackTrace();
		}
		request.setAttribute("messageSuccess", "Success!!");
		RequestDispatcher dis  = request.getRequestDispatcher("noticeUpdate.jsp");
		dis.forward(request, response);
	}
	

}