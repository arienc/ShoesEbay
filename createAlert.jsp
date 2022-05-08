
    
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>


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
<%@include  file="NavigationBar.jsp" %>

	<form action="createAlertImplementer.jsp" method="POST">
	   	    <label for="SerialNumberAlert">Serial Number</label>
			<input type="text" name="SerialNumberAlert" id="SerialNumberAlert" placeholder="Enter serial number" >
			<input type="submit" value="Create an Alert for This Serial Number">
	</form>
</body>

</html>