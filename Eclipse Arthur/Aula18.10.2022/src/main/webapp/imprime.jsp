<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String nome = request.getParameter("nome");
		String end = request.getParameter("end");
		String cel = request.getParameter("cel");
		String idade = request.getParameter("idade");
		
		out.println("<div class 'imprime'> <h2> Nome:"+nome+ "<br> Endereço: "+
		end+"<br> Celular "+cel+ "<br> Idade: " + idade+"</h2></div>");
	%>
</body>
</html>