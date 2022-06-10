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
String firstname=request.getParameter("firstname");
String lastname=request.getParameter("lastname");
String username=request.getParameter("username");
String password=request.getParameter("password");
String confirmpassword=request.getParameter("confirmpassword");
String gender=request.getParameter("gender");
String gmail=request.getParameter("gmail");
String phone=request.getParameter("phone");
String answer=request.getParameter("answer");
String question=request.getParameter("question");
String image=request.getParameter("image1");



try {
Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eppro","root","Pinku@2001");
System.out.println("Connection established");

PreparedStatement ps=con.prepareStatement("insert into registration values(?,?,?,?,?,?,?,?,?,?,?,?)");
ps.setString(1, firstname);
ps.setString(2,lastname);
ps.setString(3,username);
ps.setString(4, password);
ps.setString(5,confirmpassword);
ps.setString(6, gender);
ps.setString(7,gmail);
ps.setString(8, phone);
ps.setString(9,question);
ps.setString(10,answer);
ps.setString(11,image);
ps.setString(12,"user");


int n =ps.executeUpdate();
if(n>0)
{
	response.sendRedirect("success.html");
}
else {
	out.println("registration failed");

}
}
catch (Exception e)
{
System.out.println(e);
}
%>
</body>
</html>

