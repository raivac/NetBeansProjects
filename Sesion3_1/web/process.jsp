<%-- 
    Document   : process
    Created on : 17 feb. 2023, 12:40:26
    Author     : raul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="#ffffcc">
        <% if((request.getParameter("name")==null && request.getParameter("email")==null) 
        || (request.getParameter("name").equals("") && request.getParameter("email").equals(""))
        )
            {%> 
                Complete el siguiente formulario:
                <form method="POST" action="process.jsp">
                    Nombre: <input type="text" name="name" size="26"><br>
                    Email: <input type="text" name="email" size="26"><br>
                    <input type="submit" value="Enviar">
                </form>
        <%} else { %>
                <% String nombre, email; %>
                <% 
                    nombre = request.getParameter("name");
                    email =  request.getParameter("email");
                %>
        
                <b>Usted indico la siguiente informacion</b>:<br>
                <b>Nombre</b>: <%= nombre %> <br>
                <b>Email</b>: <%= email %>
        <% } %>
    </body>
</html>


