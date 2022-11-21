<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="dao.ClienteDao, classes.Cliente, java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./css/tabela.css">
        <title>Lista de Cliente</title>
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
            
            List<Cliente> list = ClienteDao.getClientes(id,total);
            request.setAttribute("list", list);
            
          //parte adicionada v6  
  
        %>
        
        <h1>Lista de Clientes</h1>
        <table>
            <tr><th>Id</th><th>Nome</th><th>Email</th><th>cpf</th><th>Telefone</th><th>Acesso</th><th>Status</th><th colspan="2">Ações</th></tr>
            <c:forEach items="${list}" var="usuario">
                <tr>
            <td>${usuario.getId()}</td>
            <td>${usuario.getNome()}</td>
            <td>${usuario.getEmail()}</td>            
            <td>${usuario.getCpf()}</td>
             <td>${usuario.getTelefone()}</td>
            <td>${usuario.getAcesso()}</td>
            <td>${usuario.getStatus()}</td>
            <td><a href="clienteeditarform.jsp?id=${usuario.getId()}"><img src="./imagens/editar.png" alt="Editar Cliente">Editar</a></td>
            <td><a href="clientebloquear.jsp?id=${usuario.getId()}"><img src="./imagens/excluir.png" alt="Excluir Cliente">Bloquear</a></td>            
                </tr>
        </c:forEach>
        </table>
        <a href="clientecadastrarform.html"><img src="./imagens/incluir.png" alt="Incluir Cliente"></a>
    </body>
</html>

