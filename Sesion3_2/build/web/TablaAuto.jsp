<%-- 
    Document   : TablaAuto
    Created on : 20 feb. 2023, 11:48:49
    Author     : raul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="./navbar.html" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <!-- 10.3 Ejercicio 3 -->
        
        <table border="1">
       
         <% int cont = 0; %>
         
         <%for(int i = 0; i<10 ; i++) {%>
         
            <tr> 
                <% for (int j = 0; j<6 ;j++){ %>
                    <td>
                        <% out.print(cont); %>
                        <%  ++cont; %>
                    </td>
                <% } %>
            </tr>
        <% } %>
        </table>
    </body>
</html>
