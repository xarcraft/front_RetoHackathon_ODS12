<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table class="table">
		<thead class="thead-dark">
			<tr>
				<th scope="col">Nombre</th>
				<th scope="col">Descripcion</th>
				<th scope="col">Puntos</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="lista" items="${listaRetos}">
				<tr>
					<td>${lista.getNombre_reto()}</td>
					<td>${lista.getDescripcion_reto()}</td>
					<td>${lista.getPuntos_reto()}</td>
					<td><a class="btn btn-success" href="#"> Realizado</a>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>