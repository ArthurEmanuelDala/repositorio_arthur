<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Meu Primeiro JSP</title>
</head>
<body>
	<%
		String nome = "Arthur Emanuel";
		out.println(nome);
	%>
	<h1>Calculadora JSP</h1>
	
	<form action="operacoes.jsp" method="post" name="calc">
		<input type="text" name="vlr1" placeholder="Nro. 1">
		<input type="text" name="vlr2" placeholder="Nro. 2">
		<br><br>
		<input type="submit" value="+" name="btn">
		<input type="submit" value="-" name="btn">
		<input type="submit" value="x" name="btn">
		<input type="submit" value="�" name="btn">
		<input type="submit" value="%" name="btn">
		<input type="submit" value="R%" name="btn">
	</form>
	<br><br>
	<form action="imprime.jsp" method="post" name="cad">
		Nome: <input type="text" name="nome">
		Endere�o: <input type="text" name="end">
		Celular: <input type="text" name="cel">
		Idade: <input type="text" name="idade">
		
		<br><br>
		inp
		
		</form>
</body>
</html>