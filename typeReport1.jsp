
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/nextgen";
String userId = "root";
String password = "";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>Retrieve data from database in jsp</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>Payment_ID</b></td>
<td><b>NAME</b></td>
<td><b>AGE</b></td>
<td><b>STUDENT_NUMBER</b></td>
<td><b>GRADE</b></td>
<td><b>SUBJECT</b></td>
<td><b>PAY_DATE</b></td>
<td><b>EMAIL</b></td>
<td><b>PHONE_NUMBER</b></td>
<td><b>FEEDBACK_OR_SPECIAL_NOTE</b></td>
<td><b>PAYMENT_SLIP</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM payment";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("Payment_ID") %></td>
<td><%=resultSet.getString("NAME") %></td>
<td><%=resultSet.getString("AGE") %></td>
<td><%=resultSet.getString("STUDENT_NUMBER") %></td>
<td><%=resultSet.getString("GRADE") %></td>
<td><%=resultSet.getString("SUBJECT") %></td>
<td><%=resultSet.getString("PAY_DATE") %></td>
<td><%=resultSet.getString("EMAIL") %></td>
<td><%=resultSet.getString("PHONE_NUMBER") %></td>
<td><%=resultSet.getString("FEEDBACK_OR_SPECIAL_NOTE") %></td>
<td><img src="<%=resultSet.getString("PAYMENT_SLIP") %>"></td>
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>

