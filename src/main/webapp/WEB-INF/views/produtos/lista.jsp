<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Livros de java, HTML, CSS, Android, iPhone, Ruby, PHP e
	muito mais - Casa do Código</title>
</head>
<body>

	<h1>Lista de Produtos</h1>
	
	<div>${sucesso}</div>

	<table>
		<tr>
			<td><strong><h3>Título</h3></strong></td>
			<td><strong><h3>Descrição</h3></strong></td>
			<td><strong><h3>Páginas</h3></strong></td>
		</tr>

		<c:forEach items="${produtos }" var="produto">

			<tr>
				<td>${produto.titulo }</td>
				<td>${produto.descricao }</td>
				<td>${produto.paginas }</td>
			</tr>

		</c:forEach>
	</table>

</body>
</html>