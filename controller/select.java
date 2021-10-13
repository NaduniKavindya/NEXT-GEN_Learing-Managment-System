package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.study_package.study_package;
import com.util.packageDButil;



@WebServlet("/select")
public class select extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String name = request.getParameter("uid");
		String suggested = request.getParameter("pass");
		
		try {
		List<study_package> cusdetails = packageDButil.validate(name, suggested);
		request.setAttribute("cusdetails", cusdetails);
		}
        catch(Exception e) {
			
			e.printStackTrace();
		}
		
		
		RequestDispatcher dis= request.getRequestDispatcher("update.jsp");
		dis.forward(request, response);
		
		
		
		
	}

}
