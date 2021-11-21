<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Página Personal</title>
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
			<a class="btn-login" id="open" href="#">Editar Perfil</a> <input
				class="btn-login" type="submit"
				onclick="return confirm('Estas seguro de querer abandonar nuestra comunidad?')"
				value="Eliminar cuenta" />
		</div>
		<br>
		<br>

	</section>

	<div id="modal_container" class="modal-container">
		<div class="modal">
			<h1>Y, ¿Qué tal un cambio?</h1>
			<br>
			<br>
			<form method="get" action="Controlador">
				<div>
					<label for="recipient-name">Imagen:</label><br> <input
						type="file" id="recipient-name" name="txtimagen">
				</div>
				<div>
					<input type="hidden" name="menu" value="Usuarios"> <input
						type="hidden" name="txtid"> <label for="message-text">Nombre:</label><br>
					<input type="text" id="recipient-name" name="txtnombre"
						minlength="4" maxlength="30" required>
				</div>

				<div>
					<label for="recipient-name">Email:</label><br> <input
						type="email" id="recipient-name" name="txtemail" required>
				</div>
				<div>
					<label for="recipient-name">Usuario:</label><br> <input
						type="text" id="recipient-name" name="txtusuario" minlength="4"
						maxlength="14" required>
				</div>
				<div>
					<label for="recipient-name">Contraseña:</label><br> <input
						type="password" id="recipient-name" name="txtpassword"
						minlength="4" maxlength="14" required>
				</div>
				<div>
					<label for="recipient-name">Bio:</label><br>
					<textarea name="txtbio" id="recipient-name" cols="30" rows="10"></textarea>
				</div>
				<div>
					<br>
					<br>
					<input class="btn-login" type="submit" class="btn btn-primary"
						name="accion" value="Editar">
					<button class="btn-login" id="close">Cerrar</button>
				</div>
		</div>
		</form>

	</div>
	</div>
	<script src="js/modal.js"></script>

</body>

</html>