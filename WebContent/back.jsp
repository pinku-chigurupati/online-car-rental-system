<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

HttpSession ses=request.getSession(false);
if(ses!=null)
{

	
	
	RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
	rd.forward(request,response);
}

else if(ses==null) {
	
	RequestDispatcher rd=request.getRequestDispatcher("b.html");
	rd.forward(request,response);
}
%>
</body>
</html>