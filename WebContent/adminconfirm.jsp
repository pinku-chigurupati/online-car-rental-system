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
String image=request.getParameter("image1");
String carname=(String)session.getAttribute("carname");
String licence=request.getParameter("licence");

String pickup=request.getParameter("pickup");
String dropoff=request.getParameter("dropoff");


String uname=(String)session.getAttribute("username");
String plans=request.getParameter("plans");

try {
Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eppro","root","Pinku@2001");
System.out.println("Connection established");

PreparedStatement pts=con.prepareStatement("select * from carbook where username=?");
pts.setString(1,uname);
ResultSet re=pts.executeQuery();
while(re.next())
{
	

	response.sendRedirect("adminbooked.jsp");
}


PreparedStatement ps=con.prepareStatement("insert into carbook values(?,?,?,?,?,?,?,?,?)");
ps.setString(1, uname);
ps.setString(2,firstname);
ps.setString(3,lastname);
ps.setString(4,licence);
ps.setString(5,image);
ps.setString(6,carname);
ps.setString(7,plans);
ps.setString(8,pickup);
ps.setString(9,dropoff);




int n =ps.executeUpdate();
if(n>0)
{



	response.sendRedirect("admincarbook.jsp?plans="+plans);
}
else {
	out.println("conformation failed");

}
}
catch (Exception e)
{
System.out.println(e);
}
%>
</body>
</html>

