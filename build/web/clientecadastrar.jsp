<%@ page import="dao.Dao, dao.FuncionarioDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="c" class="classes.Funcionario"></jsp:useBean>
<jsp:setProperty property="*" name="c" />
    
<%
    int i = FuncionarioDao.cadastrarFuncionario(c);
    
    if(i>0){
        response.sendRedirect("Funcionariocontrolar.jsp?pag=1");
    }else{
        response.sendRedirect("Funcionariocadastrar-erro.jsp");        
    }
%>
