<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="about.css">




</head>
<body>
  <div>
    <link href="contact.css" rel="stylesheet">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>CONTACT</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <div class="bs-example">
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
	        out.println(username); %></a>
        </div>
      </div>
    </nav>
  </div>
  </div>
</body>
<body >

    
     





    <img width="1500px" src="abc.jpg">
<h2 style="text-align:center;">ABOUT</h2>

<div class="card">
  
  <div class="container">
    <h4><b>CAR GURU</b></h4> 
    <p>Carguru.com is India's leading car search venture that helps users buy cars that are right for them. Its website and app carry rich automotive content such as expert reviews, detailed specs and prices, comparisons as well as videos and pictures of all car brands and models available in India. The company has tie-ups with many auto manufacturers, more than 4000 car dealers and numerous financial institutions to facilitate the purchase of vehicles.

CarGuru.com has launched many innovative features to ensure that users get an immersive experience of the car model before visiting a dealer showroom. These include a Feel The Car tool that gives 360-degree interior/exterior views with sounds of the car and explanations of features with videos; search and comparison by make, model, price, features; and live offers and promotions in all cities. The platform also has used car classifieds wherein users can upload their cars for sale, and find used cars for buying from individuals and used car dealers.

Besides the above consumer product features, CarGuru.com provides a rich array of tech-enabled tools to OE manufacturers and car dealers. These include apps for dealer sales executives to manage leads, cloud services for tracking sales performance, call tracker solution, digital marketing support, virtual online showroom and outsourced lead management operational process for taking consumers from enquiry to sale.

Our vision is to construct a complete ecosystem for consumers and car manufacturers, dealers and related businesses such that consumers have easy and complete access to not only buying and selling cars, but also manage their entire ownership experience, be it accessories, tyres, batteries, insurance or roadside assistance.

The company has expanded to Southeast Asia with the launch of Zigwheels.ph, Zigwheels.my and Oto.com. It also has a presence in the UAE with Zigwheels.ae

To diversify our product offerings we have ventured into car insurance business through InsuranceDekho.Com

Investors and shareholders
CarGuru.com, which went live in 2008, was set up by a bunch of young, enthusiastic IIT graduates. Its investors include Google Capital, Tybourne Capital, Hillhouse Capital, Sequoia Capital, HDFC Bank, Ratan Tata and Times Internet.r</p> 
  </div>
</div>














<br>
<br>
<br>
<br>
<body>


<h2 style="text-align:center">OUR TEAM</h2>

<div class="card1">
  <img src="pro.jpg" alt="mahesh" style="width:100%">
  <h1>yeswanth</h1>
  <p class="title">190031681</p>
  <p>KL University</p>
  <div style="margin: 24px 0;">
    <a href="#"><i class="fa fa-dribbble"></i></a> 
    <a href="#"><i class="fa fa-twitter"></i></a>  
    <a href="#"><i class="fa fa-linkedin"></i></a>  
    <a href="#"><i class="fa fa-facebook"></i></a> 
  </div>
  <p><button class="button10 button20">Contact</button></p>
</div>
<div class="card1">
    <img src="pro1.jpg" alt="mahesh" style="width:100%" style="border-radius: 5px;">
    <h1>jayanth</h1>
    <p class="title">190030305</p>
    <p>KL University</p>
    <div style="margin: 24px 0;">
      <a href="#"><i class="fa fa-dribbble"></i></a> 
      <a href="#"><i class="fa fa-twitter"></i></a>  
      <a href="#"><i class="fa fa-linkedin"></i></a>  
      <a href="#"><i class="fa fa-facebook"></i></a> 
    </div>
    <p><button class="button10 button20">Contact</button></p>
  </div>
  <div class="card1">
    <img src="pro2.jpg" alt="mahesh" style="width:100%" style="border-radius: 5px;">
    <h1>mahesh</h1>
    <p class="title">190030308</p>
    <p>KL University</p>
    <div style="margin: 24px 0;">
      <a href="#"><i class="fa fa-dribbble"></i></a> 
      <a href="#"><i class="fa fa-twitter"></i></a>  
      <a href="#"><i class="fa fa-linkedin"></i></a>  
      <a href="#"><i class="fa fa-facebook"></i></a> 
    </div>
    <p><button class="button10 button20">Contact</button></p>
  </div>
  


</body>




</html> 
<script>src="about.js"</script>
