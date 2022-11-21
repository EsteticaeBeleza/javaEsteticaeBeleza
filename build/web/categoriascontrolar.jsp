<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="dao.CategoriasDao, classes.Categorias, java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./css/tabela.css">
        <script src="./scripts/pdf.js"></script>
        <title>Lista de Categorias</title>
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
            
            List<Categorias> list = CategoriasDao.getCategorias(id,total);
            request.setAttribute("list", list);
            
          //parte adicionada v6  
  
        %>
        
        <h1>Lista de Clientes</h1>
        <table>
            <tr><th>Id/Categorias</th><th>Nome</th><th>Create</th><th colspan="2">Ações</th></tr>
            <c:forEach items="${list}" var="usuario">
                <tr>
            <td>${usuario.getId_categoria()}</td>
            <td>${usuario.getNome_categoria()}</td>
            <td>${usuario.getCreate()}</td>            
            
            <td><a href="categoriaseditarform.jsp?id=${usuario.getId_categoria()}"><img src="./imagens/editar.png" alt="Editar Categorias">Editar</a></td>
            <td><a href="categoriasbloquear.jsp?id=${usuario.getId_categoria()}"><img src="./imagens/excluir.png" alt="Excluir Categorias">Bloquear</a></td>            
                </tr>
        </c:forEach>
        </table>
       

        <a href="categoriascadastrarform.html"><img src="./imagens/incluir.png" alt="Incluir Categorias"></a>
    </body>
</html>

