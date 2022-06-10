<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="javax.servlet.*,java.sql.*,java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String username=request.getParameter("username");
String password=request.getParameter("password");


try {
Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eppro","root","Pinku@2001");
System.out.println("Connection established");

PreparedStatement ps=con.prepareStatement("update registration set password=? where username=?");
ps.setString(2, username);
ps.setString(1,password);

int n= ps.executeUpdate();

PreparedStatement psa=con.prepareStatement("update registration set confirmpassword=? where username=?");
psa.setString(2, username);
psa.setString(1,password);

int n1= psa.executeUpdate();

if(n>0)
{

	 response.sendRedirect("login.html");
}
else {
	response.sendRedirect("forgotpassword.html");
}

}
catch (Exception e)
{
System.out.println(e);
}
%>
</body>
</html>

