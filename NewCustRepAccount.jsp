<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New CR Account</title>
</head>
<body>
<h3>Create an account for a Customer Representative:</h3>
<form action="createCRLogin.jsp" method="POST">
       Enter an email: <input type="text" name="emailCR"/> <br/>
       Enter a password: <input type="password" name="PasswordCR"/> <br/>
       <input type="submit" value="Submit"/>
     </form>
</body>
</html>