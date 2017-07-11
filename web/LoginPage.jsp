<%-- 
    Document   : LoginPage
    Created on : Mar 24, 2017, 9:39:41 AM
    Author     : kisha  
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link rel="stylesheet" type="text/css" href="LoginPage.css">
        <link rel="shortcut icon" href="Pictures/Festlogo.png">
    </head>
    <body>
	<div id="main">
            <h1 style="text-align: center;">Login</h1>
        <form action="LoginPageServlet" method="POST">
		<div class="container">
                    <label><b> Username</b></label>
                    <input type="text" placeholder="Enter Username" name="username" required/> <br/>

                    <label><b> Password</b></label>
                    <input type="password" placeholder="Enter password" name="pwd" required/> <br/>

                    <label><b>Register As </b></label>
                        <input type="radio" class="usertype" checked="checked" name="usertype" value="student"> Student &nbsp;&nbsp;
                        <input type="radio" name="usertype" class="usertype"  value="manager"> Manager <br/>

                        <button type="button" class="cancelbtn">Reset</button>
                        <button type="submit" class="signupbtn">Login</button>
		</div>
            <div style="float :right ">
            <p>Don't remember Password? <br/>Just validate yourself. <a href="#">Forgot Password</a>.</p>
            </div>
        </form>
	</div>
    </body>
</html>
