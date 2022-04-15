<%-- 
    Document   : altera_pet
    Created on : 09/12/2021, 19:58:52
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
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" crossorigin="anonymous">
         
        <title>Alterar Cadastro do pet</title>
    </head>
    <body style="background-color: green">
         <c:import url="cabeçalho2.jsp"/>
           <div class="jumbotron" style="background-color: yellow">
  <h1 class="display-4">Alteração de Cadastro</h1>
  <p class="lead">Faça aqui suas alterações do seu Pet</p>
  <hr class="my-4">
  
  <br>
  <br>
  
</div>
           <sql:query dataSource="${ds}" var="result">
                        select * from pet where RA = ?
                        <sql:param value="${param.RA}"/>
                    </sql:query>
                        <c:forEach items="${result.rows}" var="item">
           <div class="container" style="background-color: yellow">
               <br>
        <form class="form-horizontal"  ENCTYPE="multipart/form-data" method="post" action="alteraI.jsp"> 
            <input type="hidden" name="RA" value="${item.RA}"/>
                        <div class="form-group col-sm-offset-2">
                            <label  class="col-sm-2 control-label">Nome do seu Pet: </label>
                            <div class="col-sm-6">
                                <input class="form-control" type="text" name="nome_pet" 
                                       value="${item.nome_pet}" required="required" maxlength="20"/> 
                            </div>
                        </div>
                      <div class="form-group col-sm-offset-2">
                            <label  class="col-sm-2 control-label">Raça: </label>
                            <div class="col-sm-6">
                                <input class="form-control" type="text" name="raca" 
                                       value="${item.raca}" required="required" maxlength="20"/> 
                            </div>
                        </div>
            <div class="form-group col-sm-offset-2">
                            <label  class="col-sm-2 control-label">Especie: </label>
                            <div class="col-sm-6">
                                <input class="form-control" type="text" name="especie" 
                                      value="${item.especie}" required="required" maxlength="20"/> 
                            </div>
                        </div>
            <div class="form-group col-sm-offset-2">
                            <label  class="col-sm-2 control-label">Descrição: </label>
                            <div class="col-sm-6">
                                <input class="form-control" type="text" name="descricao" 
                                       value="${item.descricao}" required="required" maxlength="20"/> 
                            </div>
                        </div>
            <div class="form-group col-sm-offset-2">
                            <label  class="col-sm-2 control-label">Endereço: </label>
                            <div class="col-sm-6">
                                <input class="form-control" type="text" name="endereco" 
                                      value="${item.endereco}" required="required" maxlength="20"/> 
                            </div>
                        </div>
            <div class="form-group col-sm-offset-2">
                            <label  class="col-sm-2 control-label">Contato: </label>
                            <div class="col-sm-6">
                                <input class="form-control" type="text" name="contato" 
                                       value="${item.contato}" required="required" maxlength="20"/> 
                            </div>
                        </div>
            <input type="hidden" name="dono_pet_id" value="Integer.ParseInt${param.dono_pet_id}"/>
            <div class="form-group col-sm-offset-2">
                            <label  class="col-sm-2 control-label">Nome do responsável pelo Pet: </label>
                            <div class="col-sm-6">
                                <input class="form-control" type="text" name="dono_pet" 
                                       value="${item.dono_pet}" required="required" maxlength="20"/> 
                            </div>
                        </div>
            <div class="form-group col-sm-offset-2">
                            <label  class="col-sm-2 control-label">foto do seu Pet: </label>
                            <div class="col-sm-6">
                                <input class="form-control" type="file" name="arquivo" id="arquivo"
                                       value="${item.arquivo}"
                                      /> 
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-4 col-sm-12">
                                <input class="btn btn-lg btn-success" type=submit value="Altera"> 
                                
                            </div>
                        </div>
                                      <br>
                    </form> 
                   </div>
        </c:forEach>
         <c:import url="rodape.jsp"/>
    </body>
</html>
</c:when>
<c:otherwise>
    <c:redirect url="login.jsp"/>
   
    </c:otherwise>
</c:choose>