

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CR answer 2</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%
	String answer = request.getParameter("ANSWER");   
	String user = (String) session.getAttribute("emailQA");
	
	ApplicationDB db = new ApplicationDB();	
	Connection con = db.getConnection();	
	Statement stmt = con.createStatement();
    
	 ResultSet rs;
	    rs = stmt.executeQuery("select * from QA where emailQA='" + user + "'");
	    
	    if (rs.next()) 
	    {
	    	int x = stmt.executeUpdate("insert QA set answer= '" +answer+ "'" + 
	    	"where emailQA='" + user + "'");
	    	session.setAttribute("answer", answer);
	  
	    	// int x = stmt.executeUpdate("update into QA values('" +answer+ "'");
	    	%>
	    	Your Answer: <%=session.getAttribute("answer") %>  
	   <a href="showQs2.jsp">Return to Questions</a>

	    	<%

	    }
	    else
	    {
	    	out.println("why");
	    }

%>


    	
</body>

</html>