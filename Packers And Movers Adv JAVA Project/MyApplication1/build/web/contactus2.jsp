<%-- 
    Document   : contactus
    Created on : Mar 22, 2018, 11:59:13 AM
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
            <form action="contactus1.jsp">
                <input type="text"  placeholder="Enter your name" name="name"><br>
                <input type="email" name="email" placeholder="Enter your email"><br>
                <input type="tel" name="contact" placeholder="Enter your contact number"><br>
                <input type="text" name="subject" placeholder="Enter subject"><br>
                <textarea input type="text" cols="30" rows="5" name="query" placeholder="what would you like to tell us"></textarea><br>
                <input type="submit" value="Submit">
            </form>
        </h1>
    </body>
</html>
