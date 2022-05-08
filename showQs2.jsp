<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Questions for CRs to Answer</title>
</head>
<body>
	<%
	    
		try {
	
			//Get the database connection
			ApplicationDB db = new ApplicationDB();	
			Connection con = db.getConnection();		
			//Create a SQL statement
			Statement stmt = con.createStatement();
			//Get the selected radio button from the index.jsp
			String entity = request.getParameter("command");
			//Make a SELECT query from the table specified by the 'command' parameter at the index.jsp
			String str = "SELECT * FROM QA";
			//Run the query against the database.
			ResultSet result = stmt.executeQuery(str);
			
			//Make an HTML table to show the results in:
			out.print("<table>");
			//make a row
			out.print("<tr>");
			//make a column
			out.print("<td>");
			//print out column header
			out.print("Users");
			out.print("</td>");
			//make a column
			out.print("<td>");
			out.print("Questions");
			//make a column
			out.print("<td>");
			out.print("Answers");
			//parse out the results
			while (result.next()) {
				//make a row
				out.print("<tr>");
				//make a column
				out.print("<td>");
				//Print out current bar or beer name:
				out.print(result.getString("emailQA"));
				out.print("</td>");
				out.print("<td>");
				//Print out current bar or beer name:
				out.print(result.getString("question"));
				out.print("</td>");
				out.print("<td>");
				//Print out current bar/beer additional info: Manf or Address
				out.print(result.getString("answer"));
				out.print("</td>");
				out.print("</tr>");
			}
			out.print("</table>");
			//close the connection.
			db.closeConnection(con);
		} catch (Exception e) {
			out.print(e);
		}
	%>
	
	<form action="CRanswersCheck.jsp" method="POST">
	  	 Whose question do you want to answer? (Enter their username) <input type="text" 
	  	 name="emailQA1"/> <br/>
       <input type="submit" value="Submit"/>
  </form>
  
  

</body>
</html>