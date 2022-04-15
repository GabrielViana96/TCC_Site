<%-- 
    Document   : cabeçalho
    Created on : 14/11/2021, 18:50:59
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        
        
        <nav class="navbar navbar-fixed-top" style="background-color: black">
           
             <a class="nav-link active" href="#"></a>
            <img src="imagens/patinha-logo.png" width="30px" height="30px" alt=""/>
            <a class="nav-link" href="cadastro_usuario.jsp" style="color: green">Cadastrar usuario</a>
            <a class="nav-link" href="#"style="color: green">Encontrei um pet</a>
            <a class="nav-link" href="cadastrar_pet.jsp"style="color: green">Cadastrar meu pet</a>
            <a class="nav-link" href="#"style="color: green">Dicas para seu pet</a>
            <a class="nav-link" href="#"style="color: green">Sobre quem somos</a>
            <a class="nav-link disabled" href="login.jsp">Login</a>
            <p>Bem Vindo <span class="glyphicon glyphicon-user"> </span><b> ${usuario}</b> <a href="logout.jsp" class="btn btn-default"><span class="glyphicon glyphicon-log-out"/> Sair</a></p>
        </nav>
        
        <br>
    </body>
</html>
