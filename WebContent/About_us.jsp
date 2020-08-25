<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
   <%-- <%@ page import="javax.portlet.PortletPreferences" %> --%>
<%-- <%@ taglib uri="/WEB-INF/tld/liferay-portlet.tld" prefix="portlet" %>
<portlet:defineObjects /> --%>

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>About ASVS ART GALLERY</title>
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
          <a href="Home.jsp">Home</a>
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
  <div class="carousel-inner">
      <div class="carousel-item active">
        <img class="d-block w-100" src="images/5.jpg" alt="First slide">
        <div class="carousel-caption d-none d-md-block">
  <h3>A premier online Indian art gallery, Indian art ideas, houses original contemporary art, traditional and modern art paintings, drawings, sketches from famous Indian artists and as well as talented upcoming Indian artists. A finest collection of acrylic painting, oil paintings and mixed media paintings aggregated in various categories including but not limited to abstract, landscape, figurative and still life paintings adorns the online art collection. An art collector has an option to choose from the beautiful collection and sort the same by artist names, art categories, art style, medium, surface and price. Go ahead browse artworks and enjoy the liberty of creating your personal art collection!!</h3>
 
  </div>
  </div>
  </div>


  <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js'></script>
</body>
</html>