<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  import="java.sql.*"  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="style.css">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>BOOKED CARS</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <style>
    body{
    background-color: #dee9ff;
}

.registration-form{
	padding: 50px 0;
}

.registration-form form{
    background-color: #fff;
    max-width: 600px;
    margin: auto;
    padding: 50px 70px;
    border-top-left-radius: 30px;
    border-top-right-radius: 30px;
    box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.075);
}

.registration-form .form-icon{
	text-align: center;
    background-color: #5891ff;
    border-radius: 50%;
    font-size: 40px;
    color: white;
    width: 100px;
    height: 100px;
    margin: auto;
    margin-bottom: 50px;
    line-height: 100px;
}

.registration-form .item{
	border-radius: 20px;
    margin-bottom: 25px;
    padding: 10px 20px;
}

.registration-form .create-account{
    border-radius: 30px;
    padding: 10px 20px;
    font-size: 18px;
    font-weight: bold;
    background-color: #5791ff;
    border: none;
    color: white;
    margin-top: 20px;
}

.registration-form .social-media{
    max-width: 600px;
    background-color: #fff;
    margin: auto;
    padding: 35px 0;
    text-align: center;
    border-bottom-left-radius: 30px;
    border-bottom-right-radius: 30px;
    color: #9fadca;
    border-top: 1px solid #dee9ff;
    box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.075);
}

.registration-form .social-icons{
    margin-top: 30px;
    margin-bottom: 16px;
}

.registration-form .social-icons a{
    font-size: 23px;
    margin: 0 3px;
    color: #5691ff;
    border: 1px solid;
    border-radius: 50%;
    width: 45px;
    display: inline-block;
    height: 45px;
    text-align: center;
    background-color: #fff;
    line-height: 45px;
}

.registration-form .social-icons a:hover{
    text-decoration: none;
    opacity: 0.6;
}

@media (max-width: 576px) {
    .registration-form form{
        padding: 50px 20px;
    }

    .registration-form .form-icon{
        width: 70px;
        height: 70px;
        font-size: 30px;
        line-height: 70px;
    }
}
    </style>
</head>
<body  method="post" action="add.jsp">

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
    
        </div>
        <div class="navbar-nav ml-auto">
        
          <a href="profile.jsp" class="nav-item nav-link" style="font-weight: 500;">
          <%HttpSession ses=request.getSession(false);
			String username=(String)ses.getAttribute("username");
	        out.println(username); %></a>
        </div>
      </div>
    </nav>
    <div method="post" action="add.jsp" class="registration-form">
        <form method="post" action="add.jsp">
       
           <center><h1>MY BOOKINGS</h1></center>
<%
try {
Connection con = null;
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eppro","root","Pinku@2001");
          


PreparedStatement pt = con.prepareStatement("select * from carbook where username=?");

pt.setString(1,username);

ResultSet ras = pt.executeQuery();
while(ras.next())
{
	String c=ras.getString("carname");
	session.setAttribute("c",c);
	
	
}

 String carname=(String)session.getAttribute("c");
PreparedStatement ps = con.prepareStatement("select * from cars where name=?");
ps.setString(1,carname);

         ResultSet rs = ps.executeQuery();
 
             while(rs.next()==true) {
            	
            	 %>
            	 
           
            	 <div class="card">
		<img src="<% out.println(rs.getString("image")); %>" alt="" style="width:100%" height="210">
		<h3><% out.println(rs.getString("name")); %></h3>
		<p class="title">Rs <% out.println(rs.getString("startprice")); %> - <% out.println(rs.getString("endprice")); %> Lakh*</p>
		<p><% out.println(rs.getString("millage")); %> kmpl &#8226;1197 <% out.println(rs.getString("cc")); %> cc &#8226;<% out.println(rs.getString("type")); %></p>
		
		<p><button  formaction="cancel.jsp">cancel</button></p>
		
	  </div>
            	
            	
            	 
            	 <%
            	 
            	 
             }



             


}
catch(Exception e) {
out.println(e);
}%>

        </form>
      
        
        
    </div>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
    <script src="assets/js/script.js"></script>
    
</body>
</html>

