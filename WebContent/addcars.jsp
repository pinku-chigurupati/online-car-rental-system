<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  import="java.sql.*"  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ADD CARS</title>
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
    <div method="post" action="add.jsp" class="registration-form">
        <form method="post" action="add.jsp">
       
            <div class="form-group">
                <input type="text" name="cname" class="form-control item" id="name" placeholder="Car Name">
            </div>
            <div class="form-group">
                <input type="number" name="startprice" class="form-control item" id="startprice" placeholder="Starting price">
            </div>
            <div class="form-group">
                <input type="number" name="endprice" class="form-control item" id="endprice" placeholder="Ending price">
            </div>
            <div class="form-group">
                <input type="number" name="millage" class="form-control item" id="millage" placeholder="Millage">
            </div>
             <div class="form-group">
                <input type="text" name="type" class="form-control item" id="type" placeholder="type">
            </div>
            <div class="form-group">
                <input type="number" name="cc" class="form-control item" id="cc" placeholder="cc">
            </div>
            			
            <div >
                               Car Photo<br>
                                <input  type="file" name="image1"/>
                            </div>
            <div method="post" action="add.jsp" class="form-group">
                <button  action="add.jsp" id="re" type="submit" class="btn btn-block create-account">Add Car</button>
            </div>
        </form>
      
        
        
    </div>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
    <script src="assets/js/script.js"></script>
    
</body>
</html>

