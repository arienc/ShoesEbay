<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Create CR Login</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%
	String emailCR = request.getParameter("emailCR");   
	String passwordCR = request.getParameter("PasswordCR");
	
	ApplicationDB db = new ApplicationDB();	
	Connection con = db.getConnection();	
	Statement stmt = con.createStatement();
    
    ResultSet rs;
    rs = stmt.executeQuery("select * from CR where emailCR='" + emailCR + "'");
    if (rs.next()) 
    {
    	out.println("email exists, please try another <a href='adminHome.jsp'>try again</a>");
    } else 
    {
    	int x = stmt.executeUpdate("insert into CR values('" +emailCR+ "', '" +passwordCR+ "')");
    	session.setAttribute("emailCR", emailCR); 
    
    	%>
    	Account Created :) <%=session.getAttribute("emailCR") %>  
    	<a href="HomeAdmin.jsp">Return to Home</a>
    	<a href="Logout.jsp">Log out</a>
    	<%
    }
%>

</body>
</html>