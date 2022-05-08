
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Auction</title>
</head>
<body>
 <%@include file="NavigationBar.jsp"%>
 <h3>Auction an Item:</h3>
<div class="content">
		<form action="sellImplementer.jsp" method="POST">
		<input type="text" name="listingName" id="listingName" placeholder="Enter listing name" required> <br>
			<input type="text" name="SerialNumber" id="SerialNumber" placeholder="Enter serial number" required> <br>
			<input type="text" name="material" id="material" placeholder="Enter material" required> <br>
			<input type="number" name="size" id="size" placeholder="Enter size" required> <br>
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
			</select>  <br> 
	
			
			
			<label for="color">Color</label>
			<input type="text" name="color" id="color" placeholder="Enter color" required> <br>
			<label for="StartTime">Start Date and Time</label>
			<input type="text" name="StartTime" id="StartTime" placeholder="mmddyyyy" required>
			<br>
			<label for="EndTime">End Date and Time</label>
			<input type="text" name="EndTime" id="EndTime" placeholder="mmddyyyy" required> <br>
			<label for="ReservePrice">Reserve Price (hidden from bidders)</label>
			<input type="number" name="ReservePrice" placeholder="0.00" min="0.00" required> <br>	
			<label for="InitialPrice">Initial Price</label>
			<input type="number" name="InitialPrice" placeholder="0.00" min="0.00" required> <br>	
			<label for="Bid Increment">Bid Increment</label>
			<input type="number" name="BidIncrement" placeholder="0.00" min="0.00" required> <br>	
			<input type="submit" value="Submit">
		</form>
	</div>
</body>
</html>
