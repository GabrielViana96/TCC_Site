<%-- 
    Document   : lista_pet
    Created on : 20/11/2021, 23:02:34
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
         
        <title>Minha Lista de pet</title>
    </head>
    <body style="background-color: green">
         <c:import url="cabeçalho2.jsp"/>
        
        <div class="jumbotron" style="background-color: yellow">
  <h1 class="display-4">Meus Pets</h1>
  <p class="lead">Este é o lugar onde você pode ver todos seus amiguinhos cadastrados com sua coleira com QRCode.</p>
  <hr class="my-4">
  <p>Pode adicionar mais pets a sua lista.</p>
  <a class="btn btn-success btn-lg" href="cadastrar_pet.jsp" role="button">Adicionar Pet</a>
  <br>
  <br>
  <button class="btn btn-success btn-lg" id="download">Imprimir PDF com QRCODE </button>
  <div id="qr_code">
      
</div>
  

 
 
      
</div>
</div>
         
     
              <!-- estou com problemas colocar url do banco dentro do javascript e tambem com o botao dentro da query
              -->
         <sql:query var="ResultadoPets" dataSource="${ds}">
                         select * from Pet pete, usuario usu where pete.dono_pet_id = usu.Id_usuario and pete.dono_pet_id=?
               <sql:param value="${id_user}"/>
                         
                    </sql:query>
                        
                      
                         <table class="table table-hover table-responsive" style="background-color: yellow" >
                        <tr>
                            <th  style="margin-left: 10px">RA</th>
                            <th  style="margin-left: 10px">Nome do Pet</th>
                            <th style="margin-left: 10px">Raça</th>
                            <th  style="margin-left: 10px">Espécie</th>
                            <th  style="margin-left: 10px">Descrições do Pet</th>
                            <th  style="margin-left: 10px">Endereço</th>
                            <th  style="margin-left: 10px">Contato</th>
                            
                            
                            
                        </tr> 
                        <c:forEach var="listaPet" items="${ResultadoPets.rows}">
                             
                            <tr>
                                <!--A tag out é responsável por gerar uma String de saída na tela -->
                                <td><c:out value="${listaPet.RA}"/></td>
                                <td><c:out value="${listaPet.nome_pet}"/></td>
                                <td><c:out value="${listaPet.raca}"/></td>
                                <td><c:out value="${listaPet.especie}"/></td>
                                <td><c:out value="${listaPet.descricao}"/></td>
                                <td><c:out value="${listaPet.endereco}"/></td>
                                <td><c:out value="${listaPet.contato}"/></td>  
                          
                                <td><c:out value="${listaPet.nome_dono}"/></td>
                              
                                
                                
                                <td><a  class=" btn btn-success"href="altera_pet.jsp?RA=${listaPet.RA}"> alterar</a> </td>
                                <td><a  class=" btn btn-danger"href="confirmaExclusao_pet.jsp?RA=${listaPet.RA}"> Exclui</a> </td>
                                <td><button class="btn btn-success btn-lg" id="download">Imprimir PDF com QRCODE </button>
                            
                                </td>
                                <td> <a class="btn btn-success" href="detalhe_pet.jsp?RA=${listaPet.RA}">
                                        <span class="glyphicon glyphicon-shopping-cart"></span> Detalhes do pet</a> </td>
                            </tr>
                             
                        </c:forEach>
                    </table>
        
        
         <c:import url="rodape.jsp"/>
          <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script>
   
       $(document).ready(function() {

    var qrcode = new QRCode("qr_code", {
        text: href="detalhe_pet.jsp?RA=14",
        width: 128,
        height: 128,
        colorDark : "#000000",
        colorLight : "#ffffff",
        correctLevel : QRCode.CorrectLevel.H
    });

    $("#download").click(
        function() {
            var pdf = new jsPDF({
                orientation: "landscape",
                unit: "mm",
                format: [100, 40]
            });
            
             
            pdf.setFontSize(15);
            pdf.text('Encontre meu Pet.com', 43, 20);

            pdf.setFontSize(10);
            pdf.text('RA do Pet: ', 43, 25);

            let base64Image = $('#qr_code img').attr('src');
            console.log(base64Image);

            pdf.addImage(base64Image, 'png', 0, 0, 40, 40);
            pdf.save('generated.pdf');
        }
    );

});
    </script>
    <script src="https://cdn.jsdelivr.net/gh/davidshimjs/qrcodejs/qrcode.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.2/jspdf.debug.js"></script>
<script src="https://cdn.jsdelivr.net/gh/davidshimjs/qrcodejs/qrcode.min.js"></script>
    </body>
</html>
</c:when>
<c:otherwise>
    <c:redirect url="login.jsp"/>
   
    </c:otherwise>
</c:choose>