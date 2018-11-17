<%-- 
    Document   : LoginOut
    Created on : 16-11-2018, 12:31:22
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>
<%@page import="Clases.Usuario" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%
          
         Usuario u = new Usuario();
         u.cerrarsesion(request, response);
      
      
      
      %>
    </body>
</html>
