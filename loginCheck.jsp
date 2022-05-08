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
    String pass = request.getParameter("password");
    
    
    ApplicationDB db = new ApplicationDB();	
	Connection con = db.getConnection();	
	Statement stmt = con.createStatement();
	
    ResultSet rs1;
    rs1 = stmt.executeQuery("select * from users where email='" + email + "'");
    
    if (rs1.next()){
    	 ResultSet rs2;
    	    rs2 = stmt.executeQuery("select * from users where email='" + email + "' and password='" + pass + "'");
    	    if (rs2.next()) {
    	    	session.setAttribute("email", email); 
    	    	if(email.equals("admin"))
    	    	{
    	    		 response.sendRedirect("HomeAdmin.jsp");
    	    	}
    	    	%>
    	    	Welcome <%=session.getAttribute("email") %>  
    	    	<br>
    	    	<a href="Homepage.jsp">Continue</a>
    	    	<br>
    	    	<a href="Logout.jsp">Log out</a>
    	    	<%
    	    } else {
    	        out.println("Invalid password <a href='Login.jsp'>Try again</a>");
    	    }
    }
    
    else
   		{
    	response.sendRedirect("loginCheckCR.jsp");	
        }
    	//out.println("Username doesn't exist <a href= 'createAccount.jsp'>Create An Account</a>");
   
%>

</body>
</html>