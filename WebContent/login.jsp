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

HttpSession ses=request.getSession(true);
ses.setAttribute("username",username);
try {
Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eppro","root","Pinku@2001");
System.out.println("Connection established");

PreparedStatement ps=con.prepareStatement("select * from registration where username=? and password=?");
ps.setString(1, username);
ps.setString(2,password);

ResultSet rs=ps.executeQuery();

if(rs.next())
{
	ses.setAttribute("username",username);
	
	String firstname=rs.getString("firstname");
	String lastname=rs.getString("lastname");
	String phone=rs.getString("phone");
	String gender=rs.getString("gender");
	String gmail=rs.getString("gmail");
	String image=rs.getString("image");
	String type=rs.getString("type");


	ses.setAttribute("firstname",firstname);
	ses.setAttribute("lastname",lastname);
	ses.setAttribute("gmail",gmail);
	ses.setAttribute("phone",phone);
	ses.setAttribute("gender",gender);
	ses.setAttribute("image",image);
	ses.setAttribute("type",type);

	
	if(rs.getString("type").equals("admin"))
	{
		 response.sendRedirect("adminhome.jsp");
	}

	else{
		response.sendRedirect("home.jsp");
	}
}
else {
	response.sendRedirect("login.html");
}

}
catch (Exception e)
{
System.out.println(e);
}
%>
</body>
</html>

