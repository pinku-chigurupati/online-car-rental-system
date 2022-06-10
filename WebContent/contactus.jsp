<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    import="java.sql.*,javax.servlet.*" pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>CONTACT</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-expand-md navbar-light bg-light">
				<a href="home.jsp" class="navbar-brand" style="color: rgb(90, 88, 88);font-weight: bold;">CAR</a>
                <a href="home.jsp" class="navbar-brand" style="color:  rgb(60, 124, 243);font-weight: bold;">GURU</a>
				<button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
					<span class="navbar-toggler-icon"></span>
				</button>
		
				<div class="collapse navbar-collapse" id="navbarCollapse">
					<div class="navbar-nav">
						<a href="home.jsp" class="nav-item nav-link active" style="color: firebrick; font-weight: 500;">Home</a>
						<a href="#" class="nav-item nav-link" style="font-weight: 500;">Profile</a>
						<a href="#" class="nav-item nav-link" style="font-weight: 500;">Messages</a>
						<a href="#" class="nav-item nav-link " style="font-weight: 500;">Reports</a>
					</div>
					<div class="navbar-nav ml-auto">
						<a href="profile.jsp" class="nav-item nav-link" style="font-weight: 500;">
						<%HttpSession ses=request.getSession(false);
			String username=(String)ses.getAttribute("username");
	        out.println(username); %>
						</a>
					</div>
				</div>
			</nav>
<%

String firstname=request.getParameter("firstname");
String lastname=request.getParameter("lastname");
String gmail=request.getParameter("gmail");
String comment=request.getParameter("comment");



try {
Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eppro","root","Pinku@2001");
System.out.println("Connection established");

PreparedStatement ps=con.prepareStatement("insert into contactus values(?,?,?)");
ps.setString(1, username);
ps.setString(2,gmail);
ps.setString(3,comment);


int n =ps.executeUpdate();

if(n>0)
{
	%><h2 style="text-align:center; ">
  thanks for contacting us</h2>
  <%
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