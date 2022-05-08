<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body><%@ page import ="java.sql.*" %>
<%
String question = request.getParameter("question");   
String user = (String) session.getAttribute("email");

ApplicationDB db = new ApplicationDB();	
Connection con = db.getConnection();	
Statement stmt = con.createStatement();

ResultSet rs0 = stmt.executeQuery("select * from users where email='" + user + "'");
ResultSet rs;
rs = stmt.executeQuery("select * from QA where question='" + question + "'");
if (rs.next()) 
{
	
	out.println("Question exists, please try another <a href='Homepage.jsp'>try again</a>");
} 
else 
{
	int x = stmt.executeUpdate("insert into QA values('" +user+ "','" +question+ "', 'Not Yet Answered')");
	session.setAttribute("question", question); 

	%>
	Your Question: <%=session.getAttribute("question") %>  
	<a href="showQs.jsp">Continue</a>

	<%
	    }

%>

</body>
</html>