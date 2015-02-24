<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Compromiso MX</title>

    <!-- Bootstrap -->
    <asset:stylesheet src="bootstrap.min.css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
  <body role="document">
   
	    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header"><asset:image src="institucional/logo_cmx_a_50.png" border="0"/>
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#"><!-- Marca --></a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Inicio</a></li>
            <li><a href="#">Ayuda</a></li>
            <li><a href="#"></a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>

    <div class="container theme-showcase" role="main">

      <div class="page-header">

      </div>

		<div class="container">
		<g:if test="${flash.message}">
			<div class="message_error" style="font-size: large;color: red;">
				${flash.message}
			</div>
		</g:if>
			<g:form action="login" style="padding-left:0px">
				<!-- <form class="form-signin" role="form"> -->
				<h3 class="form-signin-heading">
					Por favor acceda a su cuenta
					</h2>
					<input type="text" class="form-control" placeholder="Usuario"
						required autofocus style="width: 200px" name="nombre_usuario">
					<input width="200" type="password" class="form-control"
						placeholder="Contraseña" required style="width: 200px"
						name="password"> <label class="checkbox"> <input
						type="checkbox" value="remember-me"> Recordar usuario
					</label>
					<button class="btn btn-default" type="submit" value="Login">Acceder</button>
					<!-- </form> -->
			</g:form>
			
			<!--<g:each in="${TodasCuentas}" var="cuenta">

				<tr>
					<td>
						${cuenta.nombre_usuario}
					</td>
					<td>
						${cuenta.password}
					</td>
			</g:each>-->
		</div>
		<!-- /container -->
      
      
      




<p>&nbsp;</p>
      <footer>
        <p>&copy; 2014 Red de Acción Comunitaria S.A. de C.V. Derechos Reservados &middot; <a href="#">Términos y Condiciones</a> &middot; <a href="#">Aviso de Privacidad</a> &middot; <a href="#">Mapa del Sitio</a> &middot; <a href="#">Contáctanos</a></p>
      </footer>



    </div> <!-- /container -->


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>