<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="logsign.css"></link>
<title>Insert title here</title>
</head>
<body>
<div>
  <form action="userval.jsp" method="post">
   <h3>User Name :</h3>
    <input type="text" name="username">

  <h3>Password :</h3>
    <input type="password" name="password">
   <input type="submit" value="Log in"> 

  <a  href="signupUser.jsp" style="color:black;text-decoration:none; align:center;"> Create New Account</a><br>
	 <a  href="forgatpassword.jsp" style="color:black;text-decoration:none; align:center;">  Forgot Password</a>
  </form>
</div>
  <%
		String reason = request.getParameter("FailReason");
		if (reason != null)
			out.println(reason);
	%>

</body>
</html>