package com.nextgen;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/insert_payment")
public class insert_payment extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		String name = request.getParameter("name");
		String Age = request.getParameter("age");
		String Stu = request.getParameter("stu");
		String Grade = request.getParameter("grade");
		String Subj = request.getParameter("sub");
		String Paydate = request.getParameter("paydate");
		String Email = request.getParameter("email");
		String tell = request.getParameter("mobile");
		String masseg = request.getParameter("masseg");
		String Img = request.getParameter("img");
		
		
		
		
		boolean isTrue;
		isTrue=PaymentDb.insertPayment(name, Age, Stu, Grade, Subj, Paydate, Email, tell, masseg, Img);
		
		if(isTrue == true) {
			String STID= request.getParameter("stu");
			String phone = request.getParameter("mobile"); 
			String email = request.getParameter("email");
			toemail.main(email);
			  
			  try {
						List<payment>payDetails = PaymentDb.validate(STID,phone);
						request.setAttribute("payDetails", payDetails); 
			  }
			  catch(Exception e) {
				  e.printStackTrace();
			  }
			 
			 RequestDispatcher dis = request.getRequestDispatcher("paymentAccount.jsp");
			 dis.forward(request, response);
			
		}
		else {
			RequestDispatcher dis1 = request.getRequestDispatcher("unsucsees.jsp");
			dis1.forward(request, response);
			
		}
			
		
	}

}
