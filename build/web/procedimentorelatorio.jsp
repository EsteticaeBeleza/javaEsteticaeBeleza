<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="dao.Dao, dao.ProcedimentoDao, classes.Procedimento, java.util.*"%>

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
        
        <title>Relatório de Procedimentos</title>
    </head>
    <body>
        
        
            <div class="topnav">
   
            </div>
            <div class="content">        
            <%
                
                List<Procedimento> list = ProcedimentoDao.getRelatorio();
                request.setAttribute("list", list);
               
               int[] valores = ProcedimentoDao.getRelatorioProcedimento();
               request.setAttribute("valores", valores);
                
            %>
        
            <h1>Relatório de Procedimento</h1>
            
            		<input type="text" id="filtrarnomes" onkeyup="filtrar('filtrarnomes', 1)" placeholder="Busca de nomes">
			<input type="text" id="filtrartempo" onkeyup="filtrar('filtrartempo', 2)" placeholder="Busca de tempo">

            <table id="myTable">
            <tr><th>Id</th><th>Nome</th><th>Tempo</th><th>Valor</th><th>Categoria</th></tr>
                <c:forEach items="${list}" var="procedimento">
                <tr>
                    <td>${procedimento.getId_procedimento()}</td>
                    <td>${procedimento.getNome_procedimento()}</td>
                    <td>${procedimento.getTempo_procedimento()}</td>               
                    <td>${procedimento.getValor_procedimento()}</td> 
                    <td>${procedimento.getId_categoria()}</td>               
                   
          
                </tr>
                </c:forEach>
            </table>
  <div>         
        <!-- PDF III - Botão que aciona a função getPDF() no arquivo pdf.js -->
        <form><input type="button" value="Gerar PDF" onclick="getPDF()"></form>
    </div> 

    </body>
</html>
