<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Homepage</title>
</head>
<body>
Create an account for a Customer Representative:
<form action="createCRLogin.jsp" method="POST">
       Enter an email: <input type="text" name="emailCR"/> <br/>
       Enter a password: <input type="password" name="PasswordCR"/> <br/>
       <input type="submit" value="Submit"/>
     </form>
     
 Generate sales report:
 <br>
       <form>
         <button type="submit" formaction="GSR.jsp">Generate</button>
      </form>
</body>
</html>