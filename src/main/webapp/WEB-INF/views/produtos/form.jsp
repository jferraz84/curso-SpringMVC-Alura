<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Livros de java, HTML, CSS, Android, iPhone, Ruby, PHP e
	muito mais - Casa do C�digo</title>
</head>
<body>

	<form:form action="${s:mvcUrl('PC#gravar').build() }" method="post"
		commandName="produto">

		<div>
			<label>Titulo</label> <input type="text" name="titulo">
			<form:errors path="titulo" />
		</div>
		<div>
			<label>Descri��o</label>
			<textarea rows="10" cols="20" name="descricao"></textarea>
			<form:errors path="descricao" />
		</div>
		<div>
			<label>P�ginas</label> <input type="text" name="paginas">
			<form:errors path="paginas" />
		</div>

		<c:forEach items="${tipos }" var="tipoPreco" varStatus="status">
			<div>
				<label>${tipoPreco }</label> <input type="text"
					name="precos[${status.index }].valor"> <input type="hidden"
					name="precos[${status.index }].tipo" value="${tipoPreco}">

			</div>
		</c:forEach>

		<button type="submit">Cadastrar</button>

	</form:form>
</body>
</html>