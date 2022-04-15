<%-- 
    Document   : detalhe_pet
    Created on : 05/12/2021, 00:53:31
    Author     : Usuario
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" crossorigin="anonymous">
         
        <title>Pet encontrado</title>
    </head>
    <body>
         <c:import url="cabeçalho2.jsp"/>
         <!-- nao estou conseguindo fazer um filtro para puxar os dados sozinhos do pet exemplo pet RA 14 so listar as informaçoes dele,mas so estou
         puxando todos os pets de determinado usuario. estou tendo problema em mostrar a imagem na tela 
         -->
          <sql:query var="ResultadoPets" dataSource="${ds}">
                         select * from Pet pete, usuario usu where pete.dono_pet_id = usu.Id_usuario and pete.DONO_PET_ID=? and pete.RA=?
               <sql:param value="${id_user}"/>
                  <sql:param value="${param.RA}"/>       
                    </sql:query>
                         <div class="container" style="background-color: yellow">
                             <div class="col-xs-12 col-sm-6 offset-md-3">   
                         <c:forEach var="listaPet" items="${ResultadoPets.rows}">
                             
            <c:if test="${listaPet.nomearquivo!=null}">
                <center>
                    <br>
                    <br>
                         <div class="card" style="width: 18rem; background-color: green; margin-top: 30px">
  <img class="card-img-top" src="fotos/${listaPet.nomearquivo}" alt="Imagem de capa do card">
  <div class="card-body">
    <h5 class="card-title"><c:out value="${listaPet.nome_pet}"/></h5>
    <p class="card-text">Me ajude a voltar ao meu  dono</p>
  </div>
    <ul class="list-group list-group-flush" style="background-color: green">
    <li class="list-group-item"> entre em contato: <c:out value="${listaPet.contato}"/></li>
    <li class="list-group-item"> Tutor: <c:out value="${listaPet.dono_pet}"/></li>
    <li class="list-group-item">Raça <c:out value="${listaPet.raca}"/> </li>
     
  </ul>
  
</div>      
      </center>       
            </c:if>
        
   
        
        
        </c:forEach>
         <c:import url="rodape.jsp"/>
    </body>
</html>
