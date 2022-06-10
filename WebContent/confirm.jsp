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
String carname=request.getParameter("carname");
String destini=request.getParameter("destini");

String uname=(String)session.getAttribute("username");

try {
Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eppro","root","Pinku@2001");
System.out.println("Connection established");

PreparedStatement pas=con.prepareStatement("select * from carbook where username=?");
pas.setString(1,uname);
ResultSet rs=pas.executeQuery();
if(rs.next())
{
   %><script>window.alert("You have already booked")</script><%
   }
else{
PreparedStatement ps=con.prepareStatement("insert into carbook values(?,?,?)");
ps.setString(1, uname);
ps.setString(2,carname);
ps.setString(3,destini);



int n =ps.executeUpdate();
if(n>0)
{

	session.setAttribute("carname",carname);
	session.setAttribute("destini",destini);


	response.sendRedirect("carbook.jsp");
}
}
}
catch (Exception e)
{
System.out.println(e);
}
%>
</body>
</html>

