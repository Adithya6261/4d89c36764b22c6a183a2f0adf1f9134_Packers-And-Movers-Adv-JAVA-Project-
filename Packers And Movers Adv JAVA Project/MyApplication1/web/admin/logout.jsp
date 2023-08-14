<%-- 
    Document   : logout
    Created on : Mar 27, 2018, 3:34:48 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html><body bgcolor="lightcoral">

        <%

            session.invalidate();

        %>

        <h1><font color="Blue">You are Sucessfully logged out...</font></h1>

        <a href="../index.jsp"><h2>Go to home page</h2></a>

    </body>

</html>