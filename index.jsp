<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.io.*, java.util.*, java.sql.*" %>
    <%@ page import = "javax.servlet.http.*, javax.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shoes Ebay</title>
<link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body>
	<div id="header">
		<h1>Shoes Ebay</h1>
	</div>

	<hr/>
	<% if (session.getAttribute("currentUser") == null){
			out.println("<a href =\"createAccount.jsp\">Create Account</a><br></br>");
			out.println("<a href = \"Login.jsp\">Login as User/Admin</a><br></br>");
			out.println("<a href = \"LoginCR.jsp\">Login as Customer Rep</a>");
		}
		else {
			out.println("<a href = \"LogoutServlet\">Logout</a>");
			out.println("<br></br><a href = \"ProcessMainPageServlet\">Main Page</a>");
		}
	%>
	<br></br>
	
</body>
</html>