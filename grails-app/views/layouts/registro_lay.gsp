<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Compromiso MX</title>
<g:layoutHead />
<!-- Bootstrap -->
<link href="${request.contextPath}/css/bootstrap.css" rel="stylesheet">
<link href="${request.contextPath}/css/navbar_registro.css"
	rel="stylesheet">
<link href="${request.contextPath}/css/estilos.css" rel="stylesheet">
<link href="${request.contextPath}/css/piepag_registro.css"
	rel="stylesheet">
<link href="${request.contextPath}/css/carrusel.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" media="all"
	href="${request.contextPath}/css/calendario.css" />

<link rel="stylesheet" href="${request.contextPath}/css/jquery-ui.css">
<script src="${request.contextPath}/js/modernizr-2.6.2.min.js"></script>
<script src="${request.contextPath}/js/jquery-1.9.1.min.js"></script>
<script src="${request.contextPath}/js/jquery-ui-1.10.1.min.js"></script>
<script>
	$(function() {
		if (!Modernizr.inputtypes['date']) {
			$('input[type=date]').datepicker({
				dateFormat : 'yy-mm-dd',
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

</head>
<body role="document" id="fondo_body">

	<div class="navbar navbar-inverse navbar-fixed-top fondo_nav_registro"
		role="navigation">
		<div class="container fondo_nav_registro_interior">
			<div class="row navbar_registro_fila1">
				<div class="col-md-3 navbar_registro_izq">
					<img
						src="${request.contextPath}/images/iconografia/navbar_registro/red_accion_com.png">
				</div>
				<div class="col-md-9 navbar_registro_vinculo">
					<div class="pull-right">
						<p class="pull-right">
							<img class="imagen_carrito"
								src="${request.contextPath}/images/iconografia/navbar_registro/img_carrito.png" />
						</p>
						<p class="pull-right">
							<select class="form-control combo_idioma"><option>Español</option></select>
						</p>
						<p class="pull-right">
							<a href="#"><img
								src="${request.contextPath}/images/iconografia/AccionesHeader/SinSeleccionar/donar_81_32.png"></a>
							<a href="#" class="navbar_registro_vinculo"><small>Iniciar
									sesión</small></a>&nbsp;|&nbsp; <a href="#" class="navbar_registro_vinculo"><small>Registrarse</small></a>&nbsp;|&nbsp;
						</p>
					</div>
				</div>
			</div>
			<div class="row navbar_registro_fila2">
				<div class="col-md-6 navbar_registro_izq">
					<div class="navbar_registro_logo"></div>
				</div>
				<div class="col-md-6 navbar_registro_der">
					<div class="pull-right">
						<div class="navbar_redes">
							<a href="#"><img
								src="${request.contextPath}/images/iconografia/navbar_registro/mac.png"></a>
							<a href="#"><img
								src="${request.contextPath}/images/iconografia/navbar_registro/android.png"></a>
							<img class="navbar_redes_separador"
								src="${request.contextPath}/images/iconografia/navbar_registro/separador_verde.png">
							<a href="#"><img
								src="${request.contextPath}/images/iconografia/navbar_registro/siguenos.png"></a>
							<a href="#"><img
								src="${request.contextPath}/images/iconografia/navbar_registro/megusta.png"></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container theme-showcase" role="main">
		<div class="page-header"></div>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>


		<!-- Aquí va contenido -->

		<div class="row">

			<!-- Comienza Panel Registro -->
			<div class="col-md-12">
				<div class="panel panel-body sombrapanel ">
					<p>&nbsp;</p>
					<p class="reg_alineacion">
						<img
							src="${request.contextPath}/images/iconografia/navbar_registro/logo_cmx.png">
					</p>
					<p>&nbsp;</p>
					<div class="row">
						<div class="col-lg-2"></div>
						<div class="col-md-2 panel_paso_activo">Información del
							Mentor</div>
						<div class="col-md-1 panel_paso">Información de la cuenta</div>
						<div class="col-md-1 panel_paso">Acuerdo</div>
						<div class="col-md-1 panel_paso">Paquete de Bienvenida</div>
						<div class="col-md-1 panel_paso">Información de Autopago</div>
						<div class="col-md-1 panel_paso">Nuestro Movimiento</div>
						<div class="col-md-1 panel_paso">Confirmación</div>
						<div class="col-lg-2"></div>
					</div>

					<!--Inicia  Botones de navegación -->
					<div id="botones" class="row">
						<p class="reg_alineacion">
							<button id="regresa" type="button" class="btn btn-gris"
								onclick="regresa();">Anterior</button>
							<button id="avanza" type="button" class="btn btn-rosa"
								onclick="avanza();">Siguiente</button>
						</p>
						<br /> <br />
					</div>
					<!-- Termina  Botones de -->

					<!-- Inicia formulario -->

					<g:layoutBody />

					<!-- Termina formulario -->

					<!--Inicia  Botones de navegación -->
					<div id="botones" class="row">
						<p class="reg_alineacion">
							<button id="regresa" type="button" class="btn btn-gris"
								onclick="regresa();">Anterior</button>
							<button id="avanza" type="button" class="btn btn-rosa"
								onclick="avanza();">Siguiente</button>
						</p>
						<br /> <br />
						<p class="reg_alineacion">
							<small><strong>La información solicitada es
									confidencial.</strong> <br> <a href="#">Términos condiciones de
									uso y privacidad</a></small>
						</p>
					</div>
					<!-- Termina  Botones de -->
				</div>
			</div>

		</div>

		<!--  Aquí termina contenido -->


	</div>
	<!-- Finaliza Panel Registro-->

	<!-- </div> -->
	<!-- Termina Sección Principal -->

	<p>&nbsp;</p>

	<!-- Inicia Pie de Página -->
	<div class="row estilo_piepagina">
		<footer>
			<div class="acomodo_texto">
				<p class="text-center pie_pagina_texto">
					<strong>&copy; 2014 Red de Acción Comunitaria S.A. de C.V.
						Derechos Reservados</strong>
				</p>
				<p class="text-center pie_pagina_texto">
					<small> <a href="#" class="pie_pagina_vinculo">Términos
							y Condiciones</a> &middot; <a href="#" class="pie_pagina_vinculo">Políticas
							de Privacidad</a> &middot; <a href="#" class="pie_pagina_vinculo">Mapa
							del Sitio</a> &middot; <a href="#" class="pie_pagina_vinculo">Contáctenos</a>
						&middot; &copy; 2014 Red de Acción Comunitaria S.A. de C.V.
						Derechos Reservados
					</small>
				</p>
			</div>
		</footer>
	</div>
	<!-- Termina Pie de Página -->

	<!-- </div>-->
	<!-- /container -->

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="${request.contextPath}/js/bootstrap.min.js"></script>
	<script>
		var pantalla = 1;
		var pasos = 7;

		function avanza() {
			if (pantalla < pantallas) {
				$("#pantalla" + pantalla).hide();
				pantalla = pantalla + 1;
				$("#pantalla" + pantalla).fadeIn();
			} else {
				if (paso < pasos) {
					paso = paso + 1;
					document.getElementById("accion").value = 1;
					/* window.open("
	${request.contextPath}
		" + "/registrar/paso" + paso, "_self");*/
					//alert("hey");
					document.getElementById("formulario").submit();
					//alert("werwe");
				}

				//alert("No hay más pantallas");
				//Hacer submit
			}
		}

		function regresa() {
			if (pantalla > 1) {
				$("#pantalla" + pantalla).hide();
				pantalla = pantalla - 1;
				$("#pantalla" + pantalla).fadeIn();
			} else {
				if (paso > 0) {
					paso = paso - 1;
					document.getElementById("accion").value = 0;
					/* window.open("
	${request.contextPath}
		" + "/registrar/paso" + paso, "_self"); */
					document.getElementById("formulario").submit();
				}
				//Hacer submit
			}
		}
	</script>
</body>
</html>