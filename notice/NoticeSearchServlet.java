package com.notice;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NoticeSearchServlet
 */
@WebServlet("/NoticeSearchServlet")
public class NoticeSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = null;
		
		  String url = "jdbc:postgresql://localhost:5432/LMS";
		  String driver = "org.postgresql.Driver";
		  String userName = "postgres"; 
		  String password = "root";

		  
		  Statement st;
		  try {
		  Class.forName(driver).newInstance();
		  conn = DriverManager.getConnection(url,userName,password);
		  System.out.println("Connected to the database");
		  String  title  = request.getParameter("title");
		  
		  ArrayList search_list =new ArrayList();
		  String query = "select * from notice_management.notice where notice.notice_text like '"+title+"%' or notice.notice_Text like '%"+title+"' order by notice.added_Date";
		  System.out.println("query " + query);
		  st = conn.createStatement();
		  ResultSet  rs = st.executeQuery(query);


		  while(rs.next()){
		  ArrayList al  = new ArrayList<>();
		  
		  al.add(rs.getString(1));
		  al.add(rs.getString(2));
		  al.add(rs.getString(3));
		  al.add(rs.getString(4));
		  al.add(rs.getString(5));
		  al.add(rs.getString(6));
		  
		  System.out.println("al :: "+al);
		  search_list.add(al);
		  }

		  request.setAttribute("searchList",search_list);
		  
		 System.out.println("searchList " + search_list);

		  String nextJSP = "/noticeSearch.jsp";
		  RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
		  dispatcher.forward(request,response);
		  conn.close();
		  System.out.println("Disconnected from database");
		  
		  } catch (Exception e) {
		  e.printStackTrace();
		  }
	
	}

}
