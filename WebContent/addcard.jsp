<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
@import url('https://fonts.googleapis.com/css2?family=Roboto&display=swap');

body {
    background: linear-gradient(to right, rgba(235, 224, 232, 1) 52%, rgba(254, 191, 1, 1) 53%, rgba(254, 191, 1, 1) 100%);
    font-family: 'Roboto', sans-serif
}

.card {
    border: none;
    max-width: 450px;
    border-radius: 15px;
    margin: 150px 0 150px;
    padding: 35px;
    padding-bottom: 20px !important
}

.heading {
    color: #C1C1C1;
    font-size: 14px;
    font-weight: 500
}

img {
    transform: translate(160px, -10px)
}

img:hover {
    cursor: pointer
}

.text-warning {
    font-size: 12px;
    font-weight: 500;
    color: #edb537 !important
}

#cno {
    transform: translateY(-10px)
}

input {
    border-bottom: 1.5px solid #E8E5D2 !important;
    font-weight: bold;
    border-radius: 0;
    border: 0
}

.form-group input:focus {
    border: 0;
    outline: 0
}

.col-sm-5 {
    padding-left: 90px
}

.btn {
    background: #F3A002 !important;
    border: none;
    border-radius: 30px
}

.btn:focus {
    box-shadow: none
}
</style>
<link rel="stylesheet" href='https://use.fontawesome.com/releases/v5.7.2/css/all.css'>
<link rel="stylesheet" href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'>
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
	        out.println(username); %></a>
        </div>
      </div>
    </nav>
<div class="container-fluid">
    <div class="row d-flex justify-content-center">
        <div class="col-sm-12">
            <div class="card mx-auto">
                <p class="heading">PAYMENT DETAILS</p>
                <form class="card-details ">
                    <div class="form-group mb-0">
                        <p class="text-warning mb-0">Card Number</p> <input type="text" name="card-num" placeholder="1234 5678 9012 3457" required size="17" id="cno" minlength="19" maxlength="19"> <img src="https://img.icons8.com/color/48/000000/visa.png" width="64px" height="60px" />
                    </div>
                    <div class="form-group">
                        <p class="text-warning mb-0">Cardholder's Name</p> <input type="text" name="name" placeholder="Name" size="17" required>
                    </div>
                    <div class="form-group pt-2">
                        <div class="row d-flex">
                            <div class="col-sm-4">
                                <p class="text-warning mb-0">Expiration</p> <input type="text" name="exp" placeholder="MM/YYYY" size="7" id="exp" minlength="7" maxlength="7" required>
                            </div>
                            <div class="col-sm-3">
                                <p class="text-warning mb-0">Cvv</p> <input type="password" name="cvv" placeholder="&#9679;&#9679;&#9679;" size="1" minlength="3" maxlength="3" required>
                            </div>
                            <div class="col-sm-5 pt-0"> <button type="submit" formaction="carbook.jsp" class="btn btn-primary"><i class="fas fa-arrow-right px-3 py-2"></i></button> </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>