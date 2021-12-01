<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="icon" type="image/x-icon" href="assets/favicon_ecologicalE.svg" />
<title>Tabla retos</title>
<style type="text/css">
body {
	background-color: #007200;
	font-family: sans-serif;
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

.modal-body {
	background: #38B000;
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
						<td><a class="btn btn-success m-2" href="" data-bs-toggle="modal" data-bs-target="#exampleModal">Sitio</a> 
						<!-- <td><img src="assets/img/check1.png" width="50px"></td> -->
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
	<!-- Modal Mapa -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog ">
    <div class="modal-content">
      
      <div class="modal-body">
      	<iframe src="https://www.google.com/maps/d/embed?mid=1T2uYjlzZdDVzcV-yeLmw1f38uYg_IHZo&ehbc=2E312F" width="470" height="280"></iframe>
      </div>
     
    </div>
  </div>
</div>
	

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>	
</body>
</html>