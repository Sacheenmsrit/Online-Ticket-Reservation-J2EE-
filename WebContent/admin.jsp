<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="logsign.css"></link>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<div>
  <form action="userval.jsp" method="post">
    <label for="uname"><h3>User Name :</h3></label>
    <input type="text" id="uname" name="username">

    <label for="pword"><h3>Password :</h3></label>
    <input type="password" id="pword" name="password">
   <input type="submit" value="Log in"> 
  	 
   
	 <a  href="/home/sachin/workspace/kulankar1/WebContent/user.jsp" style="color:white;text-decoration:none; align:center;"><button class="button"><b>Forgot Password</button></b></a>
	
  </form>
</div>

</body>
</html>