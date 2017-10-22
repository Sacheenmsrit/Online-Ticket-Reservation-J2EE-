<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%
	String u=request.getParameter("username");
	String p=request.getParameter("password");
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/student","root","");
	PreparedStatement stmt=conn.prepareStatement("insert into stud values(?,?)");
	stmt.setString(1,u);
	stmt.setString(2,p);
	ResultSet rs;
	int i=stmt.executeUpdate();
	out.print("Record Added");
%>
<a href="loginv.jsp">Login</a>
<a href="Register.jsp">Register</a>
</body>
</html>