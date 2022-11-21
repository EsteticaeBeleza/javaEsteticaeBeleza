<%@ page import="dao.Dao, dao.ClienteDao, classes.Cliente, java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/form.css" rel="stylesheet" type="text/css"/>
        <title>Editar Cliente</title>
    </head>
    <body>
        
        <%@include file="acessoadm.jsp"%>
        
        <%
            String id = request.getParameter("id_cliente");
            Cliente cliente = ClienteDao.getClienteById(Integer.parseInt(id));
        %>
        <form action="clienteeditar.jsp" method="post">
            <h3>Editar Usuário Id: <%=cliente.getId()%></h3>
            <input type="hidden" name="id" value="<%=cliente.getId()%>">
            <input type="text" name="nome" value="<%=cliente.getNome()%>" placeholder="Seu nome..." required>		
            <input type="email" name="email" value="<%=cliente.getEmail()%>" placeholder="Seu e-mail..." required>	     
        <% if (cliente.getAcesso().equals("Admin")){%>
            <input type="radio" name="acesso" value="Comum" required><label>Comum</label>
            <input type="radio" name="acesso" value="Admin" checked="true"><label>Admin</label>        
        <%}else{%>
            <input type="radio" name="acesso" value="Comum" required checked="true"><label>Comum</label>
            <input type="radio" name="acesso" value="Admin"><label>Admin</label>        
        <%}%>       
            <input type="submit" value="Editar">
        </form>
    </body>
</html>