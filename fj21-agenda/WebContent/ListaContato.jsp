<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de Contato</title>
</head>
<body>

<c:import url="Cabecalho.jsp" />

	<!-- cria o DAO -->
	
	
	<table border="1">
	
	
			<th>Nome</th>
			<th>Email</th>
			<th>Endereco</th>
			<th>Nascimento</th>
			
			
		<!-- percorre contatos montando as linhas da tabela -->
		<c:forEach var="contato" items="${contatos}" varStatus="id">
		
		<tr bgcolor ="#${id.count % 2 == 0 ? 'aaee88' : 'ffffff' }">
			<td>${contato.nome}</td>
			<td>
				<c:if test="${not empty contato.email}">
					<a href="mailto:${contato.email}">${contato.email}</a>
				</c:if>
				
				<c:if test="${empty contato.email}">
					E-mail nao informado
				</c:if>
			</td>	
			<td>${contato.endereco}</td>
			
			<td><fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy" /></td>
			<td> 
			
			<a href="mvc?logica=RemoveContatoLogic&id=${contato.id}">Remover</a>
			
			</td>
		</tr>
	</c:forEach>	
	</table>


<c:import url="Rodape.jsp" />

</body>
</html>