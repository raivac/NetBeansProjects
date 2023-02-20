<%-- 
    Document   : pruebaVariablesImpl.jsp
    Created on : 17 feb. 2023, 12:23:40
    Author     : raul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        La IP de tu ordenador es: <%= request.getRemoteHost() %>
        
        <br>
        
        El nombre del servidor es: <%= request.getServerName() %>
        
        <br>
        
        El puerto del servidor es: <%= request.getServerPort() %>
        
        <br>
        
        La IP del servidor es: <%= request.getRemoteAddr() %>
        
        <br>
        
        El protocolo que estas usando es: <%= request.getProtocol() %>
    </body>
</html>
