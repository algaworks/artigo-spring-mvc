<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
		
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		
	    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet"/>
	
	    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css" rel="stylesheet"/>
	
	    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet"/>
	
	    <link href="<s:url value="/resources/css/estilo.css"/>" rel="stylesheet"/>
	
	    <title>AlgaWorks | Listagem</title>
	</head>
	
	<body>
		<nav class="navbar navbar-default navbar-fixed-top">
		    <div class="container">
		        <div class="navbar-header">
		            <button type="button" class="navbar-toggle collapsed"
		                    data-toggle="collapse" data-target="#navbar" aria-expanded="false"
		                    aria-controls="navbar">
		                <span class="sr-only">Toggle navigation</span>
		                <span class="icon-bar"></span>
		                <span class="icon-bar"></span>
		                <span class="icon-bar"></span>
		            </button>
		
		            <a class="navbar-brand" href="<s:url value="/" />">Spring MVC</a>
		        </div>
		        <div id="navbar" class="collapse navbar-collapse">
		            <ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
								AlgaWorks 
								<span class="caret"></span>
							</a>
							
							<ul class="dropdown-menu">
								<li><a href="http://www.algaworks.com" target="_blank">Site</a></li>
								<li><a href="http://www.facebook.com/algaworks" target="_blank">Facebook</a></li>
				                <li><a href="http://www.youtube.com/algaworks" target="_blank">YouTube</a></li>
				                <li><a href="http://github.com/algaworks" target="_blank">Github</a></li>
				                <li><a href="http://blog.algaworks.com/" target="_blank">Nosso Blog</a></li>
							</ul>
						</li>
		            </ul>
		        </div>
		    </div>
		</nav>
		
		<section class="container">
			<h3 class="page-header">
				Listagem
			</h3>
			
			<c:if test="${not empty mensagem}">
				<p class="alert alert-success">
					${mensagem}
				</p>
			</c:if>	
			
			<div>
				<a href="<s:url value="/funcionarios/novo" />" class="btn btn-default">
					<span class="fa fa-plus"></span>
					Novo
				</a>
			</div>
			
			<hr />
			
			<table class="table table-striped table-bordered">
				<thead>
					<tr>
						<th>#</th>
						<th>Código</th>
						<th>Nome</th>
						<th>CPF</th>
					</tr>
				</thead>
				
				<tbody>
					<c:forEach items="${funcionarios}" var="funcionario">
						<tr>
							<td>
								<a href="<s:url value="/funcionarios/edicao?id=${funcionario.id}" />" class="btn btn-default">
									<span class="fa fa-edit"></span>
								</a>
							</td>
							<td>${funcionario.id}</td>
							<td>${funcionario.nome}</td>
							<td>${funcionario.cpf}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>			
		</section>
		
		<div class="container">
	    	<hr />
	    	
		    <footer>
		    	<h4>Aula Thymeleaf e JSP</h4>
		    	
		    	<p>
					Esta é a página exibida após a ação <code>FuncionariosController.lista</code> ou <code>FuncionariosController.salvar</code>.
				</p>
			</footer>	
		</div>
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
		
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>		
	</body>
</html>
