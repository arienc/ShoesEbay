

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
	String CRuser = (String) session.getAttribute("emailCR");
	
	ApplicationDB db = new ApplicationDB();	
	Connection con = db.getConnection();	
	Statement stmt = con.createStatement();
    
	 ResultSet rs0 = stmt.executeQuery("select * from CR where emailCR='" + session.getAttribute("user") + "'");
     if(rs0.next()){
    	// String x = request.getParameter("questionID");
    //	int id = Integer.parseInt(x);
    	
    	ResultSet rs1 = stmt.executeQuery("select * from QA where emailQA ="+user);
    	rs1.next();
    	out.print(rs1.getString(1)+" asked ");
    	out.print(rs1.getString(2));
    	%>
    	
    	<form method="POST">
        Answer Above Question <input type="text" name="answer"/> <br/>
        <input type="submit" value="Submit"/>
      </form>
     	<%
     	String query = "update questions set answer = '" + user+ " answered : " + request.getParameter("answer")+ "'where emailQA ="+user;
     	%>  
     	<%PreparedStatement stmt1 = con.prepareStatement(query);
     	stmt1.executeUpdate();
     	%>
    <%}
	else{
    	out.println("Cannot answer questions if you are not a Customer Representative. <a href= 'ViewQuestions.jsp'>Go back to questions page</a>");
	}%> 


    	
</body>

</html>