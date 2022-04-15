<%-- 
    Document   : loga
    Created on : 20/11/2021, 22:44:32
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <title>JSP Page</title>
    </head>
    <body>
        <!-- Pesquisa o usuario -->
        <sql:query dataSource="${ds}" var="resultado">
            select * from usuario where  nome_usuario=? and senha_usuario=?
            <sql:param value="${param.login}"/>
            <sql:param value="${param.senha}"/>
        </sql:query>

        <!-- Percorre o resultset e grava o nome do usuario na sessão -->    
        <c:forEach items="${resultado.rows}" var="login">
            <c:set var="usuario" value="${login.nome_usuario}" scope="session"/>
            <c:set var="id_user" value="${login.id_usuario}" scope="session"/>
            <c:set var="tipo" value="${login.tipo}" scope="session"/>
        </c:forEach>   

        <c:choose>    
            <c:when test="${empty tipo}">
                <script>
                    alert("Usuário e/ou senha inválidos");
                    window.location = "index.jsp";
                </script>
            </c:when>
            <c:when test="${tipo=='A'}">
                <script>
                    window.location = "home.jsp";
                </script>
            </c:when>
            <c:otherwise>
                <script>
                    window.location = "lista_pet.jsp";
                </script>
            </c:otherwise>
        </c:choose>
    </body>
</html>
