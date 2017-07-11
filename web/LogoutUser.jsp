<%-- 
    Document   : LogoutUser
    Created on : Apr 7, 2017, 11:22:32 AM
    Author     : kisha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
        <%
        session.setAttribute("username", null);
        session.setAttribute("op", null);
        session.invalidate();
        response.sendRedirect("LoginPage.jsp");
        %>
    </body>
</html>
