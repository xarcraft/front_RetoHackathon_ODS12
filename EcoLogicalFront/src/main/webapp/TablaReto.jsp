<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tabla retos</title>
<style type="text/css">
body {
	background-color: #007200;
}

h1 {
	text-align: center;
	color: white;
}

div.centerTable {
	text-align: center;
}

table {
	width: 100%;
	border: 1px solid #999;
	text-align: left;
	border-collapse: collapse;
	margin: 0 0 1em 0;
	caption-side: top;
}

caption, td, th {
	padding: 0.3em;
}

caption {
	font-weight: bold;
	font-style: italic;
}

th {
	font-size: 25px;
	color: black;
	text-align: center;
	border-bottom: 1px solid #999;
	color: white;
	font-weight: bold;
	font-size: 36px;
}

td {
	border-bottom: 1px solid #999;
	width: 20%;
	text-align: center;
	font-size: 18px;
	color: white;
}
</style>
</head>
<body>
	<h1>Retos del mes</h1>
	<div class="centerTable">
		<table>
			<thead>
				<tr>
					<th scope="col">Nombre</th>
					<th scope="col">Descripción</th>
					<th scope="col">Puntos</th>
					<th scope="col">Estado</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="lista" items="${listaRetos}">
					<tr>
						<td>${lista.getNombre_reto()}</td>
						<td>${lista.getDescripcion_reto()}</td>
						<td>${lista.getPuntos_reto()}</td>
						<td><img src="assets/img/check1.png" alt="" width="50px">
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>