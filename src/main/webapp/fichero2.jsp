<%-- 
    Document   : fichero1
    Created on : 02-jul-2013, 21:25:17
    Author     : odeen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Fichero 2</h1>
        <a href="fichero1.jsp">Fichero 1</a>        
        <a href="logout">Logout</a>        
        <a href="salir.do">Salir</a>
        
        <a href="j_spring_security_switch_user?j_username=bob">Entrar como bob</a>        
        <a href="j_spring_security_exit_user">Salir como bob</a>        
        
        
    </body>
</html>
