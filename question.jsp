<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Q & A</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%
	String question = request.getParameter("question");   
	
	ApplicationDB db = new ApplicationDB();	
	Connection con = db.getConnection();	
	Statement stmt = con.createStatement();
    
    ResultSet rs;
    rs = stmt.executeQuery("select * from QA where question='" + question + "'");
    if (rs.next()) 
    {
    	out.println("Question exists, please try another <a href='Homepage.jsp'>try again</a>");
    } else 
    {
    	int x = stmt.executeUpdate("insert into QA values('" +question+ "', 'Not Yet Answered')");
    	session.setAttribute("question", question); 
    
    	%>
    	Your Question: <%=session.getAttribute("question") %>  
    	<a href="showQs.jsp">Continue</a>

    	<%
    }
%>

</body>
</html>