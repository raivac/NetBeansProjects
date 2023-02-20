<%-- 
    Document   : formulario2
    Created on : 20 feb. 2023, 12:25:12
    Author     : raul
--%>

<!-- 10.4 Ejercicio 4 -->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="alquiler" scope="request" class="Entidad.AlquilerBean" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <b>Usted indico la siguiente información</b>:<br>
        <b>Película:</b> <jsp:getProperty name="alquiler" property="nombrePelicula" /><br>
        <b>Dias de alquiler:</b> <jsp:getProperty name="alquiler" property="numeroDias" /><br>
        <b>Edad cliente:</b> <jsp:getProperty name="alquiler" property="edadCliente" /><br>
        <b>Forma de pago:</b> <jsp:getProperty name="alquiler" property="formatoPago" /><br>
        <b>Extras:</b> <jsp:getProperty name="alquiler" property="especificaciones" /><br>
        <b>Disfrute de la película</b>
    </body>
</html>
