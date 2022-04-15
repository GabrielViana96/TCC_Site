<%-- 
    Document   : home
    Created on : 23/10/2021, 16:16:13
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <sql:setDataSource var="ds"
                           driver="org.apache.derby.jdbc.ClientDriver"
                           url="jdbc:derby://localhost:1527/Encontre_seu_pet"
                           user="java2"
                           password="java2"
                           scope="session"/>
        
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=WINDOWS-1252">
        <title>Encontrei seu Pet.com</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" crossorigin="anonymous">
        

    </head>
    <body style="background-color:green ">
       
        <c:import url="cabeçalho2.jsp"/>
      <div class="container">
            <div class="d-flex justify-content-center">
            <div class="row">
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img class="d-block w-100" src="imagens/dog_cat_juntos.jpg"   style="width: 1000px; height: 600px;object-fit: contain;"  alt="Primeiro Slide">
                            <div class="carousel-caption d-none d-md-block">
                                <h2 style="color: green">Proteja seu Pet com nosso sistema</h2>
                                
                            </div>
                        </div>
                       
                        <div class="carousel-item">
                            <img class="d-block w-100" src="imagens/cachorros.jpg" style="width: 1000px; height: 600px;object-fit: contain;" alt="Terceiro Slide">
                        <div class="carousel-caption d-none d-md-block">
                            <h2 style="color: black">Cadastre todos seu Pets sem nenhum limite ou taxa</h2>
                                
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Anterior</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Próximo</span>
                    </a>
                </div>
            </div>
                </div>
                
        </div>
      
        
        <div class="container" style="background-color: yellow" >
            <div class="row">
                <div class="col-md-4">
                    <div class="card-col-md-4" style="width: 18rem;">
                        <img  src="imagens/cachorros.jpg" alt="Imagem de capa do card" class="rounded-circle">
                        <div class="card-body">
                            <h5 class="card-title">Você pode cadastrar todos seus pets gratuitamente</h5>
                            <p class="card-text">Não possui limite de pets por usuario, assim você pode criar Qr code especifico para cada um</p>
                            <a href="cadastrar_pet.jsp" class="btn btn-success">Cadastre seu Pet aqui</a>
                        </div>
                        
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card-col-md-4"  style="width: 18rem;">
                        <img  src="imagens/cachorros.jpg" alt="Imagem de capa do card"class="rounded-circle" >
                        <div class="card-body">
                            <h5 class="card-title">ajude o Pet a voltar para casa</h5>
                            <p class="card-text">Você encontrou um pet e quer ajudar ele a voltar para seu lar</p>
                            <a href="#" class="btn btn-success">Encontrei um pet </a>
                        </div>
                    </div>
                </div>


                <div class="col-md-4">
                    <div class="card-col-md-4"  style="width: 18rem;">
                        <img  src="imagens/cachorros.jpg" alt="Imagem de capa do card" class="rounded-circle" >
                        <div class="card-body">
                            <h5 class="card-title">Você pode cadastrar todos seus pets</h5>
                            <p class="card-text">Não possui limite de pets por usuario, assim você pode criar Qr code especifico para cada um</p>
                            <a href="cadastro_usuario" class="btn btn-success">Se cadastre como usuario aqui</a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <h1>ola</h1>

    </div>

    
<c:import url="rodape.jsp"/>


    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>
