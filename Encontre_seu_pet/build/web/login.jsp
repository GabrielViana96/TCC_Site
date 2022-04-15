<%-- 
    Document   : login
    Created on : 20/11/2021, 21:34:03
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" crossorigin="anonymous">
        
        <title>Tela de login </title>
    </head>
    <body style="background-color:green ">
        <c:import url="cabeçalho.jsp"/>
     
       <section class="ftco-section">
           <div  style="background-color: yellow"class="container"  >
<div class="row justify-content-center">
<div class="col-sx-6 text-center sx-5">
    <br>
<h2 class="heading-section">Login</h2>
</div>
</div>
<div class="row justify-content-center">
<div class="col-sx-6- text-center sx-5">
<div class="wrap d-md-flex">

<div class="login-wrap p-4 p-md-5">
<div class="d-flex">
<div class="w-100">

</div>

</div>
    <form name="formulario" action="loga.jsp" method="get" class="signin-form">
<div class="form-group mb-3">
    <label class="label" for="name"> <strong> Nome usuario</strong></label>
<input type="text" class="form-control" id="login" name="login"  required="">
</div>
<div class="form-group mb-3">
    <label class="label" for="senha"><strong>Senha</strong></label>
<input type="password" class="form-control" id="senha" name="senha"  required="">
</div>
<div class="form-group">
<button type="submit" class="form-control btn btn-success rounded submit px-3">logar</button>
</div>

</form>
<p class="text-center">Não possui cadastro? <a  href="cadastro_usuario.jsp">crie sua conta</a></p>
</div>
</div>
</div>
</div>
</div>
</section>
        
               <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
      
    <c:import url="rodape.jsp"/>
    </body>
</html>
