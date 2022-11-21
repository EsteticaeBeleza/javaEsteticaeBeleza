<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="dao.Dao, dao.ProdutoDao, classes.Produto, java.util.*"%>

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
        <title>Relatório de Produtos</title>
    </head>
    <body>
        
        
            <div class="topnav">
   
            </div>
            <div class="content">        
            <%
                
                List<Produto> list = ProdutoDao.getRelatorio();
                request.setAttribute("list", list);
               
               int[] valores = ProdutoDao.getRelatorioProduto();
               request.setAttribute("valores", valores);
                
            %>
        
            <h1>Relatório de Produto</h1>
            
            		<input type="text" id="filtrarnomes" onkeyup="filtrar('filtrarnomes', 1)" placeholder="Busca de nomes">
			<input type="text" id="filtrarquantidade" onkeyup="filtrar('filtrarquantidade', 2)" placeholder="Busca de quantidade">

            <table id="myTable">
            <tr><th>Id</th><th>Nome</th><th>Valor</th><th>Estoque</th><th>Descricao</th></tr>
                <c:forEach items="${list}" var="produto">
                <tr>
                    <td>${produto.getId_produto()}</td>
                    <td>${produto.getNome_produto()}</td>              
                    <td>${produto.getValor()}</td> 
                    <td>${produto.getEstoque()}</td>               
                    <td>${produto.getDescricao()}</td> 
          
                </tr>
                </c:forEach>
            </table>
 <div>         
        <!-- PDF III - Botão que aciona a função getPDF() no arquivo pdf.js -->
        <form><input type="button" value="Gerar PDF" onclick="getPDF()"></form>
    </div> 

    </body>
</html>
