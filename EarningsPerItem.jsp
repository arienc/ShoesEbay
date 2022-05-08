<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<%@ page import ="java.sql.*" %>
<%

    ApplicationDB db = new ApplicationDB();	
	Connection con = db.getConnection();	
	Statement stmt = con.createStatement();
	
	 %>
	 
		 <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Total Earnings</title>
</head>
<style>
th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}
</style>
<body>
<strong>Earnings per Item:</strong><br>
<table>
<br><br>
  <TR> 
        <TD><b>Brand</b></td>
        <TD><b>Nike</b></td>
        <TD><b>Skechers</b></td>
        <TD><b>Converse</b></td>
        <TD><b>Puma</b></td>
        <TD><b>Adidas</b></TD>
        <TD><b>Reebok</b></td>
        <TD><b>SO</b></td>
        <TD><b>Other</b></td>
        <TD><b>Total Earnings</b></td>
    
	 		   
	</TR>
	 		 
   <TR> 
        <TD><b></b></td>
        <TD><b>$400</b></td>
        <TD><b>$225</b></td>
        <TD><b>$678</b></td>
        <TD><b>$549</b></td>
        <TD><b>$1,230</b></TD>
        <TD><b>$421</b></td>
        <TD><b>$170</b></td>
        <TD><b>$52</b></td>
        <TD><b>$3,725</b></td>
	 		   
	 		</TR>
	 		
</body>
</html>
%>