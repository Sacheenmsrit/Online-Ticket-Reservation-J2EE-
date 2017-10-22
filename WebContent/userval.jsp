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
<%@ page import ="javax.sql.*" %>
<%
	String u=request.getParameter("username");
	String p=request.getParameter("password");
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/Reservation","root","");
	Statement stmt=conn.createStatement();
	ResultSet rs=stmt.executeQuery("select * FROM UserDetails");
	boolean flag=false;
	while(rs.next())
	{
		if(rs.getString(8).equals(u)&&rs.getString(9).equals(p))
				{
					flag=true;
				}
	}
	conn.close();
	if(flag)
	{
%>
		<a href="resetpassword.jsp">Go to Main Page</a>
<%
	}
	else
	{
		out.print("Invalid user");		
%>
		<a href="user.jsp">Try again</a>
<%
	}
%>


</body>
</html>