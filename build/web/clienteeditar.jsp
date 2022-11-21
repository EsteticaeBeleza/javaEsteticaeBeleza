<%@ page import="dao.ClienteDao"%>
<jsp:useBean id="u" class="classes.Cliente"></jsp:useBean>
<jsp:setProperty property="*" name="u" />
    
<%
    int i = ClienteDao.editarCliente(u);
    response.sendRedirect("clientecontrolar.jsp?pag=1");
%>