<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Compromiso MX</title>

<!-- Bootstrap -->
<script src="${request.contextPath}/js/jquery.min.js"></script> 
<script src="${request.contextPath}/js/bootstrap.min.js"></script>
<link href="${request.contextPath}/css/mensajes.css" rel="stylesheet">
<link href="${request.contextPath}/css/iconFont.css" rel="stylesheet">
<link href="${request.contextPath}/css/bootstrap.css" rel="stylesheet">
<link href="${request.contextPath}/css/navbar.css" rel="stylesheet">
<link href="${request.contextPath}/css/estilos.css" rel="stylesheet">
<link href="${request.contextPath}/css/piepag.css" rel="stylesheet">
<link href="${request.contextPath}/css/botones.css" rel="stylesheet">
<link href="${request.contextPath}/css/carrusel.css" rel="stylesheet">
<link href="${request.contextPath}/css/calendario.css" rel="stylesheet">
<script src="${request.contextPath}/js/modernizr-2.6.2.min.js"></script>
<script src="${request.contextPath}/js/jquery-1.9.1.min.js"></script>
<script src="${request.contextPath}/js/jquery-ui-1.10.1.min.js"></script>
<link rel="stylesheet" href="${request.contextPath}/css/jquery-ui.css"/>
<script>
	$(function() {
		if (!Modernizr.inputtypes['date']) {
			$('input[type=date]').datepicker({
				dateFormat : 'dd/mm/yy',
				changeMonth: true,
			    changeYear: true,
			    yearRange: "-120:+0"
			});
		}
	});
	/*
	$(function() {
		if (!Modernizr.inputtypes['time']) {
			$('input[type=time]').timespinner({
			    min: '08:30',
			    required: true,
			    showSeconds: true
			});
			alert("toing");
		}
	});*/ //NOT WORKING
</script>

<g:layoutHead />
</head>
<body role="document" id="fondo_body">

	<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><img
					src="${request.contextPath}/images/institucional/logo_cmx_header.png"
					border="0">
				<!-- Marca --></a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<!-- <li class="active"></li> -->
					<li><a href="${request.contextPath}/inicio">Inicio</a></li>
					<li><a href="${request.contextPath}/cuenta">Cuenta</a></li>
					<li><a href="${request.contextPath}/organizacion">Organización</a></li>
					<li><a href="${request.contextPath}/agenda">Agenda</a></li>
					<li><a href="${request.contextPath}/autopago">Autopago</a></li>
					<li><a href="${request.contextPath}/pedidos">Pedidos</a></li>
					<li><a href="${request.contextPath}/ayudaYSoporte">Ayuda</a></li>
					<li><a href="${request.contextPath}/registrar" id="nav2"><img
							src="${request.contextPath}/images/iconografia/header/registrar_48.png"
							alt="Registrar" id="panel_accionesheader"></a></li>
					<li><a href="#" id="nav2"><img
							src="${request.contextPath}/images/iconografia/header/tienda_48.png"
							alt="Tienda Social" id="panel_accionesheader"></a></li>
					<li><a href="#" id="nav2"><img
							src="${request.contextPath}/images/iconografia/header/idioma_48.png"
							alt="Cambiar Idioma" id="panel_accionesheader"></a></li>
					<li><a href="${request.contextPath}/login/logout" id="nav2"><img
							src="${request.contextPath}/images/iconografia/header/salir_48.png"
							alt="Salir" id="panel_accionesheader"></a></li>
					<li><a href="#" id="nav2"><img
							src="${request.contextPath}/images/iconografia/header/donar_116_43.png"
							alt="Donar" id="panel_accionesheader"></a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>

	<div class="container theme-showcase" role="main">
		<div class="page-header"></div>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>

		<!-- Inicia Sección Datos y Acciones Principales -->
		<div class="row">

			<!-- Comienza Panel Emprendedor -->
			<div class="col-md-3">
				<div class="panel panel-body sombrapanel">
					<p class="pull-left">
						<img
							src="${request.contextPath}/images/iconografia/datosusuario/imagen_usuario_48.png"
							hspace="5" vspace="5">
					</p>
					<strong><small>${"Algo"}</small></strong><br> <small>Categoría
						Platino</small><img
						src="${request.contextPath}/images/iconografia/categorias/Normal/Bronce_16.png"><br>
					<p class="datos_emprendedor_mensaje">Mensaje</p>
				</div>
			</div>
			<!-- Termina Panel Emprendedor -->

			<!-- Inicia Panel Datos de Usuario -->
			<div class="col-md-6">
				<div class="panel panel-body sombrapanel">
					<div class="col-md-2" id="espacio_datosusuario_inicial">
						<small><strong>Nombre</strong><br />${"Algo"}</small>
					</div>
					<div class="col-md-2" id="espacio_datosusuario">
						<small><strong>Mentor</strong><br />${"Algo"}</small>
					</div>
					<div class="col-md-2" id="espacio_datosusuario">
						<small><strong>Rango</strong><br />Rango</small>
					</div>
					<div class="col-md-2" id="espacio_datosusuario">
						<small><strong>Equipo</strong><br />Equipo</small>
					</div>
					<div class="col-md-2" id="espacio_datosusuario">
						<small><strong>Autopago</strong><br />Fecha</small>
					</div>
					<div class="col-md-2" id="espacio_datosusuario">
						<small><strong>Estatus</strong><br />Activo</small>
					</div>
				</div>
			</div>
			<!-- Termina Panel Datos de Usuario -->

			<!-- Empieza Panel de Iconos del Sistema -->
			<div class="col-md-3">
				<div class="panel panel-body imagen_accionesprincipales sombrapanel">
					<a href="${request.contextPath}/mostrarBandejaAdmin"><img title="Mensajes Administrador" onclick="m_admin()"
						src="${request.contextPath}/images/iconografia/AccionesPrincipales/Seleccionadas/mensajes_administrador_32.png"></a>
					<a href="${request.contextPath}/mostrarBandeja"><img  title="Mensajes Emprendedor" onclick="m_emprendedor()"
						src="${request.contextPath}/images/iconografia/AccionesPrincipales/SinSeleccionar/mensajes_emprendedores_32.png"></a>
					<img
						src="${request.contextPath}/images/iconografia/AccionesPrincipales/SinSeleccionar/alertas_sistema_32.png">
					<img
						src="${request.contextPath}/images/iconografia/AccionesPrincipales/SinSeleccionar/ubicacion_emprendedores_32.png">
					<img
						src="${request.contextPath}/images/iconografia/AccionesPrincipales/SinSeleccionar/agenda_32.png">
				</div>
			</div>
			<!-- Termina Panel Iconos del Sistema -->
		</div>
		<!-- Finaliza Sección Datos y Acciones Principales -->


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
</body>
</html>