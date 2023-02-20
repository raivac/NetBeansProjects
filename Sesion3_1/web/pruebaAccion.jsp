<%-- 
    Document   : pruebaAccion
    Created on : 17 feb. 2023, 12:31:44
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
        <% if(Math.random() < 0.5){ %>
        <jsp:forward page="/consejos/consejo1.html"></jsp:forward>
        <%} else{ %>
        <jsp:forward page="/consejos/consejo2.html"></jsp:forward>
        <% } %>
    </body>
</html>
