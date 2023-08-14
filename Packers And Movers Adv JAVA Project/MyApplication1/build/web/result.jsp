<%-- 
    Document   : result
    Created on : Mar 21, 2018, 1:44:23 PM
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
        <h1>Hello 
            <% out.println(request.getParameter("ename"));%>
            
           !</h1>
            <p> Your Password is:<%out.println(request.getParameter("pass"));%></p>
    </body>
</html>
