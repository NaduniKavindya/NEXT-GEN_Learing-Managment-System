package com.notice;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NoticeDeleteServlet
 */
@WebServlet("/NoticeDeleteServlet")
public class NoticeDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("submit");
		System.out.println(id);
		boolean isTrue;
		
		isTrue = NoticeDB.noticeDelete(id);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/noticeViewAll");
			//request.setAttribute("success", isTrue);
			dispatcher.forward(request, response);
		}
		else {
			
			//redirect to user profile page
			//List<Game> gameDetails = GameDB.getGameDetails(id);
			//request.setAttribute("gameDetails", gameDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("noticeViewAll.jsp");
			request.setAttribute("success", isTrue);
			dispatcher.forward(request, response);
	}
	}

}
