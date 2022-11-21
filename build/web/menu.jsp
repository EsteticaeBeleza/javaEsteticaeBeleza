<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/paginainicialadm.css">
    <link rel="stylesheet" href="css/slide.css">
    <link rel="icon" type="image/x-icon" href="imagens/favicon.png">
    <title>Página Inicial ADM- Estética & Beleza</title>
</head>
<body>
    <div class="header">
        <img src="imagens/logob.png" alt="some text" width=200px height=185px>
        <div class="deslogar">
           <ion-icon name="person-outline"></ion-icon>
           <a href="deslogar.jsp">Deslogar</a>
       </div>
    </div>
            
    <div class="navbar">
		<a href="admpaginainicial.jsp">Página Inicial</a>
		<a href="clientecontrolar.jsp?pag=1">Clientes</a>
		<a href="agendamentocontrolar.jsp?pag=71">Agendamentos</a>
		<a href="produtocontrolar.jsp?pag=1">Produtos</a>
        <a href="categoriascontrolar.jsp?pag=1">Categorias</a>
		<a href="procedimentocontrolar.jsp?pag=1">Serviços</a>
        <a href="funcionariocontrolar.jsp?pag=1">Funcionários</a>
        <a href="escreveremail.jsp">Email</a>
	<div class="dropdown">
		<button class="dropbtn">Relatórios<i class="fa fa-caret-down"></i></button>
    <div class="dropdown-content">
		<a href="clienterelatorio.jsp">Clientes</a>
        <a href="agendamentorelatorio.jsp">Agendamentos</a>
        <a href="produtorelatorio.jsp ">Produtos</a>
        <a href="funcionariorelatorio.jsp">Funcionários</a>
         <a href="categoriarelatorio.jsp ">Categorias</a>
        <a href="procedimentorelatorio.jsp ">Procedimentos</a>
    </div>
  </div>
</div>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>