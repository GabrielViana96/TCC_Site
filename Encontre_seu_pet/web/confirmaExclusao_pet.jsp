<%-- 
    Document   : confirmaExclusao_pet
    Created on : 10/12/2021, 00:53:38
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirma Exclusão</title>
    </head>
    <body>
         <script> if (confirm("Tem certeza que deseja excluir ?")) {
                window.location = "exclui_pet.jsp?RA=${param.RA}";
            } else { 
                window.location = "lista_pet.jsp";
            }
            </script>
    </body>
</html>
