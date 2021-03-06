<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
    <%HttpSession ses=request.getSession(false); 
    String uname=(String)session.getAttribute("username");
    if(uname!=null)
    {%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>CAR GURU</title>
	<link href="https://fonts.googleapis.com/css2?family=Merienda&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap" rel="stylesheet">
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<link href="style.css" rel="stylesheet">
</head>
<body >
<form method="post">
	<nav class="navbar navbar-expand-lg navbar-light fixed-top">
		<div class="container">
			<h2 class="navbar-brand" href="#" style="color: rgb(255, 255, 255);">car</h2> 
			<h2 class="navbar-brand" href="#" style="color: rgb(60, 124, 243);">guru</h2> 
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto">
					<!-- <li class="nav-item active">
						<a class="nav-link" href="home.jsp" style="color: rgb(241, 155, 42);">Home</a>
					</li> -->
					<li class="nav-item">
						<a class="nav-link" href="about.jsp">About</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="cars.jsp">CARS</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="adminbooked.jsp">my bookings</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="contact.jsp">Contact</a>
                    </li>
                    <li class="nav-item">
                    <a class="nav-link" href="profile.jsp" style="color: rgb(241, 155, 42);">
                    <%   
						
  							String username=(String)ses.getAttribute("username");
						out.println(username);
						%></a>
						
						
					</li>
					  <li class="nav-item">
					
						<a class="nav-link" href="logout.jsp">Logout</a>
					</li> 
					


					
				</ul>
			</div>
		</div>
	</nav>
	<div class="carousel slide" data-ride="carousel" id="carouselExampleIndicators">
		<ol class="carousel-indicators">
			<li class="active" data-slide-to="0" data-target="#carouselExampleIndicators"></li>
			<li data-slide-to="1" data-target="#carouselExampleIndicators"></li>
			<li data-slide-to="2" data-target="#carouselExampleIndicators"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img alt="First slide" class="d-block w-100" src="a.jpg">
				<div class="carousel-caption d-none d-md-block">
					<h5 class="animated bounceInRight " style="animation-delay: 1s;color: rgb(255, 255, 255);">CAR GURU</h5>
					<h2 class="animated bounceInLeft" class="p" style="animation-delay: 2s;color: rgb(255, 255, 255);">Your satisfaction is our priority</h2>
				</div>
			</div>
			<div class="carousel-item">
				<img alt="Second slide" class="d-block w-100" src="l.jpg">
				<div class="carousel-caption d-none d-md-block">
					<h5 class="animated slideInDown" style="animation-delay: 1s"></h5>
					<h2 class="animated bounceInLeft" class="p" style="animation-delay: 2s;color: rgb(255, 255, 255);">Our cars will be your best decision.</h2>
					<p class="animated zoomIn" style="animation-delay: 3s"><a href="#">More Info</a></p>
				</div>
			</div>
			<div class="carousel-item">
				<img alt="Third slide" class="d-block w-100" src="ja.jpg">
				<div class="carousel-caption d-none d-md-block">
					<h5 class="animated zoomIn" style="animation-delay: 1s">Know more, shop wisely</h5>
					<p class="animated fadeInLeft" style="animation-delay: 2s"></p>
					<p class="animated zoomIn" style="animation-delay: 3s"><a href="#">More Info</a></p>
				</div>
			</div>
		</div><a class="carousel-control-prev" data-slide="prev" href="#carouselExampleIndicators" role="button"><span aria-hidden="true" class="carousel-control-prev-icon"></span> <span class="sr-only">Previous</span></a> <a class="carousel-control-next" data-slide="next" href="#carouselExampleIndicators" role="button"><span aria-hidden="true" class="carousel-control-next-icon"></span> <span class="sr-only">Next</span></a>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js">
	</script> 
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js">
	</script> 
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js">
	</script>
	<br>
	
	<br>
	<br>
	<br>
	

	
<br>
<h2 style="margin-left: 3cm;">Recent Test Drives</h2>

<hr class="solid">
  <br>
    <div class="card">
		<img src="t3.jpeg" alt="John" style="width:100%">
		<h2>Toyota Prius</h2>
		<p class="title">Kyree Williams</p>
		<p>The Toyota Prius Prime mates the Prius??? normal hybrid capabilities with the ability to charge from a wall plug and a modest electric range, making it ...</p>
		
		<p><button>View</button></p>
	  </div>

	  <div class="card">
		<img src="t4.jpeg" alt="John" style="width:100%">
		<h2> Camry Hybrid</h2>
		<p class="title">Kyree Williams</p>
		<p>The Toyota Camry Hybrid is a midsize sedan, much like the Honda Accord Hybrid and Hyundai Sonata Hybrid. For 2021, it benefits from a facelift and a n...</p>
		
		<p><button>View</button></p>
	  </div>

	  <div class="card">
		<img src="t5.jpeg" alt="John" style="width:100%">
		<h2>Volkswagen Arteon</h2>
		<p class="title">Kyree Williams</p>
		<p>The Volkswagen Arteon is a four-door coupe that also serves as the brand???s styling and prestige showcase. Introduced in 2019 to replace the CC, it rec...</p>
		
		<p><button>View</button></p>
	  </div>

	  <br>
	  <br>
	  <br>

	  <h2 style="margin-left: 3cm;">Recent Previews</h2>

<hr class="solid">
<br>
	  <div class="card">
		<img src="t.jpeg" alt="John" style="width:100%">
		<h2>Toyota Camry</h2>
		<p class="title">Stephen Edelstein</p>
		<p>The Toyota Camry has long been many new-car buyers??? default choice???but not because it???s interesting. Reliability and practicality have traditionally b...</p>
		
		<p><button>View</button></p>
	  </div>

	  <div class="card">
		<img src="t1.jpeg" alt="John" style="width:100%">
		<h2> Hyundai Palisade</h2>
		<p class="title">Christian Wardlaw</p>
		<p>Critically acclaimed and selling well, the 2021 Hyundai Palisade enters its sophomorendard year capabil...</p>
		
		<p><button>View</button></p>
	  </div>


	  <div class="card">
		<img src="t2.jpeg" alt="John" style="width:100%">
		<h2> Toyota Camry</h2>
		<p class="title">George Kennedy</p>
		<p>Midsize trucks are in a funny place. Despite being smaller and less capable than their full-size counterparts, they often command prices that are near...</p>
		
		<p><button>View</button></p>
	  </div>
	  
	  <%
  String a[]=new String[100];
try {
Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eppro","root","Pinku@2001");
System.out.println("Connection established");


PreparedStatement ps1=con.prepareStatement("select * from previews order by id desc");
ResultSet rs=ps1.executeQuery();
int i=0;
while(rs.next())
{
	a[i]=rs.getString("carname");
	i++;
}

for(int j=0;j<3;j++)
{
	String s=a[j];
	PreparedStatement ps=con.prepareStatement("select * from cars where name=?");
	ps.setString(1,s);
	ResultSet rs1=ps.executeQuery();
	%>
	
	<%

}}
catch (Exception e)
{
System.out.println(e);
}
    %>
	  
	   
	   
<br>

<br>
<br>
<br>
<br>
<h2 style="text-align: center;">Popular Makers</h2>
<br>
<br>
<div class="card1">
  
	<div class="container">
	  <h4><b></b></h4>
	  <div class="hai ">
		  <a href="#">INFINITI</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		  <a href="#">Chevrolet</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		  <a href="#">Toyota</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		  <a href="#">GMC</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		  <a href="#">TATA</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		  <a href="#">MAHINDRA</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		  <a href="#">volkswagen</a><br><br>
		  <a href="#">TESLA</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		  <a href="#">FORCE</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		  <a href="#">jagguar</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		  <a href="#">land rover</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		  <a href="#">kia</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		  <a href="#">hundai</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		  <a href="#">prosche</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  </div> 
	  </div>
  </div>


<br>
<br>
<br>















	  <section id="footer">
		<div class="container">
			<div class="row text-center text-xs-center text-sm-left text-md-left">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<h5>Company</h5>
					<ul class="list-unstyled quick-links">
						<li><a href="about.html"><i class="fa fa-angle-double-right"></i>About</a></li>
						<li><a href=""><i class="fa fa-angle-double-right"></i>Careers</a></li>
						<li><a href=""><i class="fa fa-angle-double-right"></i>Investor Relations</a></li>
						<li><a href=""><i class="fa fa-angle-double-right"></i>Price Trends</a></li>
						<li><a href=""><i class="fa fa-angle-double-right"></i>Blog</a></li>
					</ul>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<h5>Terms</h5>
					<ul class="list-unstyled quick-links">
						<li><a href=""><i class="fa fa-angle-double-right"></i>Terms of Use</a></li>
						<li><a href=""><i class="fa fa-angle-double-right"></i>Privacy</a></li>
						<li><a href=""><i class="fa fa-angle-double-right"></i>Interest-Based Ads</a></li>
						<li><a href=""><i class="fa fa-angle-double-right"></i>Security</a></li>
						<li><a href=""><i class="fa fa-angle-double-right"></i>Delivery</a></li>
					</ul>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<h5>Quick links</h5>
					<ul class="list-unstyled quick-links">
						<li><a href=""><i class="fa fa-angle-double-right"></i>Home</a></li>
						<li><a href=""><i class="fa fa-angle-double-right"></i>About</a></li>
						<li><a href=""><i class="fa fa-angle-double-right"></i>FAQ</a></li>
						<li><a href=""><i class="fa fa-angle-double-right"></i>Get Started</a></li>
						<li><a href="" title="Design and developed by"><i class="fa fa-angle-double-right"></i>Imprint</a></li>
					</ul>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-5">
					<ul class="list-unstyled list-inline social text-center">
						<li class="list-inline-item"><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-facebook"></i></a></li>
						<li class="list-inline-item"><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-twitter"></i></a></li>
						<li class="list-inline-item"><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-instagram"></i></a></li>
						<li class="list-inline-item"><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-google-plus"></i></a></li>
						<li class="list-inline-item"><a href="https://www.fiverr.com/share/qb8D02" target="_blank"><i class="fa fa-envelope"></i></a></li>
					</ul>
				</div>
				<hr>
			</div>	
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-2 text-center text-white">
					<p><u><a href="home.jsp"></a></u> </p>
					<p class="h6">?? All right Reversed.<a class="text-green ml-2" href="home.jsp" target="_blank">CARGURU</a></p>
				</div>
				<hr>
			</div>	
		</div>
	</section>
	</form>
</body>
</html>  

<%} 
    else {
    	response.sendRedirect("b.html");
    }
%>
