<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="dao.Dao, dao.ClienteDao, classes.Cliente, java.util.*, org.json.JSONObject"%>
            <%               
                int[] valores = ClienteDao.getRelatorioCliente();
                request.setAttribute("valores", valores);  
JSONObject jo = new JSONObject();
jo.put("status", true);
jo.put("dados", valores);
            %>
<%=jo%>
