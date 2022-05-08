<!-- for Homepage.jsp-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Homepage</title>
</head>
<body>
<%@ page import ="java.sql.*" %>


    	<div id="content">
		<div id="nav">
			<h3>Shoes Ebay</h3>
			<ul>
				
				<li><a href="sell.jsp">Auction an Item</a></li>
				<li><a href="bid.jsp">Bid an Item</a></li>
				<li><a href="createAlert.jsp">My Alerts</a></li>
						<li><a href="question.jsp">Ask a Question</a></li>
				<li><a href="showQs.jsp">View Existing Questions</a></li>
				<li><a href="Logout.jsp">Logout</a></li>
				<%
					
				%>
			
				<%
					
				%>
			</ul>
		</div>
		
	<div id="searchbar">
		<form action="SearchStuff.jsp" method="GET">
			<!-- TODO: add action for search bar form -->
			Search Shoes: <input type="text" name="title" /> <input
				type="submit" value="Submit" /> 
				
				<br></br> <select name="genre">
				<option selected="selected" disabled="disabled">Genre</option>
				<option value="action">Action</option>
				<option value="adventure">Adventure</option>
				<option value="animation">Animation</option>
				<option value="comedy">Comedy</option>
				<option value="documentary">Documentary</option>
				<option value="drama">Drama</option>
				<option value="horror">Horror</option>
				<option value="mystery">Mystery</option>
				<option value="romance">Romance</option>
				<option value="scifi">Sci-fi</option>
				<option value="thriller">Thriller</option>
			</select> <select name="duration">
				<option selected="selected" disabled="disabled">Duration</option>
				<option value="short">Short ( &lt30 min.)</option>
				<option value="medium">Medium (30 - 1hr30 min.)</option>
				<option value="long">Long ( &gt1hr30 min.)</option>
			</select> <select name="format">
				<option selected="selected" disabled="disabled">Format</option>
				<option value="bluray">BluRay</option>
				<option value="dvd">DVD</option>
				<option value="vhs">VHS</option>
			</select>
		</form>
	</div>


	<!-- bid & sell -->
  <br>

  
  <!--
  <form method="post" action="bid.jsp">
		  <input type="radio" name="command" value="bid"/>I would like to bid.
    	<br>
		  <input type="submit" value="submit" />
		</form>
    
    <form method="post" action="sell.jsp">
		  <input type="radio" name="command" value="sell"/>I would like to sell.
		  <br>
		  <input type="submit" value="submit" />
		</form>
		<br>
  -->
  
  <!-- questions -->
 

  
</body>
</html>