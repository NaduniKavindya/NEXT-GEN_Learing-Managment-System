package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.packageDButil;




@WebServlet("/delete")
public class delete extends HttpServlet {
	private static final long serialVersionUID = 1L;



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("cid");
		
		boolean istru;
		istru=packageDButil.DeletCus(id);

		if(istru==true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("admininsert.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("selectp.jsp");
			dis2.forward(request, response);

		}
		
	}

}
