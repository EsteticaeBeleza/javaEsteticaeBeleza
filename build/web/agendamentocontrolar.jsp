<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="dao.AgendamentoDao, classes.Agendamento, java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./css/tabela.css">
        <title>Lista de Agendamento</title>
    </head>
    <body>

        <%
           
              String pag = request.getParameter("pag");
                int id = Integer.parseInt(pag);
                

            
            List<String> list = AgendamentoDao.getAgendamento(id);
            request.setAttribute("list", list);
            
           for (int i = 0; i < list.size(); i++) {
               list.get(i);
           }
        %>
        
        <h1>Lista de Agendamentos</h1>
        <table>
            <tr><th>Horario Agendado</th><th>Cliente</th><th>procedimento</th><th>Id/Agendamento</th><th colspan="2">Ações</td></tr>    
<tr><c:forEach items="${list}" var="agendamento" varStatus="status" begin="1" end="4">                
        <td>${agendamento}</td></c:forEach> </tr>
<tr><c:forEach items="${list}" var="agendamento" varStatus="status" begin="5" end="9">                
        <td>${agendamento}</td></c:forEach> </tr>
<tr><c:forEach items="${list}" var="agendamento" varStatus="status" begin="10" end="14">                
        <td>${agendamento}</td></c:forEach> </tr>
<tr><c:forEach items="${list}" var="agendamento" varStatus="status" begin="15" end="19">                
        <td>${agendamento}</td></c:forEach> </tr>
<tr><c:forEach items="${list}" var="agendamento" varStatus="status" begin="20" end="24">   
        
       <td><a href="clienteeditarform.jsp?id=${usuario.getId()}"><img src="./imagens/editar.png" alt="Editar Cliente">Editar</a></td>
        <td><a href="clientebloquear.jsp?id=${usuario.getId()}"><img src="./imagens/excluir.png" alt="Excluir Cliente">Bloquear</a></td>            
        <td>${agendamento}</td></c:forEach> </tr>
        </table>
        
    </body>
</html>

