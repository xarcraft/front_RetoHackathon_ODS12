<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Creacion de Usuario</title>
</head>
<body>
	<div class="row"> <!-- Seccion 1 -->
		<div class="card col-md-4">
			<div class="card-body">
				<h5 class="card-title">Usuario creado con éxito</h5>
				<h6 class="card-subtitle mb-2 text-muted">Gracias por querer aportar tu granito de arena</h6>
			<div>
				<form class="form-sign" method="get" action="Controlador">
					<div class="form-group">
						<input type="hidden" name="menu" value="Usuarios">
						<input type="hidden" name="txtid" value="${usuarioSeleccionado.get_id()}">
						
					</div>
					
					<div class="form-group">
						<label>Nombre:</label>
						<input type="text" name="txtnombre" class="form-control" value="${usuarioSeleccionado.getNombre()}">
					</div>
					<div class="form-group">
						<label>Email:</label>
						<input type="text" name="txtemail" class="form-control" value="${usuarioSeleccionado.getEmail()}"> 
					</div>
							<div class="form-group">
								<label>Usuario:</label>
								<input type="text" name="txtusuario" class="form-control" value="${usuarioSeleccionado.getUsuario()}">
							</div>
							<div class="form-group">
								<label>Password:</label>
								<input type="password" name="txtpassword" class="form-control" value="${usuarioSeleccionado.getPassword()}">
							</div>
							<div class="form-group">
								<label>Bio:</label>
								<input type="text" name="txtbio" class="form-control" value="${usuarioSeleccionado.getBiografia()}">
							</div>
							<div class="form-group">
								<label>EcoLogicalCoins</label>
								<input type="text" name="txtpuntos" class="form-control" value="${usuarioSeleccionado.getPuntos()}" readonly="readonly">
							</div>
							
								<input type="submit" class="btn btn-primary" name="accion" value="Agregar">
								<input type="submit" class="btn btn-success" name="accion" value="Actualizar">
				</form>
			</div>
			</div>
		</div> <!-- Seccion 2 --> <div class="col-md-8">
			<table class="table">
				<thead class="thead-dark">
					<tr>
						<th scope="col">Nombre</th>
						<th scope="col">Email</th>
						<th scope="col">Usuario</th>
						<th scope="col">Password</th>
						<th scope="col">Biografia</th>
						<th scope="col">EcoLogical Coins</th>
					</tr>
				</thead>
			<tbody>
				<c:forEach var="lista" items="${listaUsuarios}">
					<tr>
						<td>${lista.getNombre()}</td>
						<td>${lista.getEmail()}</td>
						<td>${lista.getUsuario()}</td>
						<td>${lista.getPassword()}</td>
						<td>${lista.getBiografia()}</td>
						<td>${lista.getPuntos()}</td>
						<td>
							<a class="btn btn-warning" href="Controlador?menu=Usuarios&accion=Cargar&id=${lista.getNombre()}">
							Editar
							</a>
							<a class="btn btn-danger" href="Controlador?menu=Usuarios&accion=Eliminar&id=${lista.get_id()}">
							Eliminar
							</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
			</table> 
		</div> 
	</div> 
</body>
</html>