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
<strong>Total Earnings:</strong> <br>
$3,725
</body>
</html>
  