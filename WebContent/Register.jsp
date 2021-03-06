<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style3.css">
</head>
<body>

    <div class="main">

        <h1>Sign up</h1>
        <div class="container">
            <div class="sign-up-content">
                <form action="SignUpServlet" method="post" onSubmit="return ValidateEmail()">
                    <h2 class="form-title">Register</h2>
					<div class="form-textbox">
                        <label for="name">Name</label>
                        <input type="text" name="name" scope="session"  required autocomplete="off" title="Enter Name" />
                    </div>
                    <div class="form-textbox">
                        <label for="email">Email</label>
                        <input type="email" name="email" id="email" scope="session" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required autocomplete="off" title="Enter valid Email" />
                    </div>
                    <div class="form-textbox">
                        <label for="pass">Password</label>
                        <input type="password" name="password1"/>
                    </div>
                    <br>
                    <div class="form-radio">
                        <input type="radio" name="member_level" value="artist" checked="checked" id="artist" />
                        <label for="artist">Artist</label>

                        <input type="radio" name="member_level" value="customer" id="customer" />
                        <label for="customer">Customer</label>
                    </div>

                    <div class="form-group">
                        <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                        <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                    </div>

                    <div class="form-textbox">
                        <input type="submit" name="submit" id="submit" class="submit" value="Create account" />
                    </div>
                </form>

                <p class="loginhere">
                    Already have an account ?<a href="Login.jsp" class="loginhere-link"> Log in</a>
                </p>
            </div>
        </div>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
    <script language = "Javascript">

        function emailcheck(str) {
        
        var at="@"
        var dot="."
        var lat=str.indexOf(at)
        var lstr=str.length
        var ldot=str.indexOf(dot)
        if (str.indexOf(at)==-1){
        alert("Invalid E-mail ID")
        return false
        }
        
        if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
        alert("Invalid E-mail ID")
        return false
        }
        
        if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
        alert("Invalid E-mail ID")
        return false
        }
        
        if (str.indexOf(at,(lat+1))!=-1){
        alert("Invalid E-mail ID")
        return false
        }
        
        if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
        alert("Invalid E-mail ID")
        return false
        }
        
        if (str.indexOf(dot,(lat+2))==-1){
        alert("Invalid E-mail ID")
        return false
        }
        
        if (str.indexOf(" ")!=-1){
        alert("Invalid E-mail ID")
        return false
        }
        alert("valid E-mail ID")
        return true 
        }
        
        function ValidateEmail(){
        var emailID=document.frm.txtEmail
        
        if ((emailID.value==null)||(emailID.value=="")){
        alert("Please Enter your Email Address")
        emailID.focus()
        return false
        }
        if (emailcheck(emailID.value)==false){
        emailID.value=""
        emailID.focus()
        return false
        }
        return true
        }
        </script>
            
</body>
</html>