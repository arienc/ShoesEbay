<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<%
	//do we have a variable in bidhistory to tell if something is a starting bid??
	String url = "jdbc:mysql://localhost:3306/auctionhouse";
	Connection conn = null;			
	PreparedStatement ps = null;
	ResultSet rs = null;
	float lastBid = 0;
	String lastBidder = null;
	try {
		
		// Class.forName("com.mysql.jdbc.Driver").newInstance(); */
		// conn = DriverManager.getConnection(url, "root", "root"); make connection
		
		int auctionID = Integer.parseInt(request.getParameter("auctionID"));
		String username = session.getAttribute("user").toString();
		
		// Insert new bid
		String query = "INSERT INTO Bid VALUES (?, ?, ?)";
		String query2 = "Select IFNULL(max(amount),(Select InitialPrice from auction where auctionID=" + auctionID + ")) from bid b inner join auction a on a.auctionID = b.auctionID where a.auctionID =" + auctionID;
		
		ps = conn.prepareStatement(query2);
		out.println(ps);
		rs = ps.executeQuery();
		
		out.println("hi");
		int increment = Integer.parseInt(request.getParameter("BidIncrement"));
		out.println(increment);
		rs.next();
		out.println("hi" + rs.getFloat(1));
		float amount = (rs.getFloat(1)) + (float)(increment);
		out.println("hi");
		
		//determine amount by getting highest bid + increment
		
		ps = conn.prepareStatement(query);
		ps.setInt(1, auctionID);
		ps.setString(2, username);
		ps.setFloat(3, amount);
		int x = 0;
		x = ps.executeUpdate();
		
		if (x < 1) {
			response.sendRedirect("error.jsp"); 
		}
		
		response.sendRedirect("auction.jsp?auctionID=" + auctionID + "&bid=done");
		
	} catch(Exception e) {
		out.print("<p>Error connecting to server.</p>");
	    e.printStackTrace();
	} finally {
		try { ps.close(); } catch (Exception e) {}
        try { conn.close(); } catch (Exception e) {}
	}
%>
<%@include file="defineWinner.jsp"  %>
