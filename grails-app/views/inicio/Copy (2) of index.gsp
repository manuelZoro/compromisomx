
<!DOCTYPE html>
<html lang="en">

<head>
<meta name="layout" content="backoffice" />
<title>Inicio</title>
</head>

<body>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<!-- Heading Row -->
	<div class="row">
		<div class="col-md-8">
			<img class="img-responsive img-rounded"
				src="http://placehold.it/900x350" alt="">
		</div>
		<!-- /.col-md-8 -->
		<div class="col-md-4">
			<h1>Business Name or Tagline</h1>
			<p>This is a template that is great for small businesses. It
				doesn't have too much fancy flare to it, but it makes a great use of
				the standard Bootstrap core components. Feel free to use this
				template for any project you want!</p>
			<a class="btn btn-primary btn-lg" href="#">Call to Action!</a>
		</div>
		<!-- /.col-md-4 -->
	</div>
	<!-- /.row -->

	<hr>

	<!-- Content Row -->
	<div class="col-md-8">
		<!-- Inicio de los mensajes -->
		<div class="row">
			<!-- /.col-md-6 -->
			<g:each in="${listaMensajes}" var="mensaje" status="i">
				<div class="col-md-6">
					<asset:image src="mensajes/mensaje_${mensaje.id}.jpg" />
					<p>
					<h2>
						${mensaje.titulo_noticia}
					</h2>
					</p>
					<p>
						${mensaje.descripcion_noticia}
					</p>

					<a class="btn btn-default" href="#">More Info</a>
				</div>
				<br />
			</g:each>

		</div>
		<!-- Fin de los mensajes -->
		<br> <br> <br>

		<!-- Inicio de Acciones Comunitarias -->
		<!-- Nav tabs -->
		<ul class="nav nav-tabs" role="tablist">
			<li class="active"><a href="#home" role="tab" data-toggle="tab">Lunes</a></li>
			<li><a href="#profile" role="tab" data-toggle="tab">Martes</a></li>
			<li><a href="#messages" role="tab" data-toggle="tab">Miercoles</a></li>
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
							<h2>
								${accion.descripcion}
							</h2>
							<p>
								<asset:image src="mensajes/mensaje_1.jpg" />
							</p>
							<p>
								${accion.descripcion}
							</p>
							<a class="btn btn-default" href="#">More Info</a>
						</div>
					</g:each>

					<div class="tab-pane" id="Martes"></div>

					<div class="tab-pane" id="Miercoles"></div>
					<div class="tab-pane" id="Jueves"></div>
				</div>
				<!-- /.row -->
			</div>
		</div>

		<div class="col-md-4">
			<div class="col-md-4">
				<h2>Lateral</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Saepe rem nisi accusamus error velit animi non ipsa placeat.
					Recusandae, suscipit, soluta quibusdam accusamus a veniam quaerat
					eveniet eligendi dolor consectetur.</p>
				<a class="btn btn-default" href="#">More Info</a>
			</div>
		</div>
	</div>


</body>

</html>