<%-- 
    Document   : alteraI
    Created on : 09/12/2021, 20:54:47
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<c:choose>
    <c:when test="${tipo =='U'}">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Altera Cadastro</title>
    </head>
    <body>
         
        <sql:update dataSource="${ds}">
            update Pet set nome_pet=?,raca=?,especie=?,descricao=?,endereco=?,contato=?,dono_pet_id=?,dono_pet=?,nomearquivo=? where RA=?
            <sql:param value="${param.nome_pet}" />
            <sql:param value="${param.raca}" />
            <sql:param value="${param.especie}" />
            <sql:param value="${param.descricao}" />
            <sql:param value="${param.endereco}" />
            <sql:param value="${param.contato}" />
            <sql:param value="${id_user}" />
             <sql:param value="${param.dono_pet}" />
            <sql:param value="${param.midia}" />
           <sql:param value="${param.RA}" />
        </sql:update> 
        <script>
            alert("${param.nome_pet} Gravado com Sucesso !!!");
            window.location ="lista_pet.jsp";
        </script>
        
    </body>
</html>
</c:when>
<c:otherwise>
    <c:redirect url="login.jsp"/>
   
    </c:otherwise>
</c:choose>