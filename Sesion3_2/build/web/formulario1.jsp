<%-- 
    Document   : formulario1
    Created on : 20 feb. 2023, 12:25:04
    Author     : raul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="alquiler" scope="request" class="Entidad.AlquilerBean" />
<%@include  file="./navbar.html" %>
<!DOCTYPE html>

<!-- 10.4 Ejercicio 4 -->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            h2, p{
                background-color: #e3f839;
            }
        </style>
    </head>
    <body>
        <h2> VIDEOCLUB ON-LINE </h2>
        <% if(request.getParameter("nombrePelicula")==null 
            && request.getParameter("numeroDias")==null 
            && request.getParameter("edadCliente")==null    
            && request.getParameter("formatoPago")==null 
            && request.getParameter("especificaciones")==null){%> 
                <form method="POST" action="formulario1.jsp">
                    
                    
                    <p>Nombre Pelicula:</p>   <input type="text" name="nombrePelicula" size="26"><br><br>
                    
                    
                    <p>Numero Dias Alquiler:</p>  <input type="number" name="numeroDias"><br><br>
                    
                    
                   <p>Edad Cliente:</p>   <select name="edadCliente">
                                    <option value="Menor de 7 años" selected> Menor de 7 años</option>
                                    <option value="Menor de 14 años">Menor de 14 años</option>
                                    <option value="Menor de 18 años">Menor de 18 años</option>
                                    <option value="Mayor de 18 años">Mayor de 18 años</option>
                                  </select><br><br>
                    
                    
                   <p>Formato pago:</p>   <select name="formatoPago">
                                    <option value="VISA" selected >VISA</option>
                                    <option value="MASTER CARD">MASTER CARD</option>
                                    <option value="PAYPAL">PAYPAL</option>
                                  </select><br><br>
                                  
                                  
                   <p>Especificaciones Extra:</p>  <textarea name="especificaciones" rows="10" cols="50">Especificaciones...</textarea>
<br><br>
                                    
                    <input type="submit" value="Enviar">
                </form>
        <%} else { %>
                <% String nombrePelicula, edadCliente, formatoPago, especificaciones,numeroDias; 
                  %>
                
                <% 
                    nombrePelicula = request.getParameter("nombrePelicula");
                    edadCliente =  request.getParameter("edadCliente");
                    formatoPago =  request.getParameter("formatoPago");
                    especificaciones =  request.getParameter("especificaciones");
                    numeroDias =  request.getParameter("numeroDias");
                %>
      
                
         
        <jsp:setProperty name="alquiler" property="nombrePelicula" value="<%=nombrePelicula%>"/>
        <jsp:setProperty name="alquiler" property="edadCliente" value="<%=edadCliente%>"/>
        <jsp:setProperty name="alquiler" property="formatoPago" value="<%=formatoPago%>"/>
        <jsp:setProperty name="alquiler" property="especificaciones" value="<%=especificaciones%>"/>
        <jsp:setProperty name="alquiler" property="numeroDias" value="<%=numeroDias%>"/>
        
        <jsp:forward page="/formulario2.jsp"></jsp:forward>
        <% } %>
    </body>
</html>
