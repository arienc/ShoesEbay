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
<strong>Earnings per Item Type:</strong><br>
<table>
<br><br>
  <TR> 
        <TD><b>Shoe Type</b></td>
        <TD><b>Boots</b></td>
        <TD><b>Dress Shoes</b></td>
        <TD><b>Flip Flops</b></td>
        <TD><b>Heels</b></td>
        <TD><b>Sandals</b></td>
        <TD><b>Sneakers</b></td>
        <TD><b>Total Earnings</b></td>
    
	 		   
	</TR>
  
   <TR> 
        <TD><b></b></td>
        <TD><b>$637</b></td>
        <TD><b>$210</b></td>
        <TD><b>$56</b></td>
        <TD><b>$589</b></td>
        <TD><b>$491</b></td>
        <TD><b>$1,742</b></td>
        <TD><b>$3,725</b></td>
    
	 		   
	</TR>
	 		 

</body>
</html>