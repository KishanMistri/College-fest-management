<%-- 
    Document   : EventManagerPanel
    Created on : Mar 30, 2017, 12:34:09 PM
    Author     : kisha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Event Manager Panel</title>
        <link rel="stylesheet" type="text/css" href="EventManagerPanel.css">
        <link rel="shortcut icon" href="Pictures/Festlogo.png">
    </head>
    <body>
    <center>
    <div id="container">   
            <div id="header">
		<div id="headertext">
                <b>Event Manager  </b><br>
		</div>
            </div>
		
        <form>
	    <fieldset>
		<legend align="left" id="legend" ><h6><b style="font-size: 20px;">Welcome</b> 
                        <%
                        if ((session.getAttribute("username") == null) || 
                            (session.getAttribute("username") == "")) {
                        %>
                        You are not logged in<br/>
                            <a href="LoginPage.jsp">Please Login</a>
                         <%  } else {   %>
                        <b style="color:violet;font-size: 20px;"><%=
                                session.getAttribute("username")
                        %> 
                        </b></h6></legend>
                <div id=""Blank></div>
                    <div id="BtnContainer">
			<ul class="tab" style="background-color:black;color:black;width:100%;padding:5px;font-size:15px;font-family:Castellar">
                            <li><a href="ProfileManager.jsp" class="tablinks" >Profile </a></li>
                            <li><a href="AddEventPage.jsp" class="tablinks" >Add Event <a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <li><a href="ViewEventPage.jsp" class="tablinks" >View Event </a></li>
                            <li><a href="ViewMyEvents.jsp" class="tablinks" >My Event </a></li>
                            <li><a href="LogoutUser.jsp" class="tablinks">Logout</a>
                            </li>
                   	</ul>
                    </div>
           </fieldset>
                        <%
                        }%>
	</form>	
        
    </div>
        </center>
    </body>
</html>
