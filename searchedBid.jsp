<!-- searchedBid.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>


<!DOCTYPE html>
<html>

<style>
th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}
</style>

<body>
<%@include  file="bid.jsp" %>
<%
	ResultSet searchedAuctions;

	//select statement to get all auctions joined with smartphone, as well as the highest bid
	String selectAuctions = " select a.listingName," ;
	selectAuctions +=   	" (Select IFNULL(max(amount),'No Bids') from bid b where a.auctionid = b.auctionid) as CurrentBid, ";
	selectAuctions +=		" a.InitialPrice, a.description, a.EndTime, s.color , s.brand, s.OS, a.auctionID from smartphone s inner join auction a ON a.SerialNumber = s.SerialNumber left join bid b on a.auctionID = b.auctionid ";
	selectAuctions +=   	" WHERE isSold = 0 AND s.serialNumber LIKE \"%?serialnumber?%\" AND brand LIKE \"%?brand?%\" AND size LIKE \"%?OS?%\" AND Color LIKE \"%?Color?%\"";
	
    
    // Change connection code here:
	//Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/auctionhouse","root", "root");
     ApplicationDB db = new ApplicationDB();	
	Connection con = db.getConnection();	
	Statement stmt = con.createStatement();
    // change above code!!!! ^^ just changed rn
    
    
	try{
		 String similarAuctionOS = request.getParameter("similarAuctionOS");
		 selectAuctions = selectAuctions.replace("?OS?", similarAuctionOS);
	}catch(Exception e){}

	try{
		//replace values with what the user entered
	    selectAuctions = selectAuctions.replace("?serialnumber?", request.getParameter("SerialNumber"));
	    selectAuctions = selectAuctions.replace("?brand?", request.getParameter("brand")==null ? "" : request.getParameter("brand"));
	    selectAuctions = selectAuctions.replace("?size?", request.getParameter("size")==null ? "" : request.getParameter("size"));
	    selectAuctions = selectAuctions.replace("?Color?", request.getParameter("color")==null ? "" : request.getParameter("color"));

	    //numerical values cannot be be compared to empty string, so we must add the condition seperately 
	    if(request.getParameter("price")!=null && !request.getParameter("price").isEmpty()){
	    	selectAuctions +=  "AND (Select max(amount) from bid b where a.auctionid = b.auctionid) < " + request.getParameter("price");
	    }
	    if(request.getParameter("endDate")!=null && !request.getParameter("endDate").isEmpty()){
	    	selectAuctions +=  " AND a.EndTime < '" + request.getParameter("endDate") + "' ";
	    }
	    
	    selectAuctions +=	" GROUP BY a.auctionID ";
	    
	    //add the order by
	    selectAuctions +=	" ORDER BY " + request.getParameter("sortBy");
	    
	    PreparedStatement st = con.prepareStatement(selectAuctions);
	    //out.println(selectAuctions);
	    
	    searchedAuctions = st.executeQuery();   
	}catch(Exception e){
		out.println("Error in searching for an Auction. Make sure the search bar is being run");
				return;
	}
%>
<table>

<TR> 
                <TD><b>Listing Name</b></td>
                <TD><b>Current Bid</b></TD>
                <TD><b>Initial Price</b></TD>
                <TD><b>Description</b></TD>
                <TD><b>End Date</b></TD>
                <TD><b>Size</b></TD>
                <TD><b>Color</b></TD>
                <TD><b>Brand</b></TD>
</TR>

 <% while(searchedAuctions.next()){
 	String bidsLink = "bidHistory.jsp?auctionID=" + searchedAuctions.getString("auctionID");
 	String auctionLink = "auction.jsp?auctionID=" + searchedAuctions.getString("auctionID");
 %>
            <TR>
                <TD><a href=<%=auctionLink %>> <%= searchedAuctions.getString(1) %></a></TD>
                <TD><a href=<%=bidsLink %>> $<%= searchedAuctions.getString(2) %></a></TD>
                <TD> $<%= searchedAuctions.getString(3) %></TD>
                <TD> <%= searchedAuctions.getString(4) %></TD>
                <TD> <%= searchedAuctions.getString(5) %></TD>
                <TD> <%= searchedAuctions.getString(6) %></TD>
                <TD> <%= searchedAuctions.getString(7) %></TD>
                <TD> <%= searchedAuctions.getString(8) %></TD>
            </TR>
            <% } %> 
        </TABLE>
    </body>
</html>  