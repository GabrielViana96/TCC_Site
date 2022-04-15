<%-- 
    Document   : grava_pet
    Created on : 21/11/2021, 18:49:40
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <sql:setDataSource var="ds"
                           driver="org.apache.derby.jdbc.ClientDriver"
                           url="jdbc:derby://localhost:1527/Encontre_seu_pet"
                           user="java2"
                           password="java2"
                           scope="session"/>
        <title>Gravação Pet</title>
    </head>
    <body>
        <sql:update dataSource="${ds}">
            insert into Pet (nome_pet,raca,especie,descricao,endereco,contato,dono_pet_id,dono_pet,nomearquivo) values (?,?,?,?,?,?,?,?,?)
            <sql:param value="${param.nome_pet}" />
            <sql:param value="${param.raca}" />
            <sql:param value="${param.especie}" />
            <sql:param value="${param.descricao}" />
            <sql:param value="${param.endereco}" />
            <sql:param value="${param.contato}" />
            <sql:param value="${id_user}" />
             <sql:param value="${param.dono_pet}" />
            <sql:param value="${param.midia}" />
           
        </sql:update> 
        <script>
            alert("${param.nome_pet} Gravado com Sucesso !!!");
            window.location ="lista_pet.jsp";
        </script>
</body>
</html>
