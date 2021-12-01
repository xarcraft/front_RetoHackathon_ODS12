<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!--Bootstrap Link-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
<title>Pagina Personal</title>
<link rel="stylesheet" href="css/perfil.css">
</head>

<body>
	<section class="box">
		<div class="d-flex">
			<a class="btn btn-primary" href="index.jsp">Cerrar Sesión</a>
		</div>
		<img src="assets/img/user.png" width="180" alt="" class="box-img">
		<h1>${usuarioSeleccionado.getNombre()}</h1>
		<h2>EcoLogical Premium</h2>
		<div>
			<a
				class="btn btn-primary btn-lg"
				href="Controlador?menu=Retos&accion=Listar" target="fiveframe">Retos</a>
		</div>
		<br>
		<p style="text-align: center;">${usuarioSeleccionado.getBiografia()}</p>
		
		<br>
		<h3>Puntaje:</h3>

		<h4 style="text-align: center; color: green; font-weight: bold; font-size: 30px;">${usuarioSeleccionado.getPuntos()}</h4>

		<br>


		<div>
			<a class="btn btn-primary btn-lg" data-bs-toggle="modal" data-bs-target="#exampleModal">Editar
				Perfil</a> <a class="btn btn-primary btn-lg"
				href="Controlador?menu=Usuarios&accion=Eliminar&id=${usuarioSeleccionado.get_id()}">Eliminar
				Perfil</a>
		</div>
		<br> <br>
	</section>
	<!-- ********************Modal Editar Perfil *************************************** -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Editar Perfil</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form class="form-sign" method="get" action="Controlador">
						<div class="form-group">
							<input type="hidden" name="menu" value="Usuarios"> <input
								type="hidden" name="txtid"
								value="${usuarioSeleccionado.get_id()}"> <label>Cedula:</label>
							<input type="text" name="txtCedula" class="form-control"
								value="${usuarioSeleccionado.getCedula()}">
						</div>
						<div class="form-group">
							<label>Nombre:</label> <input type="text" name="txtnombre"
								class="form-control" value="${usuarioSeleccionado.getNombre()}">
						</div>
						<div class="form-group">
							<label>Email:</label> <input type="text" name="txtemail"
								class="form-control" value="${usuarioSeleccionado.getEmail()}">
						</div>
						<div class="form-group">

							<input type="hidden" name="txtusuario" class="form-control"
								value="${usuarioSeleccionado.getUsuario()}">
						</div>
						<div class="form-group">
							<label>Password:</label> <input type="text" name="txtpassword"
								class="form-control"
								value="${usuarioSeleccionado.getPassword()}">
						</div>
						<div class="form-group">
							<label>Biografia:</label> <input name="txtbio"
								class="form-control" id="message-text"
								value="${usuarioSeleccionado.getBiografia()}">
						</div>
						<div class="form-group">
							<input type="hidden" name="txtpuntos" class="form-control"
								value="${usuarioSeleccionado.getPuntos()}">
						</div>
						<input type="submit" class="btn btn-success mt-2" name="accion"
							value="Actualizar">
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- ********************************************************************************* -->
	
	
	<div class="m-4" style="height: 400px;">
		<iframe style="height: 100%; width: 100%; border: none" name="fiveframe" src="TablaReto.jsp"></iframe>
	</div>

	<!-- *************************** Modal Retos ***************************************** -->
	<!-- <div class="modal fade" id="exampleModal1" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Retos</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div class="row">
						
						<div class="lista col-md-11">
							<table class="table">
								<thead class="thead-dark">
									<tr>
										<th scope="col">Nombre</th>
										<th scope="col">Descripcion</th>
										<th scope="col">Puntos</th>
									</tr>
								</thead>
								<tbody>
										<c:forEach var="lista" items="${listaretos}">
										<tr>
							<td>${lista.getNombre_reto()}</td>
							<td>${lista.getDescripcion_reto()}</td>
							<td>${lista.getPuntos_reto()}</td>
							<td>
								<a>
									Eliminar
								</a>
							</td>
						</tr>
							</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>   -->
	<!-- ********************************************************************************* -->
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- SimpleLightbox plugin JS-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<script src="js/modal.js"></script>
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>


</body>

</html>