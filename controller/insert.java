package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.packageDButil;


@WebServlet("/insert")
public class insert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String fname = request.getParameter("name1");
		String lname = request.getParameter("name2");
		String dob = request.getParameter("name3");
		String user =request.getParameter("name4");
		String imge = request.getParameter("name5");
		String price = request.getParameter("name6");
		
		boolean isteu;
		
		isteu= packageDButil.custRegis(fname, lname, dob, user, imge,price);
		
		if(isteu==true) 
		{
			RequestDispatcher dis = request.getRequestDispatcher("selectp.jsp");
			dis.forward(request, response);
			
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("admininsert.jsp");
			dis2.forward(request, response);
			
		}
		
	}

}
