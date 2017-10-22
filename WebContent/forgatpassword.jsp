<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="logsign.css"></link>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
  <form action="forgatpasswordval.jsp" method="post">
    <label for="email">Email Id </label>
    <input type="text" id="email" name="emailid">

    <label for="hint">Hint</label>
    <input type="text" id="hint" name="hint">  
    <input type="submit" value="Reset Password">
  </form>
</div>

</body>

</html>