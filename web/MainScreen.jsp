<%-- 
    Document   : MainScreen
    Created on : Feb 15, 2017, 11:51:26 PM
    Author     : kisha
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="CollegeFestManagementPack.DBconnect"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>College Festival Management</title>
        <link rel="shortcut icon" href="Pictures/Festlogo.png">
        <style>     
            body{
                 background-image: url("Pictures/background.jpg");
            }
            #container{
                height: 1880px;
                border: 2px double black;
                border-radius: 15px;
            }
            
            #header{
               text-align: center;
               font-size: 24px;
               font-family: verdana;
               margin-top: 5px;
               height: 90px;
               width: 1880px;
               background-color:  #00324d; 
               border-radius: 10px;
               text-align: center;
               text-height: max-size;
               vertical-align: middle;
               border: 1px double grey;
            }
            
            
            #titleTextDiv{
                margin-top: 20px;
                font-family: BATMAN;
                font-size: 30px;
                color: red;
            }
            
            #MainBoard{
                margin-top: 10px;
                height: 350px;
                width: 980px;
                border-radius: 15px;
            }
            
            #blank{
                height: 15px;
            }
            
            #HomeBtnContainer{
                float: left;
                margin-left: 20px;
                padding-top: 2px;
            }
* {
margin: 0;
padding: 0;
list-style-type:none;
}

header li {
	float: left;
	list-style-type:none;
	border-right: 1px solid #252525;
}
header li a {
	float: left;
	width: 98px;
	height: 12px;
	padding: 14px 7px;
	color: #fff;
	text-decoration: none;
	text-align: center;
	text-transform: uppercase;
	font-weight: 700;
	letter-spacing: 1px;
	font: normal 62.5% "proxima-nova-alt", Helvetica, Arial, sans-serif;
}
#show-nails:hover div.thumbnail-peekaboo {
	display:block;
}
header div.thumbnail-peekaboo {
	display:none;
	height:165px;
	width:980px;
	top:40px;
	left:0;
	background:#222;
	background-size:100px 100px;
	position:relative;
}

.thumb {
	height:140px;
	width:210px;
	top:136px;
	left:12px;
	position:relative;
	background-size:contain;
	box-shadow:-12px 0 0 12px #000;
}
.thumb:last-of-type {
  box-shadow:0 0 0 12px #000;
}
.thumb:after {
  content:attr(title);
  font:normal normal 20pt 'impact';
  position:relative;
}
.thumb:hover {
	-webkit-filter: grayscale(80%);
	-moz-filter: grayscale(80%);
	-ms-filter: grayscale(80%);
	-o-filter: grayscale(80%);
	filter: grayscale(80%);
	filter: url(grayscale.svg#greyscale);
	filter: gray;
}
@-webkit-keyframes TMNT {
	0%  { left: 0px; }
	100% { left: -1200px; }
}
a.prev,a.next {
	height:91px;
        margin-left: 250px;
	position:absolute;
	width:43px;
	margin-top:-200px;
	opacity:0.6;
	text-indent:-99999px;
	cursor:pointer;
	-webkit-transition:opacity 200ms ease-out;
}
a.prev:hover,a.next:hover {
	opacity:1;
}
.prev {
	left:60px;
        border-radius: 15px;
        color: black;
	background: #8DE0BE no-repeat;
}
.next {
	right:0;
        margin-left: 200px; 
	color: black;
        border-radius: 15px;
        background: #8DE0BE no-repeat;
}
.slider {
	height:150px;
        margin-top: 0px;
        margin-left: -20px;
	position: relative;
}
.slide {
        padding-left: 220px;
	position:absolute;
	height:450px;
	width:980px;
}
.slider .slide:target {
	z-index: 100;
}
img {
	width:980px;
	position:relative;
	left:30px;
        
}

#sliderImage{
    width:1500px;
    height: 450px;
    border-radius: 10px;
}
#BtnContainer{
    display: inline-block;
    text-decoration: none;
    
    padding-left: 250px;
}
#btnLeft{
    float: left;
    display: inline-block;
    width: 50px;
    height: 30px;
}

