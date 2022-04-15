<%-- 
    Document   : cadastrar_pet
    Created on : 21/11/2021, 18:20:49
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<c:choose>
    <c:when test="${tipo =='U'}">
<html>
    <head>
        <sql:setDataSource var="ds"
                           driver="org.apache.derby.jdbc.ClientDriver"
                           url="jdbc:derby://localhost:1527/Encontre_seu_pet"
                           user="java2"
                           password="java2"
                           scope="session"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" crossorigin="anonymous">
         
        <title>Cadastro de Animais</title>
    </head>
    <body style="background-color: green">
         <c:import url="cabeçalho2.jsp"/>
        
        <div class="jumbotron" style="background-color: yellow">
  <h1 class="display-4">Faça o cadastro do seu pet Aqui</h1>
  <p class="lead">Preecha todos os campos para deixar seu pet protegido. </p>
  <hr class="my-4">
  
  <a class="btn btn-success btn-lg" href="lista_pet.jsp" role="button">Veja seus pets</a>
</div>
         <br>
        <div class="container" style="background-color: yellow">
       <div class="col-sm-8">
            <form class="form-horizontal"  ENCTYPE="multipart/form-data" method="post" action="uploadmidia.jsp"> 
            <br>
            <br>
            
                        <div class="form-group col-sm-offset-2">
                            <label  class="col-sm-2 control-label">Nome do seu Pet: </label>
                            <div class="col-sm-6">
                                <input class="form-control" type="text" name="nome_pet" 
                                       placeholder=" Digite o nome do seu pet " required="required" maxlength="20"/> 
                            </div>
                        </div>
                      <div class="form-group col-sm-offset-2">
                            <label  class="col-sm-2 control-label">Raça: </label>
                            <div class="col-sm-6">
                                <input class="form-control" type="text" name="raca" 
                                       placeholder=" Digite a raça do seu pet " required="required" maxlength="20"/> 
                            </div>
                        </div>
            <div class="form-group col-sm-offset-2">
                            <label  class="col-sm-2 control-label">Espécie: </label>
                            <div class="col-sm-6">
                                <input class="form-control" type="text" name="especie" 
                                       placeholder=" Digite a espécie do seu pet " required="required" maxlength="20"/> 
                            </div>
                        </div>
            <div class="form-group col-sm-offset-2">
                            <label  class="col-sm-2 control-label">Descrição: </label>
                            <div class="col-sm-6">
                                <input class="form-control" type="text" name="descricao" 
                                       placeholder=" Digite uma descrição do seu pet " required="required" maxlength="20"/> 
                            </div>
                        </div>
            <div class="form-group col-sm-offset-2">
                            <label  class="col-sm-2 control-label">Endereço: </label>
                            <div class="col-sm-6">
                                <input class="form-control" type="text" name="endereco" 
                                       placeholder=" Digite o endereço do seu pet " required="required" maxlength="20"/> 
                            </div>
                        </div>
            <div class="form-group col-sm-offset-2">
                            <label  class="col-sm-2 control-label">Contato: </label>
                            <div class="col-sm-6">
                                <input class="form-control" type="text" name="contato" 
                                       placeholder=" Digite o contato do responsável do pet " required="required" maxlength="20"/> 
                            </div>
                        </div>
            <input type="hidden" name="dono_pet_id" value="Integer.ParseInt${param.dono_pet_id}"/>
            <div class="form-group col-sm-offset-2">
                            <label  class="col-sm-2 control-label">Nome do responsável pelo Pet: </label>
                            <div class="col-sm-6">
                                <input class="form-control" type="text" name="dono_pet" 
                                       placeholder=" Digite o nome do responsavel pelo pet " required="required" maxlength="20"/> 
                            </div>
                        </div>
            <div class="form-group col-sm-offset-2">
                            <label  class="col-sm-2 control-label">foto do seu Pet: </label>
                            <div class="col-sm-6">
                                <input class="form-control" type="file" name="arquivo" id="arquivo" 
                                      /> 
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-4 col-sm-12">
                                <input class="btn btn-lg btn-success" type=submit value="Gravar"> 
                                <input class="btn btn-lg btn-warning" type=reset value="Limpar">
                                <br>
                                <br>                                
                            </div>
                        </div>
                    </form> 
                   </div>
            <br>
            <div class="col-sm-4">
                <center>
                <img src="imagens/dog_cat_juntos.jpg" height="300px" width="300px" style="margin-bottom: 20px"  alt=""/>
                </center>
            </div>
        </div>
            <br>
        
         <c:import url="rodape.jsp"/>
          <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

    </body>
</html>
</c:when>
<c:otherwise>
    <c:redirect url="login.jsp"/>
   
    </c:otherwise>
</c:choose>
