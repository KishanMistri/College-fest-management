<%-- 
    Document   : generalEventsPage
    Created on : Mar 31, 2017, 1:22:23 PM
    Author     : kisha
--%>
<%@page import="CollegeFestManagementPack.DBconnect"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Events</title>
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
        
        <table border="0" cellspacing="10" style="margin-top: 100px;margin-left: 0px;">
            <tr><th> Event Name</th>
                <th> Event Date</th>
                <th> Event time</th>
                <th> Event Place </th>
                <th> Event Description</th>
            </tr>
            <% 
                try {
                ResultSet res;
                DBconnect.connect();
                res=DBconnect.fetchdata("select * from eventdb");
                while(res.next()) {
            %>    

                <tr> 
                    <td>  <% out.println(res.getString("eventname"));%> </td>
                    <td>  <% out.println(res.getString("eventdate")); %> </td>
                    <td>  <% out.println(res.getString("eventtime")); %></td>
                    <td>  <% out.println(res.getString("eventplace")); %> </td>
                    <td>  <% out.println(res.getString("Description")); %> </td>
                </tr>

                <%}
                DBconnect.connclose();
                }catch (Exception e){
                
                }
            %>    
        </table>
    </body>
</html>
