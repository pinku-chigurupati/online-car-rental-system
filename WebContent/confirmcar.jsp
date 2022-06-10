<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  import="java.sql.*"  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.note
{
    text-align: center;
    height: 80px;
    background: -webkit-linear-gradient(left, #0072ff, #8811c5);
    color: #fff;
    font-weight: bold;
    line-height: 80px;
}
.form-content
{
    padding: 5%;
    border: 1px solid #ced4da;
    margin-bottom: 2%;
}
.form-control{
    border-radius:1.5rem;
}
.btnSubmit
{
    border:none;
    border-radius:1.5rem;
    padding: 1%;
    width: 20%;
    cursor: pointer;
    background: #0062cc;
    color: #fff;
}
</style>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

</head>
<body>
<nav class="navbar navbar-expand-md navbar-light bg-light">
      <a href="adminhome.jsp" class="navbar-brand" style="color: rgb(90, 88, 88);font-weight: bold;">CAR</a>
              <a href="adminhome.jsp" class="navbar-brand" style="color:  rgb(60, 124, 243);font-weight: bold;">GURU</a>
      <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
        <span class="navbar-toggler-icon"></span>
      </button>
  
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <div class="navbar-nav">
          <a href="adminhome.jsp" class="nav-item nav-link active" style="color: firebrick; font-weight: 500;">Home</a>
          <a href="#" class="nav-item nav-link" style="font-weight: 500;">Profile</a>
          <a href="#" class="nav-item nav-link" style="font-weight: 500;">Messages</a>
          <a href="#" class="nav-item nav-link " style="font-weight: 500;">Reports</a>
        </div>
        <div class="navbar-nav ml-auto">
        
          <a href="adminprofile.jsp" class="nav-item nav-link" style="font-weight: 500;">
          <%HttpSession ses=request.getSession(false);
			String username=(String)ses.getAttribute("username");
	        out.println(username); %></a>
        </div>
      </div>
    </nav>
    <br><br>
<form>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<% String carname=request.getParameter("id");
session.setAttribute("carname",carname);
%>
<div class="container register-form">
            <div class="form">
                <div class="note">
                    <p>Confirmation</p>
                </div>

                <div class="form-content">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="text" name="firstname" class="form-control" placeholder="First Name *" value="" required/>
                            </div>
                               <div class="form-group">
                                <input type="text" name="lastname" class="form-control" placeholder="Last Name *" value="" required/>
                            </div>
                             <div class="form-group">
                                <input type="text" name="licence" class="form-control" placeholder="Licence Number *" value="" required/>
                            </div>
                            
                             <div class="form-group">
                            Driving Licence Photo
                                <input  type="file" name="image1"/>
                            </div>
                            
                            <form action="/action_page.php">
  <label for="pickup">Pick-Up:</label>
  <input type="datetime-local" id="birthdaytime" name="pickup">
</form>
<form action="/action_page.php">
  <label for="dropoff">Drop-Off:</label>
  <input type="datetime-local" id="birthdaytime" name="dropoff">
</form>
                                                            
                <label>Current location:</label>         
<button class="btnSubmit" type="button" onclick="getLocation()"><i class="material-icons">my_location</i>
</button>

<p id="demo"></p>

<script>
var x = document.getElementById("demo");

function getLocation() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(showPosition);
  } else { 
    x.innerHTML = "Geolocation is not supported by this browser.";
  }
}

function showPosition(position) {
  x.innerHTML = "Latitude: " + position.coords.latitude + 
  "<br>Longitude: " + position.coords.longitude;
}
</script>

                        </div>
                        <div class="col-md-6">
                            <%

try {
Connection con = null;
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eppro","root","Pinku@2001");
            PreparedStatement pstmt = con.prepareStatement("select * from cars where name=?");
           pstmt.setString(1,carname);
            int c=0;
         ResultSet rs = pstmt.executeQuery();
 
             while(rs.next()) {
            	 c++;
            	 %>
            	 <link rel="stylesheet" href="about.css">
            	 <div class="card1">
		<img src="<% out.println(rs.getString("image")); %>" alt="" style="width:100%" height="210">
		<h3><% out.println(rs.getString("name")); %></h3>
		<p><% out.println(rs.getString("millage")); %> kmpl &#8226;1197 <% out.println(rs.getString("cc")); %> cc &#8226;<% out.println(rs.getString("type")); %></p>



	  </div>
            	 
            	 <%
            	 if(c%3==0)
            	 {
            		 %><br><br><%
            	 }
            	 
             }
             


}
catch(Exception e) {
out.println(e);
}%>


                    </div>

                    <button formaction="confirm.jsp" type="submit" class="btnSubmit">Continue</button>
                   
                </div>
                
            </div>
        </div>
        </form>
</body>
</html>