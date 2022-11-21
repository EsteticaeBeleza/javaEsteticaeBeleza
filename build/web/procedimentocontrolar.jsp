<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="dao.ProcedimentoDao, classes.Procedimento, java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./css/tabela.css">
        <title>Lista de Procedimento</title>
    </head>
    <body>

        <%
          //parte adicionada v6  
              String pag = request.getParameter("pag");
                int id = Integer.parseInt(pag);
                
                //Quantidade de Registros da Página
                int total = 5;
                
                if(id!=1){
                    id = id -1;
                    id = id * total + 1;
                } 
            //parte adicionada v6
            
            List<Procedimento> list = ProcedimentoDao.getProcedimentos(id,total);
            request.setAttribute("list", list);
            
          //parte adicionada v6  
  
        %>
        
        <h1>Lista de Procedimentos</h1>
        <table>
            <tr><th>Id</th><th>Nome</th><th>Tempo</th><th>Valor</th><th colspan="2">Ações</td></tr>
            <c:forEach items="${list}" var="usuario">
                <tr>
            <td>${usuario.getId_procedimento()}</td>
            <td>${usuario.getNome_procedimento()}</td>
            <td>${usuario.getTempo_procedimento()}</td>            
            <td>${usuario.getValor_procedimento()}</td> 
            
            <td><a href="usuarioeditarform.jsp?id=${usuario.getId_procedimento()}"><img src="./imagens/editar.png" alt="Editar Usuário">Editar</a></td>
            <td><a href="usuarioexcluir.jsp?id=${usuario.getId_procedimento()}"><img src="./imagens/excluir.png" alt="Excluir Usuário">Excluir</a></td>            
                </tr>
        </c:forEach>
        </table>
        <a href="procedimentocadastrarform.html"><img src="./imagens/incluir.png" alt="Incluir Procedimento"></a>
    </body>
</html>
