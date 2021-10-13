package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.packageDButil;



@WebServlet("/update")
public class update extends HttpServlet {
	private static final long serialVersionUID = 1L;



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("cid");
		String fna = request.getParameter("fna");
		String dob = request.getParameter("dob");
		String lna = request.getParameter("lna");
		String una = request.getParameter("una");
		String ima = request.getParameter("ima");
		String price= request.getParameter("price");

		boolean isthru;
		
		isthru = packageDButil.updateCus(id, fna, lna, dob,una,ima,price);
		
		if (isthru==true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("selectp.jsp");
			dis.forward(request, response);
			
		}
		else {
		RequestDispatcher dis2 = request.getRequestDispatcher("updateadmin.jsp");
		dis2.forward(request, response);
		}

		
	}

}
