<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%
ApplicationDB db = new ApplicationDB();	
	Connection con = db.getConnection();	
	Statement stmt = con.createStatement();
	Connection connection = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	// final String dateformat = "\"%m%d%Y\"";

		String listingName = request.getParameter("listingName");
		String material = request.getParameter("material");
		String color = request.getParameter("color");
	//	int serialnumber = Integer.parseInt(request.getParameter("serialNumber"));
		String brand = request.getParameter("brand");
		String auctionID = request.getParameter("auctionID");
		float size = Float.parseFloat(request.getParameter("size"));
		float initialPrice = Float.parseFloat(request.getParameter("InitialPrice"));
		float ReservePrice = 0;
			ReservePrice = Float.parseFloat(request.getParameter("ReservePrice"));
		int BidIncrement = Integer.parseInt(request.getParameter("BidIncrement"));	
		String startTime = request.getParameter("StartTime");
		String endTime = request.getParameter("EndTime");


	PreparedStatement st = con.prepareStatement("INSERT INTO Auction_PostItem VALUES ('" +listingName + "' , '" + BidIncrement +  "', '" +ReservePrice + "' ,'" +color + "' ,'" +auctionID + "' ,'" +initialPrice + "' ,'" +startTime + "' ,'" +endTime + "' ,)");
	st.executeUpdate();  //not working?
		
	out.println("Alert Successfully Created");
	
%>
