<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
body {
  font-family: Arial;
  font-size: 17px;
  padding: 8px;
}

* {
  box-sizing: border-box;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color: #4CAF50;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #45a049;
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

/**/
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}
</style>
</head>
<body>
<h2>Checkout Form</h2>
<% 
String urlvalue= request.getParameter("urlvalue");
System.out.println(urlvalue);
String c_email= session.getAttribute("customer_email").toString();
String url = "jdbc:mysql://localhost:3306/";
String dbName = "mydb";
String driver = "com.mysql.jdbc.Driver";
String userName = "root";
String password = "12345678";
int cost=0;
Connection conn= null;
try{
	Class.forName(driver).newInstance();
	conn = DriverManager.getConnection(url+dbName, userName,password);
	PreparedStatement pst = (PreparedStatement) conn.prepareStatement("select cost from painting where url=?");
	pst.setString(1,urlvalue);
	ResultSet rs= pst.executeQuery();
	rs.next();
	cost = rs.getInt(1);
	
	PreparedStatement pst1 = (PreparedStatement) conn.prepareStatement("insert into bought_by values(?,?,?)");
	pst1.setString(1,urlvalue);
	pst1.setString(2,c_email);
	pst1.setInt(3,cost);
	pst1.executeUpdate();
	PreparedStatement pst2 = (PreparedStatement) conn.prepareStatement("delete from painting where url=?");
	pst2.setString(1,urlvalue);
	pst2.executeUpdate();
	//System.out.println("hi"+ rs.getInt(1));
// ResultSet rs = st.executeQuery(query);
}
catch(Exception e)
{
	System.out.println(e.getMessage());
}
%>

<div class="row">
  <div class="col-75">
    <div class="container">
      <form action="/action_page.php">
      
        <div class="row">
          <div class="col-50">
            <h3>Billing Address</h3>
            <label for="fname"><i class="fa fa-user"></i> Full Name</label>
            <input type="text" id="fname" name="firstname" placeholder="John Stefan">
            <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <input type="text" id="email" name="email" placeholder="john@example.com">
            <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
            <input type="text" id="adr" name="address" placeholder="hno800 road number 4, Banjara hills">
            <label for="city"><i class="fa fa-institution"></i> City</label>
            <input type="text" id="city" name="city" placeholder="Hyderabad">

            <div class="row">
              <div class="col-50">
                <label for="state">State</label>
                <input type="text" id="state" name="state" placeholder="TS">
              </div>
              <div class="col-50">
                <label for="zip">Zip</label>
                <input type="text" id="zip" name="zip" placeholder="500034">
              </div>
               <div class="col-50">
                <label for="imageurl">imgURL</label>
                <input type="text" id="iurl" name="imageurl" placeholder="url" value=<%=urlvalue %> >
              </div>
              
            </div>
          </div>

          <div class="col-50">
            <h3>Payment</h3>
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <label for="cname">Name on Card</label>
            <input type="text" id="cname" name="cardname" placeholder="John Stefan">
            <label for="ccnum">Debit card number</label>
            <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444">
            <label for="expmonth">Exp Month</label>
            <input type="text" id="expmonth" name="expmonth" placeholder="September">
            <div class="row">
              <div class="col-50">
                <label for="expyear">Exp Year</label>
                <input type="text" id="expyear" name="expyear" placeholder="2024">
              </div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" name="cvv" placeholder="352">
              </div>
              
            </div>
          </div>
          
        </div>
        <label>
          <input type="checkbox" checked="checked" name="sameadr"> Shipping address same as billing
        </label>
        <input type="submit" value="Continue to checkout" formaction="orderplaced.jsp" class="btn">
      </form>
    </div>
    </div>
  <div class="col-25">
    <div class="container">
      <h4>Cart <span class="price" style="color:black"><i class="fa fa-shopping-cart"></i> <b></b></span></h4>
                <img name="imageurl" src=<%=urlvalue %> style="width:300px;height:300px;"/>
      <h4>Price<span class="price"></span></h4>
      <label for="cost" ><%="Rs. "+cost %> </label>
    </div>
  </div>
  
</div>
</body>
</html>