<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />

<title>Formulário de cadastro</title>
</head>

<body>
	<h3>Cadastro</h3>

	<s:url value="/funcionarios/salvar" var="acao" />

	<sf:form method="post" modelAttribute="funcionario" action="${acao}">
		<c:if test="${not empty funcionario.id}">
			<div>
				<label>Código:</label>
				<p>${funcionario.id}</p>
				<sf:hidden path="id" />
			</div>
		</c:if>
		
		<div>
			<label for="nome">Nome:</label>
			<sf:input path="nome" />
		</div>

		<div>
			<label for="cpf">CPF:</label>
			<sf:input path="cpf" />
		</div>

		<button type="submit">Salvar</button>
	</sf:form>
</body>
</html>