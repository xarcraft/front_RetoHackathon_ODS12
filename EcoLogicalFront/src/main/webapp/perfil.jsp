<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <title>Página Personal</title>
  <link rel="stylesheet" href="css/perfil.css">
</head>

<body>
  <section class="box">
    <img src="assets/img/user.png" width="180" alt="" class="box-img">
    <h1>usuario 1</h1>
    <h2>EcoLogical Premium</h2>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad ut hic consequuntur quo qui culpa veritatis,
      blanditiis corrupti perspiciatis illo a laudantium illum sunt deleniti, nihil doloremque! Obcaecati, at,
      cupiditate.</p>
    <br><br>
    <h3>Insignias obtenidas</h3>
    <ul>
      <li><a href="#"><i class="fa fa-battery-full" aria-hidden="true"></i></a></li>
      <li><a href="#"><i class="fa fa-trash" aria-hidden="true"></i></a></li>
      <li><a href="#"><i class="fa fa-tint" aria-hidden="true"></i></i></a></li>
      <li><a href="#"><i class="fa fa-recycle" aria-hidden="true"></i></a></li>
    </ul>
    <br><br>
    <div>
      <a class="btn-login" href="#">Editar Perfil</a>
      <input class="btn-login" type="submit" onclick="return confirm('Estas seguro de querer abandonar nuestra comunidad?')" value="Eliminar cuenta"/>
    </div>
    <br><br>

  </section>
  
</body>

</html>