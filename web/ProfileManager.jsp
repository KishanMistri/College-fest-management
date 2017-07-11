<%-- 
    Document   : EventManagerPanel
    Created on : Mar 30, 2017, 12:34:09 PM
    Author     : kisha
--%>

<%@page import="CollegeFestManagementPack.DBconnect"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Event Panel</title>
        <link rel="stylesheet" type="text/css" href="EventManagerPanel.css">
        <link rel="shortcut icon" href="Pictures/Festlogo.png">
    </head>
    <style>
                th{
                    text-align: center;
                    vertical-align: middle;
                    padding-top: 30px;
                    width: 170px;
                    padding-bottom: 30px;
                    background: brown;
                }
                tr,td{
                    padding-bottom: 10px;
                    border: 2px solid white;
                    border-radius: 4px;
                    font-weight: bold;
                    padding: 10px;
                    text-align: center;
                }
    </style>
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
		<legend align="left" id="legend" ><h6><b style="font-size: 20px;">Welcome </b>
                        <%
                        if ((session.getAttribute("username") == null) || 
                            (session.getAttribute("username") == "")) {
                        %>
                        You are not logged in<br/>
                            <a href="LoginPage.jsp">Please Login</a>
                         <%  } else {   %>
                        <b style="color:red;font-size: 20px;"><%=
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
                            <li><a href="LogoutUser" class="tablinks">Logout</a>
                            </li>
                   	</ul>
                        
                        <!-Data Manager-->
                        <%
                String query="select * from managertable where username='"+session.getAttribute("username")+"'";
                try {
                ResultSet res;
                DBconnect.connect();
                res=DBconnect.fetchdata(query);
                while(res.next()) {
                %>
                <table style="padding-top: 100px;color:#000 ;font-size: 20px;">
                    <tr>
                        <td>ID:</td>
                        <td><% out.println(res.getString("ID"));%> </td>
                    </tr>
                    <tr>
                        <td>Username: </td>
                        <td><% out.println(res.getString("username"));%> </td>
                    </tr>
                    <tr>
                        <td>Password: </td>
                        <td><% out.println(res.getString("password"));%> </td>
                    </tr>
                    <tr>
                        <td>EMail: </td>
                        <td><% out.println(res.getString("email"));%> </td>
                    </tr>
                    <tr>
                        <td>Gender: </td>
                        <td><% out.println(res.getString("gender"));%> </td>
                    </tr>
                </table>
                <%
                }
                }catch(Exception ex){
                        
                }
                %>
        
                        
                    </div>
           </fieldset>
                        <%
                        }%>
	</form>	
        
    </div>
        </center>
    </body>
</html>
