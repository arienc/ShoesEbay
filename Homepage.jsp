<!-- for Homepage.jsp-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Homepage</title>
</head>
<body>
<%@ include file="NavigationBar.jsp" %>
	
  	<p>
      Welcome to Shoes Ebay! What would you like to do today?
    </p>

	<!-- bid & sell -->
  
      <form>
         <button type="submit" formaction="bid.jsp">Bid</button>
      </form>

  		<br> 
  
      <form>
         <button type="submit" formaction="sell.jsp">Sell</button>
      </form>
  
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
  <form action="question.jsp" method="POST">
	  	 I have a question: <input type="text" name="question"/> <br/>
       <input type="submit" value="Submit"/>
  </form>
  <br> 
       <form>
         <button type="submit" formaction="showQs.jsp">View Existing Questions</button>
      </form>
  
</body>
</html>