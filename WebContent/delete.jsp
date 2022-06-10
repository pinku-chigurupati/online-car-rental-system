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
	String name=request.getParameter("id");

Connection con = null;
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eppro","root","Pinku@2001");
            PreparedStatement pstmt = con.prepareStatement("select * from cars where name=?");
           pstmt.setString(1,name);
            int c=0;
         ResultSet rs = pstmt.executeQuery();
 if(rs.next())
 {
	 PreparedStatement ps = con.prepareStatement("delete from cars where name=?");
	 ps.setString(1,name);
	 ps.executeUpdate();
	 
	 %>
	 
	 <script>
	 window.alert("deleted successfully");
	 </script>
	 
	 <%
	 response.sendRedirect("admincars.jsp");
 }
             
             


}
catch(Exception e) {
out.println(e);
}
%>
</body>
</html>