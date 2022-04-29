<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Check</title>
</head>
<body>
	<%@ page import ="java.sql.*" %>
<%
    String email = request.getParameter("email");   
    String pass = request.getParameter("password");
    String name = request.getParameter("name");
    String email_ACR = request.getParameter("email_ACR");   
    String password_ACR = request.getParameter("password_ACR");
    String name_ACR = request.getParameter("name_ACR");
    
    ApplicationDB db = new ApplicationDB();	
	Connection con = db.getConnection();	
	Statement stmt = con.createStatement();
	
    ResultSet rs1;
    rs1 = stmt.executeQuery("select * from users where email='" + email + "'");
  
    if (rs1.next())
    {
    	    ResultSet rs2;
    	    rs2 = stmt.executeQuery("select * from users where email='" + email + "' and password='" + pass + "' and name='" + name + "'");
    	    	
					if (rs2.next()) {
					    	    	session.setAttribute("name", name); 
					    	    	%>
					    	    	Welcome <%=session.getAttribute("name") %> 
					    	    	    	<br>
					    	    	
					    	<a href="Homepage.jsp">Continue</a>
					    	<br> 
					    	    	<a href="Logout.jsp">Log out</a>
					    	    	<%
		    	    } 
					else 
					{
		    	        out.println("Invalid password <a href='Login.jsp'>Try again</a>");
		    	    }
    }
    else{
    	out.println("Username doesn't exist <a href= 'createAccount.jsp'>Create An Account</a>");
    }
%>
    ResultSet rs3;
    rs3 = stmt.executeQuery("select * from Admin_CustomerRep where email_ACR='" + email_ACR + "'");
  
     if(rs3.next())
    {<% 
    	    ResultSet rs4;
    	    rs4 = stmt.executeQuery("select * from Admin_CustomerRep where email_ACR='" + email_ACR + "' and password_ACR='" + password_ACR + "' and name_ACR='" + name_ACR + "'");
    	    	
    	    if (rs4.next()) {
    	    	session.setAttribute("name_ACR", name_ACR); 
    	    	%>
    	    	Welcome <%=session.getAttribute("name_ACR") %> 
    	    	    	<br>
    	    	
    	<a href="Homepage.jsp">Continue</a>
    	<br> 
    	    	<a href="Logout.jsp">Log out</a>
    	    	<%
		} 
			else 
			{
			    out.println("Invalid password <a href='Login.jsp'>Try again</a>");
			}
		}
    
     else
		{
		out.println("Username doesn't exist <a href= 'createAccount.jsp'>Create An Account</a>");
		}
		
		%>
</body>
</html>