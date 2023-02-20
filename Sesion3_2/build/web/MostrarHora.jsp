<%-- 
    Document   : MostrarHora
    Created on : 20 feb. 2023, 11:41:22
    Author     : raul
--%>


<!-- 10.2 Ejercicio 2 -->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@include  file="./navbar.html" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% Calendar cal = Calendar.getInstance();
                out.println("La hora actual es => " +
                cal.get(Calendar.HOUR_OF_DAY)+" : " +
                cal.get(Calendar.MINUTE));
           %> 
    </body>
</html>
