<!DOCTYPE html>
<html lang="en">

<head>
<meta name="layout" content="backoffice" />
<title>Inicio</title>

<!-- Necesario para calendario -->
<link rel="stylesheet" type="text/css" media="all"
	href="${request.contextPath}/css/jsDatePick_ltr.min.css" />
<script type="text/javascript"
	src="${request.contextPath}/js/jsDatePick.min.1.3.js"></script>
<script type="text/javascript" src="${request.contextPath}/js/cal.js"></script>
<!-- Termina necesario para calendario -->
</head>

<body>

	<p>&nbsp;</p>
	<!--  Contenido -->
	<div class="row">
		<div>

			<div class="col-md-9">

				<div class="panel panel-default">
					<div class="panel-body">

						<!-- Aquí va el slider -->

						<div class="div-carousel">
							<div id="myCarousel2" class="carousel slide" data-interval="3000"
								data-ride="carousel">
								<!-- Carousel indicators -->
								<ol class="carousel-indicators">
									<g:each in="${listaSliders}" var="slider" status="i">
										<g:if test="${i==0}">
											<li data-target="#myCarousel2" data-slide-to="0"
												class="active"></li>
										</g:if>
										<g:else>
											<li data-target="#myCarousel2" data-slide-to="${i}"></li>
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
								<a class="carousel-control left" href="#myCarousel2"
									data-slide="prev"> <span
									class="glyphicon glyphicon-chevron-left"></span>
								</a> <a class="carousel-control right" href="#myCarousel2"
									data-slide="next"> <span
									class="glyphicon glyphicon-chevron-right"></span>
								</a>
							</div>
						</div>
						<!-- Termina Slider -->
					</div>
					<!-- Content Row -->
					<div class="col-md-12">
						<!-- Inicio de los mensajes -->
						<p>Noticias</p>
						<div class="row">
							<!-- listaNoticias -->
							<g:each in="${listaNoticias}" var="noticia" status="i">
								<div class="col-md-6">
									<p class="pull-left">
										<img
											src="${request.contextPath}/images/noticias/${noticia.imagen_video}"
											class="thumbnail" hspace="10"
											style="max-width: 100%; max-height: 120px;" />
									</p>
									<small>
										<p>
											<strong><a href="#"> ${noticia.titulo_noticia}</a></strong>
										</p>
										<p>
											${noticia.descripcion}<br /> <em>Hace 3 horas</em>
										</p>
									</small>
								</div>
							</g:each>
						</div>
						<!-- Fin de los mensajes -->
						<br> <br> <br>

						<!-- Inicio de Acciones Comunitarias -->
						<!-- Nav tabs -->
						<p>Acciones Comunitarias</p>
						<ul class="nav nav-tabs" role="tablist">
							<li class="active"><a href="#home" role="tab"
								data-toggle="tab">Lunes</a></li>
							<li><a href="#profile" role="tab" data-toggle="tab">Martes</a></li>
							<li><a href="#messages" role="tab" data-toggle="tab">Miércoles</a></li>
							<li><a href="#settings" role="tab" data-toggle="tab">Jueves</a></li>
							<li><a href="#settings" role="tab" data-toggle="tab">Viernes</a></li>
							<li><a href="#settings" role="tab" data-toggle="tab">Sabado</a></li>
							<li><a href="#settings" role="tab" data-toggle="tab">Domingo</a></li>
						</ul>

						<!-- Tab panes -->
						<div class="tab-content">
							<div class="tab-pane active" id="Lunes">
								<div class="row">
									<g:each in="${listaAcciones}" var="accion" status="i">
										<div class="col-md-4">
											<br />
											<div class="box">
												<p class="pull-left">
													<asset:image
														src="iconografia/datosusuario/imagen_usuario_48.png"
														hspace="10" />
												</p>
												<small><strong>Emprendedor</strong><br>Categoría
													<asset:image
														src="iconografia/categorias/Normal/Bronce_16.png" /> <br>
													<asset:image
														src="iconografia/datosusuario/ubicacion_16.png" /> <em>
														${accion.lugar}
												</em></small><br />

												<!-- Comienza imagen -->
												<g:each in="${detalle}" var="d" status="j">
													<g:if test="${d.accion == accion}">
														<g:if test="${d.tipo == 1}">
															<img
																src="${request.contextPath}/images/acciones/${d.imagen_video}"
																class="thumbnail" hspace="10"
																style="max-width: 100%; max-height: 120px;" />
														</g:if>
														<g:if test="${d.tipo == 2}">
															<iframe width="150" height="111"
																src="//www.youtube.com/embed/${d.imagen_video}"
																frameborder="0" allowfullscreen></iframe>
														</g:if>
														<g:if test="${d.tipo == 3}">
															<img src="${d.imagen_video}" class="thumbnail"
																hspace="10" style="max-width: 100%; max-height: 120px;" />
														</g:if>
													</g:if>
												</g:each>

												<!-- Termina imagen -->

												<br /> <small> ${accion.descripcion}<em> <br />
														<a href="#">Abrir</a></em>
													<p class="pull-right">
														10<a href="#"><asset:image
																src="iconografia/datosusuario/ok_16.png" /></a>&nbsp;<a
															href="#"><asset:image
																src="iconografia/datosusuario/twitter_16.png" /></a>&nbsp;<a
															href="#"><asset:image
																src="iconografia/datosusuario/facebook_16.png" /></a></a>&nbsp;<a
															href="#"><asset:image
																src="iconografia/datosusuario/correo_16.png" /></a>
													</p>
												</small>
											</div>
										</div>
									</g:each>

									<div class="tab-pane" id="Martes"></div>

									<div class="tab-pane" id="Miercoles"></div>
									<div class="tab-pane" id="Jueves"></div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>


			<!-- Inicia Calendario -->
			<div class="col-md-3">
				<div style="text-align: center; width: 100%;">
					<div id="div_calendario" style="margin: auto; text-align: left;"></div>
					<br /> <br /> <br />
				</div>
				<!-- Termina calendario -->

				<!-- Inicia Reconocimiento mensual -->

				<table class="table table-condensed">
					<tr>
						<td colspan="2">
							<h4>Reconocimiento Mensual Julio 2014</h4>
						</td>
					</tr>
					<tr>
						<td><asset:image
								src="iconografia/datosusuario/imagen_usuario_48.png" /></td>
						<td><strong>Nombre del Emprendedor</strong><br />Emprendedor
							Bronce <asset:image
								src="iconografia/categorias/Normal/Bronce_24.png" /></td>
					</tr>
					<tr>
						<td><asset:image
								src="iconografia/datosusuario/imagen_usuario_48.png" /></td>
						<td><strong>Nombre del Emprendedor</strong><br />Emprendedor
							Bronce <asset:image
								src="iconografia/categorias/Normal/Bronce_24.png" /></td>
					</tr>
					<tr>
						<td><asset:image
								src="iconografia/datosusuario/imagen_usuario_48.png" /></td>
						<td><strong>Nombre del Emprendedor</strong><br />Emprendedor
							Bronce <asset:image
								src="iconografia/categorias/Normal/Bronce_24.png" /></td>
					</tr>
					<tr>
						<td><asset:image
								src="iconografia/datosusuario/imagen_usuario_48.png" /></td>
						<td><strong>Nombre del Emprendedor</strong><br />Emprendedor
							Bronce <asset:image
								src="iconografia/categorias/Normal/Bronce_24.png" /></td>
					</tr>
					<tr>
						<td><asset:image
								src="iconografia/datosusuario/imagen_usuario_48.png" /></td>
						<td><strong>Nombre del Emprendedor</strong><br />Emprendedor
							Bronce <asset:image
								src="iconografia/categorias/Normal/Bronce_24.png" /></td>
					</tr>
				</table>
				<!-- Termina Reconocimiento mensual -->

				<!-- Comienza Agregar acción comunitaria -->

				<div>
					<g:uploadForm controller="inicio" method="post"
						action="uploadAccion">
						<table class="table table-condensed">
							<tr>
								<td colspan="2"><asset:image
										src="iconografia/varios/linea_colores.png" />
									<h4>Envía tu noticia (Acción Comunitaria)</h4></td>
							</tr>
							<tr>
								<td colspan="2"><p class="pull-left">
										<asset:image
											src="iconografia/datosusuario/imagen_usuario_48.png"
											hspace="2" />
									</p> <strong> ${session.user} ${session.primer_apellido} ${session.segundo_apellido}
								</strong> <br />Emprendedor Bronce <asset:image
										src="iconografia/categorias/Normal/Bronce_24.png" /></td>
								<td></td>
							</tr>
							<tr>

								<td colspan="2"><textarea class="form-control" rows="7"
										placeholder="Escribe tu noticia aquí" name="descripcion"></textarea>
									<p class="pull-right">
										<small>250</small>
									</p></td>
								<td></td>
							</tr>
							<tr>
								<td><p class="pull-left">
										<asset:image src="iconografia/controles/adjunto_a24.png" />
									</p>
									<p>
										Adjuntar archivo<br> <small>(Video o imagen)</small>
									</p></td>

								<td><div align="right">
										<button type="submit" class="btn btn-success">Agregar
											acción</button>
									</div></td>
							</tr>
							<tr>
								<td colspan="2"><small><em>Máx. 4 imágenes o 1
											video</em></small></td>
							</tr>
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
					</g:uploadForm>
				</div>

				<!-- Termina Agragr Acción-->

				<!-- Inicia banner descarga APP -->
				<div style="background-color: #AFD36F">
					<p class="text-center">
						<asset:image src="iconografia/varios/descargaaplicacion.png" />
						<br>
						<button type="button" class="btn btn-default">DESCARGAR</button>
					</p>
					<p>&nbsp;</p>
				</div>
				<!-- Termina Banner descarga APP -->

				<!-- Inicia formulario de contacto -->
				<g:form action="sendmail" style="padding-left:0px">
					<table class="table table-condensed">
						<tr>
							<td colspan="2"><asset:image
									src="iconografia/varios/linea_fucsia.png" />
								<h4>Contacto</h4></td>
						</tr>
						<tr>
							<td colspan="2"><input type="text" class="form-control"
								placeholder="E-mail" name="mail"></td>
						</tr>
						<tr>
							<td colspan="2"><input type="text" class="form-control"
								placeholder="Asunto" name="asunto"></td>
						</tr>
						<tr>
							<td colspan="2"><textarea class="form-control" rows="5"
									placeholder="Mensaje" name="mensaje"></textarea></td>
						</tr>
						<tr>
							<td><div align="right">
									<button type="submit" class="btn btn-success">Enviar</button>
								</div></td>
						</tr>
					</table>
				</g:form>
				<!-- Termina formulario de contacto -->

			</div>



		</div>
	</div>
	<!-- Contenido -->
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
</body>

</html>