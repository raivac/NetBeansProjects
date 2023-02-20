<%-- 
    Document   : process2_1
    Created on : 17 feb. 2023, 13:06:53
    Author     : raul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="usuario" scope="request" class="Entidad.InfoUsuario" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                <% if(request.getParameter("name")==null && request.getParameter("email")==null){%> 
                Complete el siguiente formulario:
                <form method="POST" action="process2_1.jsp">
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
      
        <jsp:setProperty name="usuario" property="name" value="<%=nombre%>"/>
        <jsp:setProperty name="usuario" property="email" value="<%=email%>"/>
        <jsp:forward page="/process2_2.jsp"></jsp:forward>
        <% } %>
    </body>
</html>