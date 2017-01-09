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
	
	    <title>AlgaWorks | Formulário de cadastro</title>
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
				Cadastro
			</h3>

			<s:url value="/funcionarios/salvar" var="acao"/>
			
			<sf:form method="post" modelAttribute="funcionario" action="${acao}">
				<div class="panel panel-default">
					<div class="panel-heading">
						Informações
					</div>
					
					<div class="panel-body">
						<c:if test="${not empty funcionario.id}">
							<div class="form-group">
								<label class="control-label">
									Código: 
								</label>
								
								<p class="form-control-static">
									${funcionario.id}
								</p>
								
								<sf:hidden path="id"/>
							</div>
						</c:if>
						
						<div class="form-group">
							<label class="control-label" for="nome">
								Nome: 
							</label>
							
							<sf:input path="nome" cssClass="form-control" />
						</div>
						
						<div class="form-group">
							<label class="control-label" for="cpf">
								CPF: 
							</label>
							
							<sf:input path="cpf" cssClass="form-control" />
						</div>
						
						<div class="form-group">
							<button class="btn btn-primary" type="submit">
								<span class="fa fa-plus"></span>
								Salvar
							</button>
						</div>
					</div>
				</div>			
			</sf:form>
		</section>
		
		<div class="container">
	    	<hr />
	    	
		    <footer>
		    	<h4>Aula Thymeleaf e JSP</h4>
		    	
		    	<p>
					Esta é a página exibida após a ação <code>FuncionariosController.novo</code> ou <code>FuncionariosController.editar</code>.
				</p>
			</footer>	
		</div>
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
		
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>		
	</body>
</html>
