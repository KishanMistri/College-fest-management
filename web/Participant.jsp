<%-- 
    Document   : ViewAllEventStudent
    Created on : Mar 30, 2017, 1:07:50 PM
    Author     : kisha
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="CollegeFestManagementPack.DBconnect"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View All Events Managed by me</title>
        <style>
            body{
                 background-image: url("Pictures/background.jpg");
            }
            th{
                text-align: center;
                vertical-align: middle;
                padding-top: 30px;
                width: 170px;
                padding-bottom: 30px;
                background: brown;
            }
            tr{
                padding-bottom: 10px;
                border: 2px solid black;
                border-radius: 4px;
                background-color: #8DE0BE;
              
            }
        </style>
    </head>
    
    <body>
        
        <div style="height: 40px;padding-left: 100px;margin-top: 70px;font-size: 16px;font-family:verdana;background-color: darkcyan;padding-bottom: 10px;">
        <%
            if ((session.getAttribute("username") == null) || 
                    (session.getAttribute("username") == "")) {
        %>
        You are not logged in<br/>
        <a href="LoginPage.jsp">Please Login</a>
       </div>
        <%  } else {   %>
        <b style="color:violet">Welcome <%=session.getAttribute("username")%> </b>
        <a href='EventManagerPanel.jsp' style="padding-left: 80px;color:white;">Manager Panel Home</a> <br/>
        
        <a href='LogoutUser.jsp' style="float:right;padding-right: 100px;color:white;">Log out</a> 
                
        <table border="1" cellspacing="10" style="background-color: azure;alignment-adjust: central;text-align: center;margin-top: 100px;margin-left: 0px;">
            <tr>
                <th> PID</th>
                <th> Participant Name</th>
            </tr>
            <% 
                try {
                ResultSet res;
                DBconnect.connect();
                res=DBconnect.fetchdata("select * from Participant where manager='"+session.getAttribute("username")+"' and eventname='"+session.getAttribute("eventname")+"'");
                while(res.next()){
            %>    

                <tr> 
                    <td>  <% out.println(res.getString("PID"));%> </td>
                    <td>  <% out.println(res.getString("participant")); %> </td>
                </tr>

                <%}
                DBconnect.connclose();
                }catch (Exception e){
                    System.out.println("catch of ViewMyEvents");
                }
            }
            %>    
        </table>
        
    </body>
</html>
