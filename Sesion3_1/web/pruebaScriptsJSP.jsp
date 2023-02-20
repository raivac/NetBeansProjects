<%-- 
    Document   : pruebaScriptsJSP
    Created on : 17 feb. 2023, 12:05:57
    Author     : raul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <ul>
            <li>
                <b>Expresiones JSP</b><br>
                Fecha actual: <%= new Date() %>
            </li>
            
            <li>
                <b>Scriptlet JSP</b><br>
                <% Calendar cal = Calendar.getInstance();
                out.println("La fecha actual es: " +
                cal.get(Calendar.DATE)+" /" +
                (cal.get(Calendar.MONTH)+1) + " / " + cal.get(Calendar.YEAR));
           %> </li>
            
            <li>
                <b>Declaracion (mas expresion)</b><br>
                <%! private int accesCount = 0; %>
                <%= ++accesCount %> 
            </li> 
        </ul>
    </body>
</html>
