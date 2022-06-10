<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   import="java.sql.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try {
	String uname=(String)session.getAttribute("username");

Connection con = null;
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eppro","root","Pinku@2001");
            PreparedStatement pstmt = con.prepareStatement("delete from carbook where username=?");
           pstmt.setString(1,uname);
 pstmt.executeUpdate();
 PreparedStatement pstmta = con.prepareStatement("delete from booked where username=?");
 pstmta.setString(1,uname);
pstmta.executeUpdate();
             response.sendRedirect("booked.jsp");
session.removeAttribute("c");

}
catch(Exception e) {
out.println(e);
}
%>
</body>
</html>