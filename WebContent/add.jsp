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
String name=request.getParameter("cname");
String sprice=request.getParameter("startprice");
String eprice=request.getParameter("endprice");
String millage=request.getParameter("millage");
String cc=request.getParameter("cc");
String type=request.getParameter("type");
String image=request.getParameter("image1");



try {
Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eppro","root","Pinku@2001");
System.out.println("Connection established");

PreparedStatement ps=con.prepareStatement("insert into cars values(?,?,?,?,?,?,?)");
ps.setString(1, name);
ps.setString(2,sprice);
ps.setString(3,eprice);
ps.setString(4, millage);
ps.setString(5,cc);
ps.setString(6,type);
ps.setString(7, image);



int n =ps.executeUpdate();
if(n>0)
{
	%>
	<script>
	window.alert("sometext");
	</script>
	
	<%
	
	response.sendRedirect("admincars.jsp");
}
else {
	out.println("Adding Failed");

}
}
catch (Exception e)
{
System.out.println(e);
}
%>
</body>
</html>

