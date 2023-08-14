<%-- 
    Document   : contactus1
    Created on : Mar 22, 2018, 12:06:21 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
            <% out.println(request.getParameter("name"));%><br>
            <% out.println(request.getParameter("email"));%><br>
            <% out.println(request.getParameter("contact"));%><br>
            <% out.println(request.getParameter("subject"));%><br>
            <% out.println(request.getParameter("query"));%><br>
        </h1>
    </body>
</html>
