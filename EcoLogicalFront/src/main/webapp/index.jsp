<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>EcoLogical</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon"
	href="assets/favicon_ecologicalE.svg" />
<!-- Bootstrap Icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic"
	rel="stylesheet" type="text/css" />
<!-- SimpleLightbox plugin CSS-->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css"
	rel="stylesheet" />
<!--Bootstrap Link-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
</head>
<body id="page-top">
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top py-3"
		id="mainNav">
		<a class="logo"> <img src="assets/EcoLogicalClar4.png" width="180">
		</a>
		<div class="container px-4 px-lg-5">
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto my-2 my-lg-0">
					<li class="nav-item"><a class="nav-link" href="reducir.jsp">Reducir</a></li>
					<li class="nav-item"><a class="nav-link" href="#services">Reutilizar</a></li>
					<li class="nav-item"><a class="nav-link" href="reciclar.jsp">Reciclar</a></li>
					<li class="nav-item"><a class="nav-link" href="recuperar.jsp">Recuperar</a></li>
				</ul>
				<ul class="navbar-nav ms-auto my-2 my-lg-0">
					<li class="nav-item">

						<button class="btn nav-link" data-bs-toggle="modal"
							data-bs-target="#staticBackdrop" data-bs-whatever="@mdo">Iniciar
							Sesion</button>
					</li>
					<li class="nav-item">
						<button type="button" class="btn nav-link" data-bs-toggle="modal"
							data-bs-target="#exampleModal" data-bs-whatever="@mdo">Registrarse
							Gratis</button>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<!--Modal Login-->
	<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static"
		data-bs-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title fs-4" id="staticBackdropLabel">Iniciar
						Sesión</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form class="form-sign" method="get" action="./Servlet">
						<div class="mb-3">
							<label for="recipient-name" class="col-form-label">Usuario:</label>
							<input type="text" class="form-control" id="recipient-name"
								name="txtusuario" required>
						</div>
						<div class="mb-3">
							<label for="recipient-name" class="col-form-label">Contraseña:</label>
							<input type="text" class="form-control" id="recipient-name"
								name="txtpassword" required>
							<p class="mt-4 fst-italic">
								Si no tiene cuenta.. <a data-bs-toggle="modal"
									href="#exampleModal" title="Tooltip"
									style="color: #006400; font-weight: bold;" role="button"
									data-bs-dismiss="modal">Registrese Gratis </a>
							</p>
						</div>
						<input type="submit" name="accion" value="Ingresar"
							class="btn btn-primary">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">Cerrar</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!--Modal Registro Usuario-->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title text-center" id="exampleModalLabel">Registro
						Usuario</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form method="get" action="Controlador">
						<div class="mb-3">
							<input type="hidden" name="menu" value="Usuarios"> <input
								type="hidden" name="txtid"
								value="${usuarioSeleccionado.get_id()}"> <label
								for="message-text" class="col-form-label">Nombre:</label> <input
								type="text" class="form-control" id="recipient-name"
								name="txtnombre" value="${usuarioSeleccionado.getNombre()}"
								minlength="4" maxlength="30" required>
						</div>
						<div class="mb-3">
							<label for="recipient-name" class="col-form-label">Email:</label>
							<input type="email" class="form-control" id="recipient-name"
								name="txtemail" value="${usuarioSeleccionado.getEmail()}"
								required>
						</div>
						<div class="mb-3">
							<label for="recipient-name" class="col-form-label">Usuario:</label>
							<input type="text" class="form-control" id="recipient-name"
								name="txtusuario" value="${usuarioSeleccionado.getUsuario()}"
								minlength="4" maxlength="14" required>
						</div>
						<div class="mb-3">
							<label for="recipient-name" class="col-form-label">Contraseña:</label>
							<input type="password" class="form-control" id="recipient-name"
								name="txtpassword" value="${usuarioSeleccionado.getPassword()}"
								minlength="4" maxlength="14" required> <br><br><input
								type="submit" class="btn btn-primary" name="accion"
								value="Registrar">
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">Cancelar</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- Masthead-->
	<header class="masthead">
		<div class="container px-4 px-lg-5 h-100">
			<div
				class="row gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center">
				<div class="col-lg-8 align-self-end">
					<h1 class="text-white font-weight-bold">¿Quieres Cambiar el
						Mundo?</h1>
					<hr class="divider" />
				</div>
				<div class="col-lg-8 align-self-baseline">
					<p class="text-white-75">Bienvenido a EcoLogical</p>
					<p class="text-white-75">Queremos agradecer tu interes en este
						proyecto, ahora haces parte de la comunidad que esta cambiando al
						mundo, nuestro fin se centra en concientizar a las personas en la
						adecuada dispocisión de los residuos sólidos.</p>
					<p class="text-white-75">Explora las pestañas del menú superior
						para conocer más y haz parte de este gran proyecto, a traves de
						los diferentes menus de la plataforma podras acceder a informacion
						que de ser puesta en practica tendra un potente impacto en el
						bienestar general de las actuales y nuevas generaciones, al final
						podras hacer parte de una comunidad activa que desea dejar en el
						mundo su granito de arena para hacer de este un lugar mejor.</p>
					<a class="btn btn-primary btn-xl" href="#about">Saber Más</a>
				</div>
			</div>
		</div>
	</header>
	<!-- About-->
	<section class="page-section bg-primary" id="about">
		<div class="container px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class="col-lg-8 text-center">
					<h2 class="text-white mt-0">LA REGLA DE LAS 4R!</h2>
					<hr class="divider divider-light" />
					<h6 class="text-white mt-0">INFORMACION GENERAL</h6>
					<p class="text-white-75 mb-4">La regla 4 erres consiste en la
						puesta en práctica de 4 principios en materia de residuos:
						Reducir, Reutilizar, Reciclar y Recuperar.
					<p class="text-white-75 mb-4">En la generación de los residuos,
						el rol más importante lo tienen los ciudadanos, como consumidores.
						Cada día compramos y tiramos kilos de material que termina en los
						rellenos o basurales.</p>
					<p class="text-white-75 mb-4">Conclusion: Una acción repetida
						miles de veces sí crea la diferencia y el cambio.</p>
					<div class="ratio ratio-16x9">
						<iframe src="assets/las 4Rs.mp4" title="Las 4R" frameborder="0"
							allow="accelerometer; clipboard-write; 
                        encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen> </iframe>
					</div>

				</div>
			</div>
		</div>

		<!-- Services-->

		<div class="container px-lg-5 mt-5">
			<h2 class="text-center mt-0" style="color: white">Las 4 R's</h2>
			<hr class="divider" />
		</div>

		<!-- Portfolio-->
		<div id="portfolio">
			<div class="container-fluid p-0">
				<div class="row g-0">
					<div class="col-lg-6 col-sm-5 col-md-8">
						<a class="portfolio-box"
							href="assets/img/portfolio/fullsize/1.png" title="Reducir"> <img
							class="img-fluid" src="assets/img/portfolio/thumbnails/1.png"
							alt="..." />
							<div class="portfolio-box-caption">
								<div class="project-category text-white-50">Categoria</div>
								<div class="project-name text-white-100">Reducir</div>
							</div>
						</a>
					</div>
					<div class="col-lg-6 col-sm-5 col-md-8">
						<a class="portfolio-box"
							href="assets/img/portfolio/fullsize/2.png" title="Reutilizar">
							<img class="img-fluid"
							src="assets/img/portfolio/thumbnails/2.png" alt="..." />
							<div class="portfolio-box-caption">
								<div class="project-category text-white-50">Categoria</div>
								<div class="project-name">Reutilizar</div>
							</div>
						</a>
					</div>
					<div class="col-lg-6 col-sm-5 col-md-8">
						<a class="portfolio-box"
							href="assets/img/portfolio/fullsize/3.png" title="Reciclar">
							<img class="img-fluid"
							src="assets/img/portfolio/thumbnails/3.png" alt="..." />
							<div class="portfolio-box-caption">
								<div class="project-category text-white-50">Categoria</div>
								<div class="project-name">Reciclar</div>
							</div>
						</a>
					</div>
					<div class="col-lg-6 col-sm-5 col-md-8">
						<a class="portfolio-box"
							href="assets/img/portfolio/fullsize/4.png" title="Recuperar">
							<img class="img-fluid"
							src="assets/img/portfolio/thumbnails/4.png" alt="..." />
							<div class="portfolio-box-caption">
								<div class="project-category text-white-50">Categoria</div>
								<div class="project-name">Recuperar</div>
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>
		<!-- Footer-->

		<footer class="bg-light py-5">
			<div class="container px-4 px-lg-5">
				<div class="small text-center text-muted">
					Copyright &copy; 2021 - <img src="assets/img/EcoLogicalClar1.png"
						width="50px">
				</div>
			</div>
		</footer>
	</section>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- SimpleLightbox plugin JS-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>

</html>