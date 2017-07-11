    <%@page import="javax.swing.JOptionPane"%>
<%-- 
        Document   : ViewAllEventStudent
        Created on : Mar 30, 2017, 1:07:50 PM
        Author     : kisha
    --%>
    <%@page import="CollegeFestManagementPack.DBconnect"%>
    <%@page import="java.sql.ResultSet"%>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!DOCTYPE html>

    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="Pictures/Festlogo.png">
            <title>View All Events from Database</title>
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
            <a href='StudentPanel.jsp' style="padding-left: 80px;color:white;">Student Panel Home</a> <br/>

            <a href='LogoutUser.jsp' style="float:right;padding-right: 100px;color:white;">Log out</a> 

            <div style="padding-top:40px;font-size: 18px;padding-left:50%;padding-bottom: -150px; ">
            Filter: <input type="date"  id="datepick" placeholder="Enter Date" name="DatePick" required/>
            <br/><input value="apply" name="apply" type="submit"/>
            </div>
            <table border="1" cellspacing="10" style="background-color: azure;alignment-adjust: central;text-align: center;margin-top: 30px;margin-left: 0px;">
                <tr><th> Event Name</th>
                    <th> Event Date</th>
                    <th> Event time</th>
                    <th> Event Place </th>
                    <th> Event Description</th>
                    <th> Event Manager</th>
                    <th> Interested In </th>
                    <th> Decision</th>
                </tr>
                <% 
                    String dateFilter=request.getParameter("DatePick");
                    
                    try {
                    ResultSet res;
                    DBconnect.connect();
                    res=DBconnect.fetchdata("select * from eventdb");
                    while(res.next()) {
                %>    
                    <tr> 
                    <form action="addParticipation" method="POST">
                        <td>  <% out.println(res.getString("eventname"));%> </td>
                        <td>  <% out.println(res.getString("eventdate")); %> </td>
                        <td>  <% out.println(res.getString("eventtime")); %></td>
                        <td>  <% out.println(res.getString("eventplace")); %> </td>
                        <td>  <% out.println(res.getString("Description")); %> </td>
                        <td>  <% out.println(res.getString("manager")); %> </td>
                        <td>
                            <input type="radio" name="interested" value="participate"/> Participate &nbsp;&nbsp;<br/>
                            <input type="radio"  name="interested"  value="Volunteer"> Volunteer <br/>
                            <input type="radio"  name="interested" checked="checked"  value="Not Interested"> Not Interested <br/>
                        </td>
                        <%
                            session.setAttribute("eventname", res.getString("eventname"));
                        %>
                        <td><input type="submit" name="submit" value="SUBMIT"/></td>
                        
                        </form>
                        <%}%>
                    </tr>
                    <%
                    DBconnect.connclose();
                    }
                    catch (Exception e){
                    }
                }
                %>    
            </table>

        </body>
    </html>
