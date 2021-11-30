<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		<img src="assets/img/user.png" width="180" alt="" class="box-img">
		<h1>usuario 1</h1>
		<h2>EcoLogical Premium</h2>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad ut
			hic consequuntur quo qui culpa veritatis, blanditiis corrupti
			perspiciatis illo a laudantium illum sunt deleniti, nihil doloremque!
			Obcaecati, at, cupiditate.</p>
		<br>
		<br>
		<h3>Insignias obtenidas</h3>
		<ul>
			<li><a href="#"><i class="fa fa-battery-full"
					aria-hidden="true"></i></a></li>
			<li><a href="#"><i class="fa fa-trash" aria-hidden="true"></i></a></li>
			<li><a href="#"><i class="fa fa-tint" aria-hidden="true"></i></i></a></li>
			<li><a href="#"><i class="fa fa-recycle" aria-hidden="true"></i></a></li>
		</ul>
		<br>
		<br>
		<div>
			<a class="btn-login" id="open"  href="Controlador?menu=Usuarios&accion=Cargar&id=${usuarioSeleccionado.getNombre()}" data-bs-toggle="modal" data-bs-target="#exampleModal">Editar Perfil</a> 
			<input	class="btn-login" type="submit"
				onclick="return confirm('Estas seguro de querer abandonar nuestra comunidad?')"
				value="Eliminar cuenta"/>
		</div>
		<br>
		<br>

	</section>
	<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  		<div class="modal-dialog">
    		<div class="modal-content">
      			<div class="modal-header">
        		<h5 class="modal-title" id="exampleModalLabel">New message</h5>
        		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      		</div>
      <div class="modal-body">
        <form class="form-sign" method="get" action="./Servlet">
					<div class="form-group">
						<input type="hidden" name="menu" value="Usuarios">
						<input type="hidden" name="txtid" value="${usuarioSeleccionado.get_id()}">
							
                        <label>Cedula:</label>
						<input type="text" name="txtCedula" class="form-control" value="${usuarioSeleccionado.getCedula()}">				
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
						
						<input type="hidden" name="txtusuario" class="form-control" value="${usuarioSeleccionado.getUsuario()}">
					</div>
					<div class="form-group">
						<label>Password:</label>
						<input type="password" name="txtpassword" class="form-control" value="${usuarioSeleccionado.getPassword()}">
					</div>
					<div class="form-group">
						<label>Biografia:</label>
						<input type="textarea" name="txtbio" class="form-control" value="${usuarioSeleccionado.getBiografia()}">
					</div>	
					<div class="form-group">
						
						<input type="hidden" name="txtpuntos" class="form-control" value="${usuarioSeleccionado.getPuntos()}">
					</div>
					<input type="submit" class="btn btn-success" name="accion" value="Actualizar">					
		</form>
      </div>
    </div>
  </div>
</div>
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