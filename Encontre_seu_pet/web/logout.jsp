<%-- 
    Document   : logout
    Created on : 24/11/2021, 23:50:53
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>logout do usuario</title>
    </head>
    <body>
        <c:set var="usuario" value="" scope="session"/>
        <c:set var="id_user" value="" scope="session"/>
        <c:set var="tipo" value="" scope="session"/>
        <c:redirect url="index.jsp"/>
    </body>
</html>
