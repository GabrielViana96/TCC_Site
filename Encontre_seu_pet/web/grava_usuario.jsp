<%-- 
    Document   : gravs
    Created on : 14/11/2021, 19:59:52
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina de cadastro usuario</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" crossorigin="anonymous">
    </head>
    <body>
             <c:import url="cabeçalho.jsp"/>
             <sql:update dataSource="${ds}">
                 insert into usuario(nome_usuario,senha_usuario,tipo) values(?,?,?)
                  <sql:param value="${param.nome_usuario}"></sql:param>
                   <sql:param value="${param.senha_usuario}"></sql:param>
                   <sql:param value="${param.tipo}"></sql:param>
             </sql:update>
                 <h2>${param.nome_usuario} gravado com sucesso! </h2>  
        
        
    </center>
        <c:import url="rodape.jsp"/>
   
    </body>
</html>
