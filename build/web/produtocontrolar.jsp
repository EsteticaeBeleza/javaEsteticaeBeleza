<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="dao.ProdutoDao, classes.Produto, java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./css/tabela.css">
        <title>Lista de Produto</title>
    </head>
    <body>

        <%
          
              String pag = request.getParameter("pag");
                int id = Integer.parseInt(pag);
                
                
            List<Produto> list = ProdutoDao.getProdutos(id);
            request.setAttribute("list", list);
            
            
  
        %>
        
        <h1>Lista de Produtos</h1>
        <table>
            <tr><th>Id</th><th>Nome</th><th>Estoque</th><th>Descricao</th><th>Valor</th><th colspan="2">Ações</td></tr>
            <c:forEach items="${list}" var="usuario">
                <tr>
            <td>${usuario.getId_produto()}</td>
            <td>${usuario.getNome_produto()}</td>          
            <td>${usuario.getValor()}</td> 
            <td>${usuario.getEstoque()}</td>            
            <td>${usuario.getDescricao()}</td> 
            <td><a href="usuarioeditarform.jsp?id=${usuario.getId_produto()}"><img src="./imagens/editar.png" alt="Editar Usuário">Editar</a></td>
            <td><a href="usuarioexcluir.jsp?id=${usuario.getId_produto()}"><img src="./imagens/excluir.png" alt="Excluir Usuário">Excluir</a></td>            
                </tr>
        </c:forEach>
        </table>
        <a href="Produtocadastrarform.html"><img src="./imagens/incluir.png" alt="Incluir Usuário"></a>
    </body>
</html>
