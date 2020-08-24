
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en" >
<head>
<meta charset="UTF-8">
<title>ASVS ART GALLERY</title>
<meta name="viewport" content="width=device-width, initial-scale=1"><link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css'>
<link rel="stylesheet" href="css/homepage.css">


</head>

<header class="navbar navbar-inverse navbar-fixed-top bs-docs-nav" role="banner">
<div class="container">
<div class="navbar-header">
  <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
    <span class="sr-only">Toggle navigation</span>
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
  </button>
  <a href="./" class="navbar-brand">ASVS ART GALLERY</a>
</div>
<nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
  <ul class="nav navbar-nav navbar-right">
  <li>
      <a href="frontpage.jsp">Home</a>
    </li>
    <li>
      <a href="Register.jsp">SignUp/Login</a>
    </li>
    
    <li>
      <a href="About_us.jsp">About Us</a>
    </li>
  </ul>
</nav>
</div>
</header>

<style>
.carousel-item {
height: 100vh;
min-height: 300px;
background: no-repeat center center scroll;
-webkit-background-size: cover;
-moz-background-size: cover;
-o-background-size: cover;
background-size: cover;
}
.carousel-caption {
bottom: 270px;
}

.carousel-caption h5 {
font-size: 45px;
text-transform: uppercase;
letter-spacing: 2px;
margin-top: 25px;
}

.carousel-caption p {
width: 75%;
margin: auto;
font-size: 18px;
line-height: 1.9;
}

.navbar-light .navbar-brand {
color: #fff;
font-size: 25px;
text-transform: uppercase;
font-weight: bold;
letter-spacing: 2px;
}

.navbar-light .navbar-nav .active > .nav-link, .navbar-light .navbar-nav .nav-link.active, .navbar-light .navbar-nav .nav-link.show, .navbar-light .navbar-nav .show > .nav-link {
color: #fff;
}

.navbar-light .navbar-nav .nav-link {
color: #fff;
}

.navbar-toggler {
background: #fff;
}

.navbar-nav {
text-align: center;
}

.nav-link {
padding: .2rem 1rem;
}

.nav-link.active,.nav-link:focus{
color: #fff;
}

.navbar-toggler {
padding: 1px 5px;
font-size: 18px;
line-height: 0.3;
}

.navbar-light .navbar-nav .nav-link:focus, .navbar-light .navbar-nav .nav-link:hover {
color: #fff;
}


</style>

<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
<!--     <ol class="carousel-indicators">
<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
</ol> -->
<div class="carousel-inner">
  <div class="carousel-item active">
    <img class="d-block w-100" src="images/4.jpg" alt="First slide">
    <div class="carousel-caption d-none d-md-block">
<h3>Explore the finest art like never before </h3>
<h2>Login to Get Started</h2>

</div>
</div>
</div>

<!--   <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
  <span class="sr-only">Previous</span>
</a>
<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
  <span class="carousel-control-next-icon" aria-hidden="true"></span>
  <span class="sr-only">Next</span>
</a>
</div> -->


<script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js'></script>
</body>
</html>
