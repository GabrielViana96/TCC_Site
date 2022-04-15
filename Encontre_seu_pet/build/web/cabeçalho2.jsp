<%-- 
    Document   : cabeçalho2
    Created on : 12/12/2021, 13:44:00
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>JSP Page</title>
        <style>
            .nav-link{
                color: green
            }
        </style>
    </head>
    <body >

        <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark" style=" margin-bottom: 20px">
        <a class="navbar-brand" style=" color: green" href="index.jsp"> Encontre Pet.Com</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="true" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="navbar-collapse collapse show" id="navbarCollapse" style="">
            <ul class="navbar-nav mr-auto " style=" margin-left: 40px">
            <li class="nav-item active"style=" margin-left: 40px">
              <a class="nav-link" style=" color: green" href="cadastro_usuario.jsp">Cadastro de Usuário <span class="sr-only">(atual)</span></a>
            </li>
            <li class="nav-item"style=" margin-left: 40px">
              <a class="nav-link" style=" color: green" href="cadastrar_pet.jsp">Cadastrar meu Pet</a>
            </li>
            <li class="nav-item" style=" margin-left: 40px">
                <a class="nav-link" style=" color: green" href="#">Dicas para seu pet</a>
            </li>
            <li class="nav-item"style=" margin-left: 40px">
              <a class="nav-link " style=" color: green" href="#">Sobre quem somos</a>
            </li>
          </ul>
            <a class="btn btn-success navbar-btn"   href="login.jsp" >Login</a>
            <p style=" color: white">Bem Vindo <span class="glyphicon glyphicon-user"> </span><b style=" color: white"> ${usuario}</b> <a href="logout.jsp" class="btn btn-default" style=" color: white"><span class="glyphicon glyphicon-log-out"/> Sair</a></p>
        </div>
      </nav>
        
        
  
        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
