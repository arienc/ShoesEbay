<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

 <%@include file="NavigationBar.jsp"%>
<%
ApplicationDB db = new ApplicationDB();	
Connection con = db.getConnection();	
Statement stmt = con.createStatement();

	String serialNumber = request.getParameter("SerialNumberAlert");
	String userAlert = session.getAttribute("email").toString();
	PreparedStatement st = con.prepareStatement("INSERT INTO Alert VALUES ('" +serialNumber + "' , '" + userAlert +  "')");
	st.executeUpdate();  
	out.println("Alert Successfully Created");
	    
%>
