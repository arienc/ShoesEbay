

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CR answer</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%
	String answer = request.getParameter("ANSWER");   
	String user = request.getParameter("emailQA1");   
	// String CRuser = (String) session.getAttribute("emailCR");
	
	ApplicationDB db = new ApplicationDB();	
	Connection con = db.getConnection();	
	Statement stmt = con.createStatement();
    
	// ResultSet rs0 = stmt.executeQuery("select * from CR where emailCR='" + session.getAttribute("CRuser") + "'");
 
    	// String x = request.getParameter("questionID");
    //	int id = Integer.parseInt(x);
    	
    	ResultSet rs1 = stmt.executeQuery("select * from QA where emailQA ="+user);
    	rs1.next();
    	%>
    	
    	<form action="showQs2.jsp" method="POST">
        Answer Question <input type="text" name="NewAnswer"/> <br/>
        <input type="submit" value="Submit"/>
      </form>
     	<%
     	String xx = request.getParameter("NewAnswer");
     	int x = stmt.executeUpdate("insert into QA" + (answer) +"values " + xx + "'where emailQA=" +user);
     	session.setAttribute("answer", xx); 
     	%>  
     
     
     
    <%
    
	%> 


    	
</body>

</html>