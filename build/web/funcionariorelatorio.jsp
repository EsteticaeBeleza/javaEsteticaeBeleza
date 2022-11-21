<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="dao.Dao, dao.FuncionarioDao, classes.Funcionario, java.util.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./css/tabela.css">
        <link href="css/grafico.css" rel="stylesheet" type="text/css"/>
        <link href="css/menu.css" rel="stylesheet" type="text/css"/>
        <link href="css/padrao.css" rel="stylesheet" type="text/css"/>
        <script src="./scripts/filtrar.js"></script>
        <title>Relatório de Funcionarios</title>
          <!-- PDF II - Arquivo com o código para gerar PDF -->
        <script src="./scripts/pdf.js"></script>
        
        <!-- PDF I - Bibliotecas para gerar PDF -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.4.1/jspdf.debug.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/2.3.4/jspdf.plugin.autotable.min.js"></script>
    </head>
    <body>
        
        
            <div class="topnav">
   
            </div>
            <div class="content">        
            <%
                
                List<Funcionario> list = FuncionarioDao.getRelatorio();
                request.setAttribute("list", list);
               
               int[] valores = FuncionarioDao.getRelatorioFuncionario();
               request.setAttribute("valores", valores);
                
            %>
        
            <h1>Relatório de Funcionario</h1>
            
            		<input type="text" id="filtrarnomes" onkeyup="filtrar('filtrarnomes', 1)" placeholder="Busca de nomes">
			<input type="text" id="filtraremails" onkeyup="filtrar('filtraremails', 2)" placeholder="Busca de emails">

            <table id="myTable">
            <tr><th>Id</th><th>Nome</th><th>Email</th><th>Cpf</th><th>Telefone</th><th>Funcao</th><th>Horario</th></tr>
                <c:forEach items="${list}" var="funcionario">
                <tr>
                    <td>${funcionario.getId_f()}</td>
                    <td>${funcionario.getNome_f()}</td>
                    <td>${funcionario.getEmail_f()}</td>                             
                    <td>${funcionario.getCpf_f()}</td>               
                    <td>${funcionario.getTelefone_f()}</td>
                    <td>${funcionario.getFuncao_f()}</td>               
                    <td>${funcionario.getHorario_f()}</td>
          
                </tr>
                </c:forEach>
            </table>
        <div>         
         <!-- PDF III - Botão que aciona a função getPDF() no arquivo pdf.js -->
          <form><input type="button" value="Gerar PDF" onclick="getPDF()"></form>
        </div> 

    </body>
</html>
