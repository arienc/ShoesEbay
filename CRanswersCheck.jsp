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


String emailQA = request.getParameter("emailQA1");   

	ApplicationDB db = new ApplicationDB();	
	Connection con = db.getConnection();	
	Statement stmt = con.createStatement();
    
    ResultSet rs;
    rs = stmt.executeQuery("select * from QA where emailQA='" + emailQA + "'");
    if (rs.next()) 
    {
    	response.sendRedirect("CRanswers.jsp");

    } 
    else 
    {
    	out.println("This user did not ask a question");
    	//response.sendRedirect("CRanswers.jsp");
    }
%>

</body>
</html>