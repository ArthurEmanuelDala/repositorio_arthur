<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1> Calculadora JSP</h1>
		
		<form  method="post" name="calc">
			<input type="text" name="nro1" placeholder="Nro. 1">
			<input type="text" name="nro2" placeholder="Nro. 2">
			<br><br>
			<input type="submit" value="+" name="btn">
			<input type="submit" value="-" name="btn">
			<input type="submit" value="*" name="btn">
			<input type="submit" value="/" name="btn">
			<input type="submit" value="%" name="btn">
			<input type="submit" value="R%" name="btn">
		</form>
		
		<%
		float nr1 = Float.parseFloat(request.getParameter("nro1"));
		float nr2 = Float.parseFloat(request.getParameter("nro2"));
		float tot = 0f;
		
		String oper = request.getParameter("btn");
		
		if(oper.equals("+"))
				tot = nr1 + nr2;
		else
			if (oper.equals("-"))
				tot = nr1 - nr2;
			else
				if (oper.equals("*"))
					tot = nr1 * nr2;
				else
					if (oper.equals("/"))
						tot = nr1 / nr2;
					else
						if (oper.equals("%"))
							tot = ((nr1 * nr2)/100);
						else
							if (oper.equals("R%"))
								tot = nr1 % nr2;
		
		out.println("<div class 'resultado'> <h2> O Resultado é: " + tot+"</h2></div>");
		
		%>

</body>
</html>