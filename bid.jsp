									<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>


<!DOCTYPE html>
<html>
   <head>
      <title>Search Bid</title>
   </head>
   <body><%@include file="NavigationBar.jsp"%>
   		<h3>Search for a Bid</h3>
   		<form action="searchedBid.jsp" method="POST">
	   	    <label for="SerialNumber">Serial Number</label>
			<input type="text" name="SerialNumber" id="SerialNumber" placeholder="Enter serial number" >
            <br>
            
            <label for="Type">Type</label>
			<select name="Type" id="Type">
				<option value="" disabled selected hidden="true">Select Type</option>
				<option value="Lace">Lace</option>
				<option value="LaceLess">Laceless</option>
			</select>
            <br>
            
			<label for="size">Size</label> 
			<input type="number" name="Size" id="Size" placeholder="Shoe Size (U.S.)" > 
			<br>
            
			<label for="price">Price Less Than</label> 
			<input type="number" name="price" id="price" placeholder="Enter Price in $" >
            <br>
            
			<label for="endDate">End Date Before</label> 
			<input type="date" name="endDate" id="endDate" placeholder="YYYYMMDD" >  
 			<br>
            
			<label for="brand">Brand</label>
			<select name="brand" id="brand">
				<option value="" disabled selected hidden="true">Select brand</option>
				<option value="Nike">Nike</option>
				<option value="Skechers">Skechers</option>
				<option value="Converse">Converse</option>
				<option value="Puma">Puma</option>
				<option value="Adidas">Adidas</option>
				<option value="Reebok">Reebok</option>
				<option value="SO">SO</option>
				<option value="Other">Other</option>
			</select> 
			
			<br>
			<label for="color">Color</label>
			<input type="text" name="color" id="color" placeholder="Enter color">
			
			<input type="submit" value="Submit">
			<br>
            
			<select name="sortBy" id="sortBy">
			<option value="auctionID" disabled selected hidden="true">Sort By</option>
			<option value="auctionID">Auction ID</option>
			<option value="CurrentBid DESC">Current Bid (Ascending)</option>
			<option value="CurrentBid ASC">Current Bid (Descending </option>
			<option value="brand">Brand</option>
			<option value="description">Description</option>
			<option value="EndTime ASC">End Date (Soonest to Latest)</option>
			<option value="EndTime DESC">End Date (Latest to Soonest)</option>
			</select> 
			
			
		</form>
		
		<hr>
		
   
   </body>
   
   </html>