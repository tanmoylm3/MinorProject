<%-- 
    Document   : LOGOUT
    Created on : Dec 27, 2021, 10:36:27 AM
    Author     : Tanmoy
--%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p>${sessionScope['username']}</p>
       <%
  //         HttpSession session = request.getSession(false);
           session.invalidate();

        %>
        
        <h1><font color="Red">You are Sucessfully logged out...</font></h1>

        <a href="index.jsp">Go-Back To Home Page</a>
    </body>
</html>
