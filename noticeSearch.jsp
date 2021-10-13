<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Notice search</title>
</head>
<body>
<br><br><br><br><br><br>
<form method="post" name="frm" action="noticeSearch">
<table>
<tr><td>
<h3>Search Notice(s)</h3></td></tr>
<tr><td ><b>Notice Text</b></td>
<td>: <input  type="text" required="required" name="title" id="title">
</td></tr>
<tr><td></td><td align = "left"><input type="submit" name="submit" value="Search"></td>
</tr>
</table>
</form>
<table>
<tr><td align = "center"><form method="post" name="frm2" action="noticeViewAll"><input width="100" type="submit" value="View All Notices"></form></td>
</tr>
</table>
</body>
</html>