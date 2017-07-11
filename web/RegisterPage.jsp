<%-- 
    Document   : RegisterPage
    Created on : Mar 26, 2017, 9:58:50 PM
    Author     : kisha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        <link rel="stylesheet" type="text/css" href="RegisterPage.css">
        <link rel="shortcut icon" href="Pictures/Festlogo.png">
        <style>
            body{
                 background-image: url("Pictures/background.jpg");
            }
        </style>>
    </head>
    <script>
    function ValidateEmail(inputText){
        var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
        if(inputText.value.match(mailformat))
        {
        document.form1.text1.focus();
        return true;
        }
        else
        {
        alert("You have entered an invalid email address!");
        document.form1.text1.focus();
        return false;
        }
    }
    </script>
    <body>
        <form action="RegisterPage" method="POST">
        <h1 style="color:white"> <center>Sign up</center></h1>
        
            <div class="container" id="main">
	
            <label><b> Email </b></label>
            <input type="text" placeholder="Enter Email" name="email" required/><br/> 
            
            <label><b> Username</b></label>
		    <input type="text" placeholder="Enter Username" name="username" required/> <br/>
            <label><b> Password</b></label>
			 <input type="password" placeholder="Enter password" name="pwd" required/> <br/>
            <label><b>Gender </b></label>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        <input type="radio" class="gender" checked="checked" name="Sex" value="male"> Male &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			<input class="gender" type="radio" name="Sex" value="female"> Female<br/>
            <label><b>Register As </b></label>
			 <input type="radio" class="usertype" name="usertype" checked="checked" value="student"> Student &nbsp;&nbsp;<input type="radio" name="usertype" class="usertype" value="manager"> Manager <br/>
				
			<p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
			
			<div class="clearfix">
				<button type="button" class="cancelbtn">Cancel</button>
                                <button type="submit" name="xyz" onclick=ValidateEmail(email) class="signupbtn">Sign Up</button>
			</div>
                        
        </form>
    </body>
</html>
