<%-- 
    Document   : uploadmidia
    Created on : 24/11/2021, 22:23:19
    Author     : Usuario
--%>

<%@page import="javax.mail.Session"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page language="java" import="org.apache.commons.fileupload.*, java.util.*, java.io.*" %>



<%
    String pathTemp = getServletContext().getRealPath("tmp");
    String caminhoTemp = pathTemp.replace("\\", "/") + "/";
    String path1 = getServletContext().getContextPath();
    String path = getServletContext().getRealPath("fotos");
    String pasta = path.replace("\\", "/") + "/";

    // pasta = "D:/Documents/NetBeansProjects/Encontre_seu_pet/web/imagens/";
    if (FileUpload.isMultipartContent(request)) {
        DiskFileUpload upload = new DiskFileUpload();
        upload.setRepositoryPath(caminhoTemp);
        String nome_pet = "";
        String raca = "";
        String especie = "";
        String descricao = "";
        String endereco = "";
        String contato="";
        String dono_pet="";
        String nomeArquivo="";
        try {
            List items = upload.parseRequest(request);
            Iterator iter = items.iterator();
            while (iter.hasNext()) {
                FileItem item = (FileItem) iter.next();
                if (!item.isFormField()) {

                     nomeArquivo= item.getName().toString();
                    nomeArquivo = nome_pet.substring(nome_pet.lastIndexOf("\\") + 1);
                    out.write("nome do arquivo: " + nomeArquivo + "<br>");
                    out.write("Arquivo(s)<b> " + item.getName() + "</b> transferido(s)<br>");

                    File arquivo = new File(pasta + nomeArquivo);
                    item.write(arquivo);
                }
                if (item.isFormField()) {
                    if (item.getFieldName().equals("nome_pet")) {
                        nome_pet = item.getString();
                    }
                    if (item.getFieldName().equals("raca")) {
                        raca = item.getString();
                    }
                    if (item.getFieldName().equals("especie")) {
                        especie = item.getString();
                    }
                    if (item.getFieldName().equals("descricao")) {
                        descricao = item.getString();
                    }
                    if (item.getFieldName().equals("endereco")) {
                        endereco = item.getString();
                    }
                    if (item.getFieldName().equals("contato")) {
                        contato = item.getString();
                    }
                    if (item.getFieldName().equals("dono_pet")) {
                        dono_pet = item.getString();
                    }
                }

            }
        } catch (FileUploadException e) {
            out.write("Não foi possível efetivar o upload do arquivo - segue a causa do erro" + "<br>" + e.getMessage());
            e.printStackTrace();
        }
        response.sendRedirect("grava_pet.jsp?nome_pet=" + nome_pet+"&raca="+raca+"&especie="+especie+"&descricao="+descricao+"&endereco="+endereco+"&contato="+contato+"&dono_pet="+dono_pet+"&midia="+nomeArquivo);
    }

%>

