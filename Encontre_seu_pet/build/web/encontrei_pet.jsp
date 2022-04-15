<%-- 
    Document   : encontrei_pet
    Created on : 13/12/2021, 12:33:17
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
        <title>Encontrei Pet</title>
    </head>
    <body>
         <c:import url="cabeçalho2.jsp"/>
         <sql:query var="ResultadoPets" dataSource="${ds}">
                         select * from Pet pete,where pete.RA=?
                  <sql:param value="${param.RA}"/>       
                    </sql:query>
                         
         <div class="container-fluid">
             
             
             
             
         </div>
       
        
    </body>
</html>
