package com.nextgen;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

  @WebServlet("/DeletePayment")
public class DeletePayment extends HttpServlet {
	private static final long serialVersionUID = 1L;

  	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 	

		String ID= request.getParameter("id");
		boolean  isTrue;
	  
	 
			isTrue=	PaymentDb.deletePayment(ID);
	
	 if(isTrue==true) {
	 
	 RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
	 dis.forward(request, response);
	 }
	 
	 else {
		 
		 RequestDispatcher dis = request.getRequestDispatcher("#");
		 dis.forward(request, response);
		 
		 
	 }
  	}
  	
  	
  	}


