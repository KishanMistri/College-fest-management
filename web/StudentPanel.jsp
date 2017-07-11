<%-- 
    Document   : StudentPanel
    Created on : Mar 30, 2017, 11:44:34 PM
    Author     : kisha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Panel</title>
        <link rel="stylesheet" type="text/css" href="EventManagerPanel.css">
        <link rel="shortcut icon" href="Pictures/Festlogo.png">
    </head>
    <body>
        
    <center>
    <div id="container">   
            <div id="header">
		<div id="headertext">
                <b>Student Dash-board</b><br>
		</div>
            </div>
		
        <form>
	    <fieldset>
		<legend align="left" id="legend" ><h6>Welcome </h6></legend>
                <%
                    if ((session.getAttribute("username") == null) || 
                        (session.getAttribute("username") == "")) {
                %>
                <>You are not logged in<br/>
                <a href="LoginPage.jsp">Please Login</a>
                <%  } else {%>
                    <%=session.getAttribute("username")%>
                    
                    
                    <div id=""Blank></div>
                    <div id="BtnContainer">
			<ul class="tab" style="background-color:black;color:black;width:100%;padding:5px;font-size:15px;font-family:Castellar">
                            <li><a href="ProfileStudent.jsp" class="tablinks" >Profile </a></li>
                            <li><a href="ViewAllEventStudent.jsp" class="tablinks" >View Event </a></li>
                            <li><a href="LogoutUser.jsp" class="tablinks" >Logout</a></li>
                   	</ul>
                    </div>
                <%
                    } 
                %>
           </fieldset>
	</form>
    </div>
        </center>
    </body>
</html>
