<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
@import url(https://fonts.googleapis.com/css?family=Montserrat);
body {
  position: relative;
  width: 100%;
  height: 100vh;
  font-family: Montserrat;
}

.wrap {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}

.text {
  color: #fbae17;
  display: inline-block;
  margin-left: 5px;
}

.bounceball {
  position: relative;
  display: inline-block;
  height: 37px;
  width: 15px;
}
.bounceball:before {
  position: absolute;
  content: "";
  display: block;
  top: 0;
  width: 15px;
  height: 15px;
  border-radius: 50%;
  background-color: #fbae17;
  transform-origin: 50%;
  -webkit-animation: bounce 500ms alternate infinite ease;
          animation: bounce 500ms alternate infinite ease;
}

@-webkit-keyframes bounce {
  0% {
    top: 30px;
    height: 5px;
    border-radius: 60px 60px 20px 20px;
    transform: scaleX(2);
  }
  35% {
    height: 15px;
    border-radius: 50%;
    transform: scaleX(1);
  }
  100% {
    top: 0;
  }
}

@keyframes bounce {
  0% {
    top: 30px;
    height: 5px;
    border-radius: 60px 60px 20px 20px;
    transform: scaleX(2);
  }
  35% {
    height: 15px;
    border-radius: 50%;
    transform: scaleX(1);
  }
  100% {
    top: 0;
  }
}
</style>
</head>
<body>
<center>
<div class="wrap">
  <div class="loading">
    <div class="bounceball"></div>
    <div class="text">NOW LOADING</div>
  </div>
</div>
</center>
</body>
</html>