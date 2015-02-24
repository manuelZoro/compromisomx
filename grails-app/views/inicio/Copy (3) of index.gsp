
<!DOCTYPE html>
<html lang="en">

<head>
<meta name="layout" content="backoffice" />
<title>Inicio</title>
</head>

<body>
	<g:message code="${flash.message}" args="${flash.args}"
		default="${flash.default}" />
	<p>&nbsp;</p>

	<!--  Contenido -->
	<div class="row">
		<div class="col-md-9">

			<div class="col-md-9">

				<div class="panel panel-default">
					<div class="panel-body">
						<div class="bs-example">
							<div id="myCarousel" class="carousel slide" data-interval="3000"
								data-ride="carousel">
								<!-- Carousel indicators -->
								<ol class="carousel-indicators">
									<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
									<li data-target="#myCarousel" data-slide-to="1"></li>
									<li data-target="#myCarousel" data-slide-to="2"></li>
								</ol>
								<!-- Carousel items -->
								<div class="carousel-inner">
									<div class="active item">
										<h2>Slide 1</h2>
										<div class="carousel-caption">
											<h3>Primer Slide</h3>
											<p>Mensaje del Primer Slide.</p>
										</div>
									</div>
									<div class="item">
										<h2>Slide 2</h2>
										<div class="carousel-caption">
											<h3>Segundo Slide</h3>
											<p>Mesaje Slide 2.</p>
										</div>
									</div>
									<div class="item">
										<h2>Slide 3</h2>
										<div class="carousel-caption">
											<h3>Tercer Slide</h3>
											<p>Mensaje del tercer slide.</p>
										</div>
									</div>
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
						</div>
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
										<img src="${request.contextPath}/images/noticias/${noticia.imagen_video}" class="thumbnail" hspace="10" style="max-width: 100%; max-height: 120px;" />
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
												<img src="${request.contextPath}/images/acciones/${accion.imagen_video}" class="thumbnail" hspace="10" style="max-width: 100%; max-height: 120px;" />
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

				<table class="table table-condensed">
					<tr>
						<td class="info">
							<h6>
								Sábado<br>Septiembre 2014
							</h6>
							<h1>25</h1>

						</td>
					</tr>

				</table>
				<table class="table table-condensed">
					<tr>
						<td><div align="center">
								<strong><small>M</small></strong>
							</div></td>
						<td><div align="center">
								<strong><small>T</small></strong>
							</div></td>
						<td><div align="center">
								<strong><small>W</small></strong>
							</div></td>
						<td><div align="center">
								<strong><small>T</small></strong>
							</div></td>
						<td><div align="center">
								<strong><small>F</small></strong>
							</div></td>
						<td><div align="center">
								<strong><small>S</small></strong>
							</div></td>
						<td><div align="center">
								<strong><small>S</small></strong>
							</div></td>
					</tr>
					<tr>
						<td><div align="center">
								<small>1</small>
							</div></td>
						<td><div align="center">
								<small>2</small>
							</div></td>
						<td><div align="center">
								<small>3</small>
							</div></td>
						<td><div align="center">
								<small>4</small>
							</div></td>
						<td><div align="center">
								<small>5</small>
							</div></td>
						<td><div align="center">
								<small>6</small>
							</div></td>
						<td><div align="center">
								<small>7</small>
							</div></td>
					</tr>
					<tr>
						<td><div align="center">
								<small>8</small>
							</div></td>
						<td><div align="center">
								<small>9</small>
							</div></td>
						<td><div align="center">
								<small>10</small>
							</div></td>
						<td><div align="center">
								<small>11</small>
							</div></td>
						<td><div align="center">
								<small>12</small>
							</div></td>
						<td><div align="center">
								<small>13</small>
							</div></td>
						<td><div align="center">
								<small>14</small>
							</div></td>
					</tr>
					<tr>
						<td><div align="center">
								<small>15</small>
							</div></td>
						<td><div align="center">
								<small>16</small>
							</div></td>
						<td><div align="center">
								<small>17</small>
							</div></td>
						<td><div align="center">
								<small>18</small>
							</div></td>
						<td class="success"><div align="center">
								<small>19</small>
							</div></td>
						<td><div align="center">
								<small>20</small>
							</div></td>
						<td><div align="center">
								<small>21</small>
							</div></td>
					</tr>
					<tr>
						<td><div align="center">
								<small>22</small>
							</div></td>
						<td><div align="center">
								<small>23</small>
							</div></td>
						<td><div align="center">
								<small>24</small>
							</div></td>
						<td><div align="center">
								<small>25</small>
							</div></td>
						<td><div align="center">
								<small>26</small>
							</div></td>
						<td><div align="center">
								<small>27</small>
							</div></td>
						<td><div align="center">
								<small>28</small>
							</div></td>
					</tr>
					<tr>
						<td><div align="center">
								<small>29</small>
							</div></td>
						<td><div align="center">
								<small>30</small>
							</div></td>
						<td><div align="center">
								<small>31</small>
							</div></td>
						<td><div align="center">
								<small></small>
							</div></td>
						<td><div align="center">
								<small></small>
							</div></td>
						<td><div align="center">
								<small></small>
							</div></td>
						<td><div align="center">
								<small></small>
							</div></td>
					</tr>
				</table>
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

				<!-- Comienza envía tu noticia -->
				<div>
					<g:uploadForm controller="inicio" method="post" action="upload">
						<table class="table table-condensed">
							<tr>
								<td colspan="2"><asset:image
										src="iconografia/varios/linea_colores.png" />
									<h4>Envía tu noticia</h4></td>
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
										<button type="submit" class="btn btn-success">Enviar
											noticia</button>
									</div></td>
							</tr>
							<tr>
								<td colspan="2"><small><em>Máx. 1 imagen</em></small></td>
							</tr>
							<tr>
								<td><input class="filestyle" type="file" name="imagen" />
								</td>
							</tr>


						</table>
						<!--
						<fieldset class="form">
							<input type="file" name="imagen" />
						</fieldset>
						<fieldset class="buttons">
							<g:submitButton name="upload" value="Upload" />
						</fieldset>
						-->
					</g:uploadForm>
				</div>

				<!-- Termina Envia tu noticia -->

				<!-- Comienza Agregar acción comunitaria -->

				<div>
					<g:uploadForm controller="inicio" method="post"
						action="uploadAccion">
						<table class="table table-condensed">
							<tr>
								<td colspan="2"><asset:image
										src="iconografia/varios/linea_colores.png" />
									<h4>Agregar Acción Comunitaria</h4></td>
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
										<button type="submit" class="btn btn-success">Agregar acción</button>
									</div></td>
							</tr>
							<tr>
								<td colspan="2"><small><em>Máx. 1 imagen</em></small></td>
							</tr>
							<tr>
								<td><input class="filestyle" type="file" name="imagen" /></td>
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
</body>

</html>