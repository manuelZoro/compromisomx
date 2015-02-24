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

	<!-- Comienza Navbar -->
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
					<li class="active"><a href="${request.contextPath}/inicio">Inicio</a></li>
					<li><a href="${request.contextPath}/cuenta">Cuenta</a></li>
					<li><a href="${request.contextPath}/organizacion">Organizacion</a></li>
					<li><a href="${request.contextPath}/agenda">Agenda</a></li>
					<li><a href="${request.contextPath}/autopago">Autopago</a></li>
					<li><a href="${request.contextPath}/pedidos">Pedidos</a></li>
					<li><a href="${request.contextPath}/ayudaYSoporte">Ayuda</a></li>
					<li><a href="#"></a></li>
				</ul>
				<a href="${request.contextPath}/registrar"><asset:image
						src="iconografia/header/registrar_50.png" alt="Registrar" /></a> <a
					href="${request.contextPath}/tiendaSocial"><asset:image
						src="iconografia/header/tienda_50.png" alt="Tienda Social" /></a> <a
					href="#"><asset:image src="iconografia/header/idioma_50.png"
						alt="Cambiar Idioma" /></a> <a
					href="${request.contextPath}/user/logout"><asset:image
						src="iconografia/header/salir_50.png" alt="Salir" type="submit" /></a><a
					href="${request.contextPath}/donativos"><asset:image
						src="iconografia/header/donar_127_50.png" alt="Donar" /></a>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
	<!-- Termina NavBar -->
	<div class="container theme-showcase" role="main">

		<!-- Comienza Header? -->
		<div class="page-header"></div>
		<!-- Termian header -->

		<!-- Comienza Información de Emprendedor y botones de notificaciones -->

		<div class="row">
			<div class="col-md-3">
				<div class="panel panel-default">
					<div class="panel-body">
						<table class="table table-condensed">
							<tr>
								<td><p class="pull-left">
										<asset:image
											src="iconografia/datosusuario/imagen_usuario_48.png"
											hspace="3" />
									</p> <small><strong>Emprendedor</strong><br>
										${session.categoria} <asset:image
											src="iconografia/categorias/Normal/Bronce_16.png" /><br>
										<em>
											${session.mensaje}
									</em></small></td>
							</tr>
						</table>
					</div>
				</div>
			</div>

			<div class="col-md-6">
				<div class="panel panel-default">
					<div class="panel-body">
						<table class="table table-condensed">
							<tr>
								<td><small><strong>Nombre</strong><br />
										${session.user} ${session.primer_apellido}<br /> ${session.segundo_apellido}</small></td>
								<td><small><strong>Mentor</strong><br />
										${session.mentor}</small></td>
								<td><small><strong>Rango</strong><br />
										${session.categoria}</small></td>
								<td><small><strong>Equipo</strong><br />
										${session.equipo}</small></td>
								<td><small><strong>Fecha Autopago</strong><br />
										${session.fecha_autopago}</small></td>
								<td><small><strong>Estatus</strong><br />
										${session.estatus}</small></td>
							</tr>
						</table>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="panel panel-default">
					<div class="panel-body">
						<table class="table table-condensed">
							<tr>
								<td align="center"><asset:image
										src="iconografia/AccionesPrincipales/Seleccionadas/mensajes_administrador_32.png" />&nbsp;&nbsp;
									<asset:image
										src="iconografia/AccionesPrincipales/SinSeleccionar/mensajes_emprendedores_32.png" />&nbsp;&nbsp;
									<asset:image
										src="iconografia/AccionesPrincipales/SinSeleccionar/alertas_sistema_32.png" />&nbsp;&nbsp;
									<asset:image
										src="iconografia/AccionesPrincipales/SinSeleccionar/ubicacion_emprendedores_32.png" />&nbsp;&nbsp;
									<asset:image
										src="iconografia/AccionesPrincipales/SinSeleccionar/agenda_32.png" />
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>

		</div>

		<!-- Termina Información de Emprendedor y botones de notificaciones -->
		<g:layoutBody />

	</div>
	<!-- footer -->
	<div class="row" style="background-color: #961255" style="height:300px">
		<footer>
			<p class="text-center">
				<br> <a href="#"><asset:image
						src="iconografia/social/facebook_48.png" /></a>&nbsp; <a href="#"><asset:image
						src="iconografia/social/twitter_48.png" /></a>&nbsp; <a href="#"><asset:image
						src="iconografia/social/youtube_48.png" /></a>&nbsp;
			</p>
			<p class="text-center" style="color: #FFFFFF">
				&copy; 2014 Red de Acción Comunitaria S.A. de C.V. Derechos
				Reservados &middot; <a href="#" style="color: #FFFFFF">Términos
					y Condiciones</a> &middot; <a href="#" style="color: #FFFFFF">Aviso
					de Privacidad</a> &middot; <a href="#" style="color: #FFFFFF">Mapa
					del Sitio</a> &middot; <a href="#" style="color: #FFFFFF">Contáctanos</a>
			</p>
		</footer>
	</div>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<asset:javascript src="bootstrap.min.js" />
	<asset:javascript src="bootstrap-datetimepicker.min.js" />


</body>
</html>