<!DOCTYPE html>
<html lang="en">
<head>
<meta name="layout" content="backoffice" />
<title>Inicio</title>

<!-- Necesario para calendario -->
<link rel="stylesheet" type="text/css" media="all"
	href="${request.contextPath}/css/calendario.css" />
<link rel="stylesheet" type="text/css" media="all"
	href="${request.contextPath}/css/slider.css" />
<script type="text/javascript"
	src="${request.contextPath}/js/jsDatePick.min.1.3.js"></script>
<script type="text/javascript" src="${request.contextPath}/js/cal.js"></script>
<!-- Termina necesario para calendario -->
</head>

<body role="document" id="fondo_body">

	<div class="container theme-showcase" role="main">

		<!-- Inicia Contenido principal -->
		<div class="row">

			<!-- Inicia Carrusel -->
			<div class="col-md-9">
				<div id="myCarousel" class="carousel slide carrusel"
					data-ride="carousel">
					<!-- Carousel indicators -->
					<ol class="carousel-indicators">
						<g:each in="${listaSliders}" var="slider" status="i">
							<g:if test="${i==0}">
								<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							</g:if>
							<g:else>
								<li data-target="#myCarousel" data-slide-to="${i}"></li>
							</g:else>
						</g:each>
					</ol>
					<!-- Carousel items -->
					<div class="carousel-inner">

						<g:each in="${listaSliders}" var="slider" status="i">
							<g:if test="${i==0}">
								<div class="active item"
									style="background-image:url('${request.contextPath}/images/sliders/${slider.url}');">
									<h2>
										${slider.titulo}
									</h2>
									<div class="carousel-caption">
										<h3>Otro texto</h3>
										<p>
											${slider.descripcion}
										</p>
									</div>
								</div>
							</g:if>
							<g:else>
								<div class="item"
									style="background-image:url('${request.contextPath}/images/sliders/${slider.url}');">
									<h2>
										${slider.titulo}
									</h2>
									<div class="carousel-caption">
										<h3>Otro texto</h3>
										<p>
											${slider.descripcion}
										</p>
									</div>
								</div>
							</g:else>
						</g:each>
					</div>
					<!-- Carousel nav -->
					<a class="carousel-control left" href="#myCarousel"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left"></span>
					</a> <a class="carousel-control right" href="#myCarousel"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right"></span>
					</a>
				</div>

				<!-- Finaliza Carrusel -->

				<!-- Inicia Lista de Noticias -->
				<div class="col-md-12">
					<h3>Noticias</h3>
					<div class="row">
						<g:each in="${listaNoticias}" var="noticia" status="i">
							<div class="col-md-6 panel-body">
								<p>
									<img
										src="${request.contextPath}/images/noticias/${noticia.imagen_video}"
										class="thumbnail thmb_noticia" align="left">
								</p>
								<div>
									<small> <strong><a href="#"> ${noticia.titulo_noticia}
										</a></strong>
									</small> <small> ${noticia.descripcion}<br> <em>Hace 3
											horas</em>
									</small>
								</div>
							</div>
						</g:each>

					</div>
				</div>
				<!-- Termina Lista de Noticias -->

				<!-- Inicia Buscador -->
				<div class="col-md-12">
					<hr>
					<div class="panel-body panel_buscador_principal">
						<div class="col-md-4">
							<p>
								<strong>En Acción Comunitaria</strong>
							</p>
							<p>
								<input type="text" class="form-control"
									placeholder="Buscar por usuario, contenido, fecha, ubicación">
							</p>
						</div>
					</div>
				</div>
				<!-- Termina Buscador -->

				<!-- Inicio de Acciones Comunitarias -->
				<div id="acciones">
					<p>&nbsp;</p>
					<h3>Acciones Comunitarias</h3>
					<p>&nbsp;</p>
					<div id="contenidoDeAcciones">
						<!-- Acción -->
						<g:each in="${listaAcciones}" var="accion" status="i">
							<div class="col-md-4">
								<div class="box dimension_noticiaaccionescom">
									<p class="pull-left">
										<img
											src="${request.contextPath}/images/iconografia/datosusuario/imagen_usuario_48.png"
											hspace="10">
									</p>
									<p>
										<small><strong>Emprendedor</strong><br>Categoría
											<img src="${request.contextPath}/images/iconografia/categorias/Normal/Bronce_16.png"><br>
											<img src="${request.contextPath}/images/iconografia/datosusuario/ubicacion_16.png"><em>
												${accion.lugar}
										</em></small>
									</p>
									<div class="dimension_noticiaaccionescom_texto">

										<g:each in="${detalle}" var="d" status="j">
											<g:if test="${d.accion == accion}">
												<g:if test="${d.tipo == 1}">
													<img
														src="${request.contextPath}/images/acciones/${d.imagen_video}"
														class="thumbnail accionescom_imagentmb">
												</g:if>
												<g:if test="${d.tipo == 2}">
													<iframe src="//www.youtube.com/embed/${d.imagen_video}"
														class="thumbnail accionescom_imagentmb"></iframe>
												</g:if>
												<g:if test="${d.tipo == 3}">
													<img src="${d.imagen_video}"
														class="thumbnail accionescom_imagentmb">
												</g:if>
											</g:if>
										</g:each>
										<small> ${accion.descripcion}
										</small><br>
									</div>
									<a href="#"><em>Abrir</em></a>
									<p class="pull-right">
										10 <a href="#"><img
											src="${request.contextPath}/images/iconografia/datosusuario/ok_16.png"></a>&nbsp;
										<a href="#"><img
											src="${request.contextPath}/images/iconografia/datosusuario/twitter_16.png"></a>&nbsp;
										<a href="#"><img
											src="${request.contextPath}/images/iconografia/datosusuario/facebook_16.png"></a>&nbsp;
										<a href="#"><img
											src="${request.contextPath}/images/iconografia/datosusuario/correo_16.png"></a>
									</p>
								</div>
							</div>
							<!-- Termina acción -->
							<g:if test="${i%3 == 2}">
								<!-- División extra -->
								<div class="col-md-12">
									<hr>
								</div>
							</g:if>
						</g:each>
					</div>
				</div>

				<!-- Terminan Acciones Comunitarias -->

			</div>

			<!-- Termina contenido principal -->


			<!-- Inicia Columna Lateral Derecha -->

			<div class="col-md-3">
				<!-- Inicia Calendario -->
				<div id="div_calendarioo"
					style="margin: 0px; text-align: left; position: relative;"
					class="sombrapanel">
					<div class="JsDatePickBox" style="">
						<div class="boxMain" align="center">
							<div class="fecha_principal">
								<p class="pull_left texto_cal_1">
									Día Semana<br>Mes - Año
								</p>
								<p class="pull_left texto_cal_2">01</p>
							</div>
							<div id="div_calendario"></div>
						</div>
					</div>
				</div>
				<!-- Termina Calendario -->
				<hr />
				<!-- Inicia Panel Reconocimientos -->
				<div class="row panel_reconocimiento">
					<div class="panel panel-default panelcontacto">
						<div class="panel-body">
							<div class="col-md-12">
								<h4>
									<strong>Reconocimiento Mensual<br>Noviembre 2014
									</strong>
								</h4>
								<hr>
							</div>
							<!-- Inicia Listado Reconocimientos -->
							<div class="panel-body">
								<div class="col-md-3">
									<img
										src="${request.contextPath}/images/iconografia/datosusuario/imagen_usuario_48.png" />
								</div>
								<div class="col-md-9">
									<strong>Nombre del Emprendedor</strong><br />Emprendedor
									Bronce <img
										src="${request.contextPath}/images/iconografia/categorias/Normal/Bronce_24.png" />
								</div>
							</div>
							<div class="panel-body">
								<div class="col-md-3">
									<img
										src="${request.contextPath}/images/iconografia/datosusuario/imagen_usuario_48.png" />
								</div>
								<div class="col-md-9">
									<strong>Nombre del Emprendedor</strong><br />Emprendedor
									Bronce <img
										src="${request.contextPath}/images/iconografia/categorias/Normal/Bronce_24.png" />
								</div>
							</div>
							<div class="panel-body">
								<div class="col-md-3">
									<img
										src="${request.contextPath}/images/iconografia/datosusuario/imagen_usuario_48.png" />
								</div>
								<div class="col-md-9">
									<strong>Nombre del Emprendedor</strong><br />Emprendedor
									Bronce <img
										src="${request.contextPath}/images/iconografia/categorias/Normal/Bronce_24.png" />
								</div>
							</div>
							<div class="panel-body">
								<div class="col-md-3">
									<img
										src="${request.contextPath}/images/iconografia/datosusuario/imagen_usuario_48.png" />
								</div>
								<div class="col-md-9">
									<strong>Nombre del Emprendedor</strong><br />Emprendedor
									Bronce <img
										src="${request.contextPath}/images/iconografia/categorias/Normal/Bronce_24.png" />
								</div>
							</div>
							<div class="panel-body">
								<div class="col-md-3">
									<img
										src="${request.contextPath}/images/iconografia/datosusuario/imagen_usuario_48.png" />
								</div>
								<div class="col-md-9">
									<strong>Nombre del Emprendedor</strong><br />Emprendedor
									Bronce <img
										src="${request.contextPath}/images/iconografia/categorias/Normal/Bronce_24.png" />
								</div>
							</div>
							<!-- Termina Listado Reconocimientos -->
						</div>
					</div>
					<hr>
				</div>
				<!-- Termina Panel Reconocimientos -->

				<!-- Panel de Enviar Noticia -->
				<div class="panel panel-default panelnoticia">
					<g:uploadForm controller="inicio" method="post"
						action="uploadAccion">
						<div class="panel-body">
							<h4>
								<strong>Envía tu noticia</strong>
							</h4>
							<hr>
							<p class="pull-left">
								<img src="${request.contextPath}/images/iconografia/datosusuario/imagen_usuario_48.png"
									hspace="2">
							</p>
							<p>
								<strong>Nombre del Emprendedor</strong><br />Emprendedor Bronce
								<img src="${request.contextPath}/images/iconografia/categorias/Normal/Bronce_24.png" />
								<br> <br>
							</p>
							<p>
								<textarea class="form-control" rows="7"
									placeholder="Escribe tu noticia aquí" name="descripcion"></textarea>
							</p>
							<p class="pull-right">
								<small>250</small>
							</p>
							<p class="pull-left">
								<img src="${request.contextPath}/images/iconografia/controles/adjunto_a24.png">
							</p>
							<!--
							<p>
								Adjuntar archivo<br> <small>(Video o imagen)</small>
							</p>
							-->
							<div align="right">
								<button type="submit" class="btn btn-success">Enviar
									noticia</button>
							</div>
							<table>
								<tr>
									<td><select name="tipo" id="tipo"
										onchange="cambia(this.options[this.selectedIndex].value)">
											<option value="1">Subir Imágenes</option>
											<option value="2">Video de YouTube</option>
											<option value="3">Links de Imágenes externas</option>
									</select></td>

								</tr>
								<tr id="im1">
									<td><input class="filestyle" type="file" id="imagen1"
										name="imagen1" /></td>
								</tr>
								<tr id="im2">
									<td><input class="filestyle" type="file" id="imagen2"
										name="imagen2" /></td>
								</tr>
								<tr id="im3">
									<td><input class="filestyle" type="file" id="imagen3"
										name="imagen3" /></td>
								</tr>
								<tr id="im4">
									<td><input class="filestyle" type="file" id="imagen4"
										name="imagen4" /></td>
								</tr>

							</table>
							<small><em>Máx. 4 imágenes o un archivo de video</em></small>
						</div>
					</g:uploadForm>
				</div>
				<!-- Termina Panel Enviar Noticia -->

				<!-- Inicia Panel Descargar Aplicación -->
				<div class="descargaraplicacion">
					<p>
						<img src="${request.contextPath}/images/iconografia/varios/descargaaplicacion.png"><br>
						<button type="button" class="btn btn-default">DESCARGAR</button>
					</p>
					<p>&nbsp;</p>
				</div>
				<!-- Termina Panel Descargar Aplicación -->

				<!-- Inicia Panel Contacto -->
				<div class="panel panel-default panelcontacto">
					<div class="panel-body">
						<h4>
							<strong>Contacto</strong>
						</h4>
						<hr>
						<input type="text" class="form-control" placeholder="E-mail"><br>
						<input type="text" class="form-control" placeholder="Asunto"><br>
						<textarea class="form-control" rows="5" placeholder="Mensaje"></textarea>
						<br>
						<div align="right">
							<button type="submit" class="btn btn-success">Enviar</button>
						</div>
					</div>
				</div>
				<!-- Termina Panel Contacto -->

			</div>
			<!-- Termina Contenido Lateral -->

		</div>
		<!-- Termina Todo El Contenido -->

	</div>

	<p>&nbsp;</p>

	<script type="text/javascript">
		function cambia(tipo) {
			var type;
			var value;
			var placeholder;
			var disabled;
			var display;
			if (tipo == 1) { //Subir imagen
				type = "file";
				value = "";
				placeholder = "Ej. http://i.imgur.com/i9I9Gs3.jpg";
				disabled = false;
				display = "inline";
				document.getElementById("imagen1").name = "imagen1";
			} else if (tipo == 2) { //Video de YouTube
				type = "text";
				value = "";
				placeholder = "Ej. https://www.youtube.com/watch?v=_zR6ROjoOX0";
				disabled = true;
				display = "none";
				document.getElementById("imagen1").name = "video";
			} else if (tipo == 3) { //Imagen externa
				type = "text";
				value = "";
				placeholder = "Ej. http://i.imgur.com/i9I9Gs3.jpg";
				disabled = false;
				display = "inline";
				document.getElementById("imagen1").name = "imagen1";
			} else {
				alert("¡No coincide!")
			}
			document.getElementById("imagen1").type = type;
			document.getElementById("imagen2").type = type;
			document.getElementById("imagen3").type = type;
			document.getElementById("imagen4").type = type;
			document.getElementById("imagen1").value = value;
			document.getElementById("imagen2").value = value;
			document.getElementById("imagen3").value = value;
			document.getElementById("imagen4").value = value;
			document.getElementById("imagen1").placeholder = placeholder;
			document.getElementById("imagen2").placeholder = placeholder;
			document.getElementById("imagen3").placeholder = placeholder;
			document.getElementById("imagen4").placeholder = placeholder;

			document.getElementById("imagen2").disabled = disabled;
			document.getElementById("imagen3").disabled = disabled;
			document.getElementById("imagen4").disabled = disabled;

			document.getElementById("im2").style.display = display;
			document.getElementById("im3").style.display = display;
			document.getElementById("im4").style.display = display;
		}
	</script>

	<!-- /container -->

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
</body>


</html>