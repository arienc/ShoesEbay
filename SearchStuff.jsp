<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>



<!DOCTYPE html>
<html>
<body background="http://www.teamarking.com/barcode/bar_background.jpg"> 
    <form method="post" action="reservations.jsp">

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shoess</title>
    </head>

    <center>    
        <table border="1" width="30%" height="30%">
            <th><font color='#D18603'>listingName</font>
            <th><font color='#D18603'>reservePrice</font></th>
            <th><font color='#D18603'>Description</font></th>
            <th><font color='#D18603'>auctionID</font></th>
                        <th><font color='#D18603'>initialPrice</font></th>
            <th><font color='#D18603'>startTime</font></th>
            
            <th><font color='#D18603'>endTime</font></th>




                <%
                ApplicationDB db = new ApplicationDB();	
            	Connection con = db.getConnection();	

                    Statement st = con.createStatement();
                    ResultSet rs;

                    PreparedStatement ps = con.prepareStatement("select * from Auction_PostItem where listingName=? OR reservePrice=? OR description=? OR  auctionID=? OR initialPrice=? OR startTime=? OR endTime=?");
                    ps.setString(1, request.getParameter("listingName"));
                    ps.setString(2, request.getParameter("reservePrice"));
                    ps.setString(3, request.getParameter("description"));
                    ps.setString(4, request.getParameter("auctionID"));
                    ps.setString(5, request.getParameter("initialPrice"));
                    ps.setString(6, request.getParameter("startTime"));
                    ps.setString(7, request.getParameter("endTime"));

                    rs = ps.executeQuery();
                    while (rs.next()) 
                    {

                        out.println("<tr>");
                       // out.println("<form action='reservations.jsp'>");
                        out.println("<td>" + rs.getString("listingName") + "<input type='hidden' name='id' value='" + rs.getString("listingName") + "'></td>");
                        out.println("<td>" + rs.getString("reservePrice") + "<input type='hidden' name='type' value='" + rs.getString("reservePrice") + "'></td>");
                        out.println("<td>" + rs.getString("description") + "<input type='hidden' name='description' value='" + rs.getString("description") + "'></td>");
                        out.println("<td>" + rs.getString("auctionID") + "<input type='hidden' name='city' value='" + rs.getString("auctionID") + "'></td>");
                        out.println("<td>" + rs.getString("initialPrice") + "<input type='hidden' name='location' value='" + rs.getString("initialPrice") + "'></td>");
                        out.println("<td>" + rs.getString("startTime") + "<input type='hidden' name='date' value='" + rs.getString("startTime") + "'></td>");
                        out.println("<td>" + rs.getString("endTime") + "<input type='hidden' name='price' value='" + rs.getString("endTime") + "'></td>");
                    //    out.println("<td>" + rs.getString("time") + "<input type='hidden' name='time' value='" + rs.getString("time") + "'></td>");


                        out.println("<td><b><form action='reservations.jsp'><select name='buy'><option value='1'>1</option><option value='2'>2</option><option value='3'>3</option><option value='4'>4</option><option value='5'>5</option></select><input type='submit' value='Submit'></form></b>");

                        out.println("</tr>");

                    }
                    
                    st.close();

                %>


                </center>
        </table>

        <br>  <br><a href=Homepage.jsp'>Back</a>
        <br><br><a href='Logout.jsp'>Log out</a>
</form>
</body> 
</html>