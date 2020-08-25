<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>like</title>
<meta name="viewport" content="width=device-width, initial-scale=1"><link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css'><link rel="stylesheet" href="css/homepage.css">
	
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">
	<!-- Salvattore -->
	<link rel="stylesheet" href="css/salvattore.css">
	<!-- Theme Style -->
<!-- 	<link rel="stylesheet" href="css/style1.css"> -->
	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<style>
.button {
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

.button1 {background-color: #4CAF50;} /* Green */
</style>
	

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
              <li><a href="Customer.jsp">Home</a></li>
              <li><a href="purchases.jsp">Purchases</a></li>
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
      
 <h1 class="font-weight-light text-center text-lg-left mt-4 mb-0">Your Purchases</h1>

<form action="likes1.jsp" method="post"  onsubmit="index.jsp">
<div id="fh5co-main">
		<div class="container">

			<div class="row">

        <div id="fh5co-board" data-columns>
        
 
        
	        	  	


<%
String url = "jdbc:mysql://localhost:3306/";
String dbName = "mydb";
String driver = "com.mysql.jdbc.Driver";
String userName = "root";
String password = "12345678";
HttpSession httpSession = request.getSession();
String c_email = httpSession.getAttribute("l_id").toString();
//System.out.println(id);
//String query2 = "insert into likes (v_id, title) values(?, ?)";
try {
    Class.forName(driver).newInstance();
    Connection conn = DriverManager.getConnection(url + dbName, userName, password);

    Statement st = conn.createStatement();
    PreparedStatement pst= (PreparedStatement) conn.prepareStatement("select * from bought_by where c_email=?");
    pst.setString(1,c_email);
    ResultSet rs = pst.executeQuery();
	 %>
 <div class="container">
 <hr class="mt-2 mb-5">
<div class="row text-center text-lg-left">

   <%
   while(rs.next()){
   	%> 
  
    	<div class="col-lg-3 col-md-4 col-6">
           <img class="img-fluid img-thumbnail" src=<%= rs.getString("url") %> alt="" width="300px" height="300px">
           <br>
           <label><%="Rs" + rs.getString("cost")%></label>
       </div>
       
       <br><br>
      <%} %>
</div>
</div>
    <%rs.close();
    // rs1.close();
     st.close();
     conn.close();
     }
     catch (Exception e) {
  	   
  	   System.out.println(e.getMessage());
     }
 
%> 
   
   </div>
</div>
</div>
   <script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<!-- Salvattore -->
	<script src="js/salvattore.min.js"></script>
	<!-- Main JS -->
	<script src="js/main1.js"></script>
	
	<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js'></script>
	<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'></script>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.slim.min.js'></script>
	 <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js'></script>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js'></script>
   
</form>
</body>
</html>