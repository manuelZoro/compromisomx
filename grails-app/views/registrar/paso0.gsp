<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Compromiso MX</title>

<!-- Bootstrap -->
<link href="${request.contextPath}/css/bootstrap.css" rel="stylesheet">
<link href="${request.contextPath}/css/navbar_registro.css"
	rel="stylesheet">
<link href="${request.contextPath}/css/estilos.css" rel="stylesheet">
<link href="${request.contextPath}/css/piepag_registro.css"
	rel="stylesheet">
<link href="${request.contextPath}/css/carrusel.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" media="all"
	href="${request.contextPath}/css\calendario.css" />
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
		<g:form name="formulario" controller="registrar" action="savePaso0">
			<div class="row">

				<!-- Comienza Panel Registro -->
				<div class="col-md-12">
					<div class="panel panel-body sombrapanel ">
						<p class="reg_alineacion">
							<img
								src="${request.contextPath}/images/iconografia/navbar_registro/logo_cmx.png">
						</p>
						<div class="panel-body mensaje_neutral">
							<div class="bg_neutral">
								<h3>
									<strong>Selección de Registro</strong>
								</h3>
							</div>
						</div>
						<p>&nbsp;</p>
						<div class="row">
							<div class="col-md-1"></div>
							<div class="col-md-10">
								<div class="col-md-1"></div>
								<div class="col-md-11">
									<h3>
										<strong>Opción de Registro</strong>
									</h3>
									<div class="col-md-1"></div>
									<div class="col-md-11">¡Felicidades! Usted ha sido
										invitado a formar parte del movimiento COMPROMISO MX. Hagamos
										juntos que las cosas sucedan.</div>
									<div class="col-md-12">
										<hr>
									</div>
									<h4>
										<strong>Puede participar en el movimiento como:
											Colaborador Social (CS) o Emprendedor Social Independiente
											(ESI).</strong>
									</h4>
									<div class="col-md-1">
										<div class="checkbox pull-right">
											<label><input type="radio" name="tipo" id="cs"
												required value="1"></label>
										</div>
									</div>
									<div class="col-md-11">
										<h3>
											<strong>Colaborador Social (CS)</strong>
										</h3>
										<p>Nuestros CS son aquellas personas generosas que
											contribuyen positivamente al movimiento COMPROMISOMX y
											reciben mensualmente productos mexicanos elaborados con
											prácticas de comercio justo. Su participación nos ayuda a
											llevar a cabo acciones sociales en beneficio de nuestro país
											y a generar una mejor economía para los productos mexicanos.
											Como CS usted gozará de atractivos descuentos en la tiensa
											social y podrá participar en nuestras actividades y eventos.</p>
									</div>
									<div class="col-md-1">
										<div class="checkbox pull-right">
											<label><input type="radio" name="tipo" id="esi"
												required value="0"></label>
										</div>
									</div>
									<div class="col-md-11">
										<h3>
											<strong>Emprendedor Social Independiente (ESI)</strong>
										</h3>
										<p>Como ESI usted está iniciando su propia empresa social
											y forma parte de nuestra red en acción. Nuestro compromiso es
											ayudarlo a desarrollarse personal, social, profesional y
											económicamente; a su vez usted tendrá la oportunidad de
											ayudar a más personas.</p>
									</div>
									<!-- <button type="submit">Enviar</button> -->

									<!--Inicia  Botones de navegación -->
									<div id="botones" class="row">
										<p class="reg_alineacion">
											<button type="button" class="btn btn-rosa"
												onclick="avanza();">Siguiente</button>
										</p>
										<br /> <br />
										<p class="reg_alineacion">
											<small><strong>La información solicitada es
													confidencial.</strong> <br> <a href="#">Términos
													condiciones de uso y privacidad</a></small>
										</p>
									</div>

									<p>&nbsp;</p>
								</div>
								<div class="col-md-1"></div>
							</div>
							<div class="col-md-1"></div>
						</div>
					</div>
				</div>
				<!-- Termina Panel Registro -->


			</div>
			<input type="hidden" value="" name="accion" id="accion" />
		</g:form>
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
	<script src="${request.contextPath}/js/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="${request.contextPath}/js/bootstrap.min.js"></script>
	<script>
		var paso = 0;
		var pasos = 7;

		function avanza() {

			if (paso < pasos) {
				paso = paso + 1;
				document.getElementById("accion").value = 1;
				document.getElementById("formulario").submit();
			}
		}
	</script>

	<g:if test="${session.registro_cuenta != null}">
		<g:if test="${session.registro_cuenta.tipo}">
			<script type="text/javascript">
				document.getElementById("cs").checked = true;
			</script>
		</g:if>
		<g:else>
			<script type="text/javascript">
				document.getElementById("esi").checked = true;
			</script>
		</g:else>

	</g:if>
	<g:else>Es nulo ${session.registro_cuenta}
	</g:else>

</body>
</html>