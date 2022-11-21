<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> 
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="./css/estilocadastro_st.css">
	<!--<link rel="icon" type="image/x-icon" href="/imagens/favicon.png">--><!--favicon da fabi-->

	<title>Cadastro - Estética & Beleza</title>
	
</head>
<body>
	<div class="telalog">
	    
	    <center>
	<h1>Cadastre-se</h1>
	    </center>
	
	<form action="Funcionariocadastrar.jsp" method="post" onsubmit="return validar()"> <!--<form action="/action_page.php" method="post" onsubmit="return validar()">--><!--Funcionariocadastroform.jsp-->
	    
	<label for="nome">Nome:</label>
	<input type="text" name="nome" placeholder="Digite seu nome..." required>
		<br><br/>
	
	<label for="email">E-mail:</label>
    <input type="email" name="email" placeholder="Digite seu email..." pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Seu email deve conter o caractere @, e ter a terminação .com" required>
		<br><br/>

    <label for="senha">Senha:</label>
	<input type="password" name="senha" placeholder="Digite sua senha..." pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Sua senha deve ter um mínimo de oito caracteres, neles contendo uma letra maiúscula, uma minúscula, e um número." required>
		<br><br/>
		
	<label for="cpf">CPF:</label>
	
	<input type="number" name="cpf" placeholder="Insira seu CPF..." pattern="[0-9]{11}" title="Seu CPF deve ter 11 números." required>
		<br><br/>

	<label for="telefone">Telefone:</label>
	<input type="number" name="telefone" placeholder="Informe seu telefone..." pattern="[0-9]{11}" title="Seu telefone deve ter 11 números, nele incluido o ddd de seu estado." required>
		<br><br/>
	
                <input type="submit" value="Enviar">
	
        </form>   
		<br><br/>
		<hr>
	Já tem uma conta?
	<a href="login.html">Faça login.</a>
	</div>
</body>
</html>
