<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Shoes Ebay</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%
	String email = request.getParameter("email");   
	String pass = request.getParameter("Password");
	
	ApplicationDB db = new ApplicationDB();	
	Connection con = db.getConnection();	
	Statement stmt = con.createStatement();
    
    ResultSet rs;
    rs = stmt.executeQuery("select * from users where email='" + email + "'");
    if (rs.next()) {
    	out.println("email exists, please try another <a href='createAccount.jsp'>try again</a>");
    } else {
    	int x = stmt.executeUpdate("insert into users values('" +email+ "', '" +pass+ "')");
    	session.setAttribute("email", email); 
    
    	%>
    	Welcome <%=session.getAttribute("email") %>  
    	<a href="Homepage.jsp">Continue</a>
    	<a href="Logout.jsp">Log out</a>
    	<%
    }
%>

</body>
</html>