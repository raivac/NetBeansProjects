<%-- 
    Document   : pruebaerror
    Created on : 17 feb. 2023, 11:05:23
    Author     : raul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@page errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <%@page errorPage="error.jsp"%>
    </head>
    <body>
         <%= 0/0 %>
    </body>
</html>
