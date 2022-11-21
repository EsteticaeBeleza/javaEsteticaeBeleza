<%@ page import="dao.ClienteDao, dao.ClienteDao"%>
<jsp:useBean id="u" class="classes.Cliente"></jsp:useBean>
<jsp:setProperty property="*" name="u" />

<%@include file="acessoadm.jsp"%>

<%
    int i = ClienteDao.bloquearCliente(u);
    
    if(i>0){
        response.sendRedirect("clientecontrolar.jsp?pag=1");
    }else{
        response.sendRedirect("clientebloquear-erro.jsp");        
    }
%>