#btnRight{
    margin-right: 100px;
    float: right;
    display: inline-block;
    width: 50px;
    height: 30px;
}




ul.tab {
    background-color: black;
    list-style-type: none;
    margin-left: -250px;
    margin-top: 5px;
    overflow: hidden;
    border: 1px solid #ccc;
    border-radius: 10px;
    background-color: black;
}


ul.tab li {
    font-family: verdana;
    margin-left: 60px;
    height: 60px;
    float: left;
    width: 190px;
}


ul.tab li a {
    padding-top: 20px;
    display: inline-block;
    color:white;
    text-align: center;
    padding: 8px;
    text-decoration: none;
    transition: 0.3s;
    font-size: 17px;
}


ul.tab li a:hover {
    color: red;
}


ul.tab li a:focus, .active {
    color: red;
}

#BottomDiv{
    margin-top: 306px;
    height: 250px;
    width: 98%;
    border-radius: 5px;
    color:black;
    background-color: #e6ffe6;
}
#BottomLink{
    color:black;
}
 </style>
 
 
    </head>
    
    <!--Refresh Page every 5 sec-->
    
    
    <% response.setIntHeader("Refresh", 25); %>
        
        <body background="backgroung.jpg">
        <center>
            <div id="container">
                
            <div id="header">
                <div id="titleTextDiv">
                <b>College Festival Management</b>
                </div>
            </div>
            
            <div id="BtnContainer">
                <ul class="tab" style="background-color:black;color:black;width:1500px;padding-left: 100px;height: 60px;font-size:15px;font-family:Castellar">
                    <li><a href="generalEventsPage.jsp" class="tablinks">Events</a></li>
                    <li><a href="#" class="tablinks" ></a></li>
                    <li><a href="RegisterPage.jsp" class="tablinks">Register</a></li>
                    <li><a href="#" class="tablinks" ></a></li>
                    <li><a href="LoginPage.jsp" class="tablinks">Login</a></li>
                </ul>
            </div>
            <div id="Blank"></div>
            
            <!slider-->
            <div>
                <div class="slider">
                    <ul>
                        <li id="slider-1" class="slide">
                            <img id="sliderImage" src="Pictures/MainS1.jpg">
                            <a class="prev" href="#slider-3"><h3 style="color:black"> &#60;</h3></a>
                            <a class="next" href="#slider-2"><h3 style="color:black">  &#62; </h3></a>
                        </li>
            
                        <li id="slider-2" class="slide">
                            <img id="sliderImage" src="Pictures/MainS2.jpg">
                            <a class="prev" href="#slider-1"><h3>&#60; </h3></a>
                            <a class="next" href="#slider-3"><h3>&#62; </h3></a>           
                        </li>
                        
                        <li id="slider-3" class="slide">
                            <img id="sliderImage" src="Pictures/MainS3.jpg">
                            <a class="prev" href="#slider-2"><h3>&#60;</h3></a>
                            <a class="next" href="#slider-1"><h3>&#62;</h3></a>           
                        </li>
                    </ul>
                </div> 
            </div>
            
            
        <div id="BottomDiv">
            <div>
                <pre style="color:#00324d;padding-top: 70px;font-family: verdana;font-size: 14px;padding-left: -160px;">
             This is Event Management web-site,which helps its user and manager to work and coordinate efficiently.  
                    
       Our greatest weakness lies in giving up. The most certain way to succeed is always 
                      to try just one more time. 
                           -------
                      Thomas A. Edison
                </pre>
            </div>
            <div>
                <h3>Total Visitors: <%
                        Integer i= (Integer)application.getAttribute("hits");
                        if( i == null || i==0){
                            i=1;
                        }
                        else{
                            i++;
                        }
                        out.println("Visit Count is "+i);
                        application.setAttribute("hits", i);
                        %>
                </h3>
            </div>
            <!--<div id="BottomLink">
                <a href="AboutPage.jsp" target="_blank">About</a>
                <a href="HelpPage.jsp">Help</a>
            </div>
            -->
        </div>    
            </div>
        </center>
    </body>
</html>
