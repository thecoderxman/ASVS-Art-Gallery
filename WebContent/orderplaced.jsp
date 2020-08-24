<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
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
              <li><a href="likes.jsp">Home</a></li>
              <li><a href="purchases.jsp">Purchases</a></li>
              <li><a href="frontpage.jsp">Logout</a></li>
              <li><a href="#"> <%
              	String id=(String)session.getAttribute("l_id");  
        		out.println("Welcome "+id);
%></a></li>
            </ul>
          </nav>
        </div>
      </header>

</head>
<body>
<br>
<br>
<br>
<center><h1>ORDER PLACED SUCCESSFULLY</h1></center>
<center><h1>THANK YOU FOR SHOPPING AT AVSV ART GALLERY</h1></center>
</body>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js'></script>
</html>