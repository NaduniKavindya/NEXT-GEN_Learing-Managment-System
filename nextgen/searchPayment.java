package com.nextgen;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



 
@WebServlet("/searchPayment")
public class searchPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  
		
		String ID= request.getParameter("uid");
		
	  
	  try {
				List<payment>payDetails = PaymentDb.validates(ID);
				request.setAttribute("payDetails", payDetails); 
	  }
	  catch(Exception e) {
		  e.printStackTrace();
	  }
	 
	 RequestDispatcher dis = request.getRequestDispatcher("paymentAccount2.jsp");
	 dis.forward(request, response);
	}

}
