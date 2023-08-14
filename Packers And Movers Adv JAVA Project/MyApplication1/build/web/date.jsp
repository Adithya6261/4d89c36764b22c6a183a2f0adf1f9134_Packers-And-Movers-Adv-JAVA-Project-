<%-- 
    Document   : date
    Created on : Mar 22, 2018, 12:26:25 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% out.println("Evaluating the time now");
        Date date=new Date();
        %>
        Hello! the current time is <%=date%>
        
    </body>
</html>
