<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Compromiso MX | Registro</title>

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
			<div class="navbar-header">
				<asset:image src="institucional/logo_cmx_a_50.png" border="0" />
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"> <!-- Marca -->
				</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Inicio</a></li>
					<li><a href="#">Ayuda</a></li>
					<li><a href="#"></a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
	<br />
	<br />
	<br />
	<br />
	<br />
	<div class="container theme-showcase" role="main">


		<br /> <br /> <br /> <br /> <br />
		<div class="navbar navbar-inverse">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#"> <!-- Marca -->
					</a>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li><a
							href="${request.contextPath}/cuenta/registro.gsp">Informacion
								del mentor</a></li>
						<li class="active"><a href="#">Informacion<br />de la cuenta
						</a></li>
						<li><a href="#">Acuerdo</a></li>
						<li><a href="#">Paquete de Bienvenida</a></li>
						<li><a href="#">Informacion de<br />Autopago y Envio
						</a></li>
						<li><a href="#">Nuestro Movimiento</a></li>
						<li><a href="#">Confirmacion</a></li>
						<li><a href="#">Ayuda</a></li>
						<li><a href="#"></a></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
		${pasow}
		<div>
			<g:form action="siguiente2_3">

				<div class="body">

					Datos:</br>
					${session.p2pais}</br>
					${session.p2estado}</br>
					${session.p2ciudad}</br>
					${session.p2codigopostal}</br>
					${session.p2colonia}</br>
					${session.p2calle}</br>
					${session.p2mumeroexterior}</br>
					${session.p2numerointerior}</br>
					${session.p2manzana}</br>
					${session.p2cruzamientos}</br>
					${session.p2referencias}</br>
					
					 <font size=6>Paso 2: Creacion de la
						cuenta</font>
					<div class="row">
						Telefono de casa: <input type="text" class="form-control"
							name="telefonocasa" style="width: 400px" maxlength="16">
					</div>
					<div class="row">
						Otro telefono: <input type="text" class="form-control"
							name="telefono" style="width: 400px" maxlength="16">
					</div>
					<div class="row">
						Telefono movil: <input type="text" class="form-control"
							name="telefonomovil" style="width: 400px" maxlength="16"> <a href="">◄ Solicitar clave</a>
					</div>
					<div class="row">
						Codigo de verificacion:* <input type="text" class="form-control"
							name="codigoverificaciontelefono" style="width: 400px" maxlength="20">
					</div>
					<br />
					<div class="row">
						Correo electronico:* <input type="email" class="form-control"
							name="correroelectronico" style="width: 400px" maxlength="50"> <a href="">◄ Solicitar
							clave</a>
					</div>
					<div class="row">
						Codigo de verificacion:* <input width="200" type="text"
							class="form-control" name="codigoverificacioncorreo"style="width: 400px" maxlength="20">
					</div>
				</div>

				<button type="submit" class="btn btn-default" value="Submit"
					name="sigui" id="sigui">Siguiente</button>
			</g:form>
		</div>
		<p>&nbsp;</p>
		<footer>
			<p>
				&copy; 2014 Red de Acción Comunitaria S.A. de C.V. Derechos
				Reservados &middot; <a href="#">Términos y Condiciones</a> &middot;
				<a href="#">Aviso de Privacidad</a> &middot; <a href="#">Mapa
					del Sitio</a> &middot; <a href="#">Contáctanos</a>
			</p>
		</footer>
	</div>
	<!-- /container -->


	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
