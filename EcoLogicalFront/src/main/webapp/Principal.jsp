<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EcoLogical</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/R1f.png" />
    <!-- Bootstrap Icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic"
        rel="stylesheet" type="text/css" />
    <!-- SimpleLightbox plugin CSS-->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css" rel="stylesheet" />
    <!--Bootstrap Link-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="css/styles.css" rel="stylesheet"/>
</head>
<body>
	<body id="page-top">
    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
        <div class="container px-4 px-lg-5">
        		<ul class="navbar-nav ms-auto my-2 my-lg-0">
                    <li class="nav-item"><a class="nav-link" href="#about">Reducir</a></li>
                    <li class="nav-item"><a class="nav-link" href="#services">Reutilizar</a></li>
                    <li class="nav-item"><a class="nav-link" href="#portfolio">Reciclar</a></li>
                    <li class="nav-item"><a class="nav-link" href="#contact">Recuperar</a></li>
                </ul>
                 <ul class="navbar-nav ms-auto my-2 my-lg-0">
                 	<li class="nav-item">
                 	<a style="margin-left: 10px; border: none" class="btn btn-outline-light" 
                 	href="Controlador?menu=Principal" target="myFrame"></a>
					</li>
                    <li class="nav-item">
                        <a class="btn nav-link" data-bs-toggle="modal" data-bs-target="#staticBackdrop"
                            data-bs-whatever="@mdo" href="Controlador?menu=Principal" target="myFrame">Iniciar Sesion</a>                        
                    </li>
                    <li class="nav-item">
                        <a class="btn nav-link" data-bs-toggle="modal" data-bs-target="#exampleModal"
                            data-bs-whatever="@mdo" href="Controlador?menu=Principal" target="myFrame">Registrarse Gratis</a>                        
                    </li>
                </ul>
            </div>

    </nav>
    <!--Modal Login-->
    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title fs-4" id="staticBackdropLabel">Iniciar Sesión</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="mb-3">
                            <label for="recipient-name" class="col-form-label">Usuario:</label>
                            <input type="text" class="form-control" id="recipient-name">
                        </div>
                        <div class="mb-3">
                            <label for="recipient-name" class="col-form-label">Contraseña:</label>
                            <input type="text" class="form-control" id="recipient-name">
                            <p class="mt-4 fst-italic">Si no tiene cuenta.. <a data-bs-toggle="modal" href="#exampleModal" class="tooltip-test" title="Tooltip" role="button" data-bs-dismiss="modal">Registrese Gratis</a> </p>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary">Ingresar</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>
    <!--Modal Registro Usuario-->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Registro Usuario</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <form>
                <div class="mb-3">
                  <label for="recipient-name" class="col-form-label">Cedula:</label>
                  <input type="number" class="form-control" id="recipient-name">
                </div>
                <div class="mb-3">
                  <label for="message-text" class="col-form-label">Nombre:</label>
                  <input type="text" class="form-control" id="recipient-name">
                </div>
                <div class="mb-3">
                    <label for="recipient-name" class="col-form-label">Correo Electrónico:</label>
                    <input type="email" class="form-control" id="recipient-name">
                </div>
                <div class="mb-3">
                    <label for="recipient-name" class="col-form-label">Usuario:</label>
                    <input type="text" class="form-control" id="recipient-name">
                </div>
                <div class="mb-3">
                    <label for="recipient-name" class="col-form-label">Contraseña:</label>
                    <input type="password" class="form-control" id="recipient-name">
                </div>
              </form>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-primary">Registrarse</button>
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
            </div>
          </div>
        </div>
      </div>
      <div class="m-0" style="height: 800px; width: 100%" >
            <iframe style="height: 100%; width: 100%; border: none" name="myFrame" src="Home.jsp">                
            </iframe>
      </div>

    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" ></script>    
    <!-- SimpleLightbox plugin JS-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
    <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
    <!-- * *                               SB Forms JS                               * *-->
    <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
    <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
    <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>