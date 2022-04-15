<%-- 
    Document   : login
    Created on : 14/11/2021, 17:51:25
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina de cadastro para novo usuários</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" crossorigin="anonymous">
        
    </head>
    <body style="background-color: green">
        
        <c:import url="cabeçalho2.jsp"/>
        <br>
        <br>
        <div class=" container-fluid ">
            <div class="row">
                <div class="jumbotron" style="background-color: yellow">
  <h1 class="display-4">Faça seu cadastro aqui!</h1>
  <p class="lead"> De maneira simples, rapida e gratuita. 
      </p>
  <hr class="my-4">
  <p>utilizando apenas usuario e senha.</p>

</div>
      
            </div> 
                               
        <div class=" row" style="background-color: yellow">
            <center>
            <div class="col ">
                <br>
        <h1>Página de Cadastro </h1>
        <br>
         <form  method="post" action="grava_usuario.jsp">
             <div class=" form-group">
                <input type="hidden" name="tipo" value="U"/>
                Nome: <input type="text" name="nome_usuario" size="30" placeholder="Crie um nome de usuário"><br>
             </div>
                <div class="form-group">
                    Senha: <input type="password" name="senha_usuario" size="30" placeholder="Crie sua senha"> <br>
                </div>
             <p ><input class="btn btn-success" type="submit" value="Salvar Usuario">
                 <input class="btn btn-success" type="reset" value="Limpar">
                 </p>                    
             </form>
        </div>
                </center> 
            <div class="row">
                <br>
                <br>
                <center>
                    <div class="col" style=" margin-bottom: 20px">
                    <img src="imagens/pet_com_dono.jpg" height="100%" width="50%" />
                </div>
                </center>
            </div>
            
            </div>
                  
           <br>
        <hr>
    
        
    
        </div>
        <c:import url="rodape.jsp"/>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
