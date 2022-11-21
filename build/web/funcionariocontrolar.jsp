<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="dao.FuncionarioDao, classes.Funcionario, java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./css/tabela.css">
         <!-- PDF II - Arquivo com o código para gerar PDF -->
        <script src="./scripts/pdf.js"></script>
          <!-- PDF I - Bibliotecas para gerar PDF -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.4.1/jspdf.debug.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/2.3.4/jspdf.plugin.autotable.min.js"></script>
        <title>Lista de Funcionario</title>
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
            
            List<Funcionario> list = FuncionarioDao.getFuncionarios(id,total);
            request.setAttribute("list", list);
            
          //parte adicionada v6  
  
        %>
        
        <h1>Lista de Funcionarios</h1>
        <table>
            <tr><th>Id</th><th>Nome</th><th>Email</th><th>cpf</th><th>Telefone</th><th>Funçao</th><th>Horario</th><th colspan="2">Ações</td></tr>
            <c:forEach items="${list}" var="usuario">
                <tr>
            <td>${usuario.getId_f()}</td>
            <td>${usuario.getNome_f()}</td>
            <td>${usuario.getEmail_f()}</td>                       
            <td>${usuario.getCpf_f()}</td>
             <td>${usuario.getTelefone_f()}</td>
            <td>${usuario.getFuncao_f()}</td> 
             <td>${usuario.getHorario_f()}</td> 
            <td><a href="usuarioeditarform.jsp?id=${usuario.getId_f()}"><img src="./imagens/editar.png" alt="Editar Usuário">Editar</a></td>
            <td><a href="usuarioexcluir.jsp?id=${usuario.getId_f()}"><img src="./imagens/excluir.png" alt="Excluir Usuário">Excluir</a></td>            
                </tr>
        </c:forEach>
        </table>
         <div>         
        <!-- PDF III - Botão que aciona a função getPDF() no arquivo pdf.js -->
        <form><input type="button" value="Gerar PDF" onclick="getPDF()"></form>
    </div> 
        <a href="Funcionariocadastrarform.html"><img src="./imagens/incluir.png" alt="Incluir Usuário"></a>
    </body>
</html>


