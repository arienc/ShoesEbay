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
String answer = request.getParameter("answer");  


	ApplicationDB db = new ApplicationDB();	
	Connection con = db.getConnection();	
	Statement stmt = con.createStatement();
    
    ResultSet rs;
    rs = stmt.executeQuery("select * from QA where question='" + question + "'");
    if (rs.next()) 
    {
    	response.sendRedirect("CRanswers.jsp"); //NOT WORKING RN

    } else 
    {
    	//out.println("Question does not exist");
    	response.sendRedirect("CRanswers.jsp");
    }
%>

</body>
</html>