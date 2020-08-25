<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1"><link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css'>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css'>
<title>Artist Dashboard</title>
<link type="text/css" rel="stylesheet" href="css/homepage.css"/>


</head>
<body>
<% response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
		if(session.getAttribute("l_id")==null) 
			response.sendRedirect("Home.jsp");
		%>

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
              <li><a href="upload_paintings.jsp">Upload Paintings</a></li>
              <li><a href="Home.jsp">Logout</a></li>
              <li><a href="#"> <% 
                    		String id=(String)session.getAttribute("l_id");  
                      		out.println("Welcome "+id);
%></a></li>
            </ul>
          </nav>
        </div>
      </header>
      <br>
      <br>
      
 <h1 class="font-weight-light text-center text-lg-left mt-4 mb-0">Uploaded Paintings</h1>

<!-- <div id="fh5co-main">
		<div class="container">

			<div class="row">

        <div id="fh5co-board" data-columns> -->
        <%
String url = "jdbc:mysql://localhost:3306/";
String dbName = "mydb";
String driver = "com.mysql.jdbc.Driver";
String userName = "root";
String password = "12345678";
String a_id = null;
String query= "select * from painting where email = '" + id + "'";
try {
    Class.forName(driver).newInstance();
    Connection conn = DriverManager.getConnection(url + dbName, userName, password);
	
    Statement st = conn.createStatement();
    ResultSet rs = st.executeQuery(query); 
  	 %>
  <div class="container">
  <hr class="mt-2 mb-5">
 <div class="row text-center text-lg-left">

    <%
    while(rs.next()){
    	%> 
     	<div class="col-lg-3 col-md-4 col-6">
     		<a href=<%=rs.getString("url")%> class="d-block mb-4 h-100">
			<img class="img-fluid img-thumbnail" src=<%=rs.getString("url")%> alt="">
			</a>
			<div class="image-popup fh5co-desc"><%=rs.getString("title")%></div>
			<div class="image-popup fh5co-desc"><%="Rs" + rs.getString("cost")%></div>
												
        </div>
         
       <%} %>
</div>
</div>
   <%rs.close();
   st.close();
   conn.close();
   }
   catch (Exception e) {
   }
   %>

        </div>
        </div>
       </div>
	</div>


	<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js'></script>
	<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'></script>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.slim.min.js'></script>
	<script src="js/jquery.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/salvattore.min.js"></script>
    <script src="js/main1.js"></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js'></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js'></script>

</body>
</html>