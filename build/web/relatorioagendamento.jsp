<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="dao.Dao, dao.AgendamentoDao, classes.Agendamento, java.util.*"%>

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
        <title>Relatório dos Agendamentos</title>
    </head>
    <body>
        
        
            <div class="topnav">
   
            </div>
            <div class="content">        
            <%
                
                List<Agendamento> list = AgendamentoDao.getRelatorio();
                request.setAttribute("list", list);
               
               int[] valores = AgendamentoDao.getRelatorioAgendamento();
               request.setAttribute("valores", valores);
                
            %>
        
            <h1>Relatório dos Agendamentos</h1>
            
            		<input type="text" id="filtrarnomes" onkeyup="filtrar('filtrarnomes', 1)" placeholder="Busca de nomes">

            <table id="myTable">
            <tr><th>Id de Agendamento</th><th>Id do usuário</th><th>Id do procedimento</th><th>Nome do agendado</th><th>Descrição</th><th>Horário de Início</th><th>Horário do Término</th><th>Cor</th></tr>
                <c:forEach items="${list}" var="agendamento">
                <tr>
                    <td>${agendamento.getId_agendamento()}</td>
                 
                    <td>${agendamento.getNome_agendamento()}</td>
                    <td>${agendamento.getDescription()}</td>
                    <td>${agendamento.getStart()}</td>               
                    <td>${agendamento.getEnd()}</td>               
                    <td>${agendamento.getColor()}</td> 
          
                </tr>
                </c:forEach>
            </table>
  <div>         
        <!-- PDF III - Botão que aciona a função getPDF() no arquivo pdf.js -->
        <form><input type="button" value="Gerar PDF" onclick="getPDF()"></form>
    </div> 

    </body>
</html>
