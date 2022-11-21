<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="dao.Dao, dao.CategoriasDao, classes.Categorias, java.util.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./css/tabela.css">
        <link href="css/grafico.css" rel="stylesheet" type="text/css"/>
        <link href="css/menu.css" rel="stylesheet" type="text/css"/>
        <link href="css/padrao.css" rel="stylesheet" type="text/css"/>
        <script src="./scripts/filtrar.js"></script>
        
         <!-- PDF II - Arquivo com o código para gerar PDF -->
        <script src="./scripts/pdf.js"></script>
        
        <!-- PDF I - Bibliotecas para gerar PDF -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.4.1/jspdf.debug.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/2.3.4/jspdf.plugin.autotable.min.js"></script>
        <title>Relatório das categorias</title>
    </head>
    <body>
        
        
            <div class="topnav">
   
            </div>
            <div class="content">        
             <%
                
                List<Categorias> list = CategoriasDao.getRelatorio();
                request.setAttribute("list", list);
               
               int[] valores = CategoriasDao.getRelatorioCategorias();
               request.setAttribute("valores", valores);
                
            %>
        
            <h1>Relatório de Categorias</h1>
            
            <input type="text" id="filtrarnomes" onkeyup="filtrar('filtrarnomes', 1)" placeholder="Busca de nomes">
			

            <table id="myTable">
            <tr><th>Id da Categoria</th>><th>Nome da Categoria</th><th>Create</th></tr>
                <c:forEach items="${list}" var="categoria">
                <tr>
                    <td>${categoria.getId_categoria()}</td>
                    <td>${categoria.getNome_categoria()}</td>
                    <td>${categoria.getCreate()}</td>
          
                </tr>
                </c:forEach>
            </table>
  <div>         
        <!-- PDF III - Botão que aciona a função getPDF() no arquivo pdf.js -->
        <form><input type="button" value="Gerar PDF" onclick="getPDF()"></form>
    </div> 

    </body>
</html>
