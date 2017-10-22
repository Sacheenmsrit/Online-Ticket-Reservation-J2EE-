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
	String h=request.getParameter("hint");
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/Reservation","root","");
	//PreparedStatement pstatement = conn.prepareStatement("UPDATE `UserDetails` SET `UserName`=[value-8],`Password`=[value-9],`Hint`=[value-10] WHERE 1");
	
	
String sql = "UPDATE UserDetails SET UserName=?,Password=? WHERE Hint=?";
 
PreparedStatement statement = conn.prepareStatement(sql);
statement.setString(1,u);
statement.setString(2,p);
statement.setString(3,h);

 
int rowsUpdated = statement.executeUpdate();
conn.close();
out.print("OKKK");
%>
<a href="loginaftersignin.jsp">Main Page</a>

</body>
</html>
