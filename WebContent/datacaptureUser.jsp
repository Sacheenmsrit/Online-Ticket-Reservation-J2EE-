<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:redirect page="loginaftersignin.jsp" />
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>
<%@page  import="java.io.IOException"%>
<%@page import="java.io.PrintWriter" %>
<%@page  import="java.sql.Connection"%>
<%@page  import="java.sql.DriverManager"%>
<%@page  import="java.sql.ResultSet"%>
<%@page  import="java.sql.SQLException"%>
<%@page  import="javax.servlet.annotation.WebServlet"%>
<%@page  import="java.sql.Statement"%>

<%@page  import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.http.HttpServlet" %>
<%@page  import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse" %>
<%
	Connection conn = null;
	String url = "jdbc:mysql://localhost:3306/";
	String dbName = "Reservation";
	String driver = "com.mysql.jdbc.Driver";
	String userName = "root"; 
	String password = "";
	Class.forName(driver).newInstance ();
	conn = DriverManager.getConnection(url+dbName,userName,password);
	PreparedStatement ps=conn.prepareStatement("insert into UserDetails values(?,?,?,?,?,?,?,?,?,?,?)"); 
	Statement stmt = conn.createStatement();  
	String fname = request.getParameter("firstname");
	String lname = request.getParameter("lastname");
	String dob = request.getParameter("dob");
	String sex = request.getParameter("gender");
	String nation = request.getParameter("country");
	String mob = request.getParameter("mobile");
	String email = request.getParameter("email");
	String uname = request.getParameter("uname");
	String pwd = request.getParameter("pword");
	int val = 0;
	String hint = request.getParameter("hint"); 
	ps.setString(1,fname);  
	ps.setString(2,lname);  
	ps.setString(3,dob);  
	ps.setString(4,sex);  
	ps.setString(5,nation);  
	ps.setString(6,mob);  
	ps.setString(7,email);  
	ps.setString(8,uname);  
	ps.setString(9,pwd);  
	ps.setString(10,hint);
	ps.setInt(11,val);  
	int i=ps.executeUpdate();  
	
%>
<a href="loginaftersignin.jsp">LogIn</a>
<a href="Mainhomepage.jsp">Home</a>
</body>
</html>