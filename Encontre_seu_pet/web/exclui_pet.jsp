<%-- 
    Document   : exclui_pet
    Created on : 10/12/2021, 00:43:51
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
        Exclusão Cadastro de animal</title>
    </head>
    <body>
       <sql:update dataSource="${ds}">
                    delete from pet where RA=?
                    <sql:param value="${param.RA}" />
                </sql:update>
                <c:redirect url="lista_pet.jsp"/> 
       
    </body>
</html>
</c:when>
<c:otherwise>
    <c:redirect url="login.jsp"/>
   
    </c:otherwise>
</c:choose>
