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
String username=request.getParameter("id");
try {
Connection con = null;
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eppro","root","Pinku@2001");
PreparedStatement pstmt = con.prepareStatement("delete from registration where username=?");
  pstmt.setString(1,username);
  pstmt.executeUpdate();
  response.sendRedirect("users.jsp");  
}
catch(Exception e) {
out.println(e);
}%>

</body>
</html>