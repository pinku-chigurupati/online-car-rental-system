<%@ page import="java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try{
	Connection con=null;
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eppro","root","Pinku@2001");
	System.out.println("Connection established");
    String uname=request.getParameter("id");
  
	PreparedStatement ps=con.prepareStatement("update  booked set status=? where username=?" );
	ps.setString(1,"Approved");
	ps.setString(2,uname);
	ps.executeUpdate();
	response.sendRedirect("allbookings.jsp");
}
catch (Exception e)
{
	System.out.println(e);
}
%>
</body>
</html>