<%-- 
    Document   : process2_2
    Created on : 17 feb. 2023, 16:57:16
    Author     : raul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="usuario" scope="request" class="Entidad.InfoUsuario"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <b>Usted indico la siguiente información</b>:<br>
        <b>Nombre:</b> <jsp:getProperty name="usuario" property="name" /><br>
        <b>Email:</b> <jsp:getProperty name="usuario" property="email" /><br>
        <b>¡Esta respuesta ha sido genarada desde un JSP independizado</b>
    </body>
</html>
