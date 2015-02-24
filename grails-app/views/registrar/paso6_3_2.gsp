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
						<li class="active"><a
							href="${request.contextPath}/cuenta/registro.gsp">Informacion
								del mentor</a></li>
						<li><a href="#">Informacion<br />de la cuenta
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
			<g:form action="siguiente6_1">
				<div class="body">
					Datos:<br>
					${session.p6radiohijos}<br>
					${session.p6combgenero}<br>
					${session.p6fecha6}<br>
					${session.p6cpasatiempo}<br> <font size=6>Paso 6: Nuestro
						Movimiento / Informacion Personal Tallas Caballero</font>

					<div class="row">
						Playera:* <select name="cplayera" class="form-control" style="width: 400px">
						<OPTION value=1>Chica</OPTION>
						<OPTION value=2>Mediana</OPTION>
						<OPTION value=3>Grande</OPTION>
						<OPTION value=4>Extra grande</OPTION>
						</SELECT>
					</div>

					<div class="row">
						Camisa:* <select name="ccamisa" class="form-control" style="width: 400px">
						<OPTION value=1>Chica</OPTION>
						<OPTION value=2>Mediana</OPTION>
						<OPTION value=3>Grande</OPTION>
						<OPTION value=4>Extra grande</OPTION>
						</SELECT>
					</div>

					<div class="row">
						Zapatos:* <select name="czapatos" class="form-control" style="width: 400px">
						<OPTION value=1>2</OPTION>
						<OPTION value=2>2.5</OPTION>
						<OPTION value=3>3</OPTION>
						<OPTION value=4>3.5</OPTION>
						<OPTION value=5>4</OPTION>
						<OPTION value=6>4.5</OPTION>
						<OPTION value=7>5</OPTION>
						<OPTION value=8>6</OPTION>
						<OPTION value=9>6.5</OPTION>
						<OPTION value=10>7</OPTION>
						<OPTION value=11>7.5</OPTION>
						<OPTION value=12>8</OPTION>
						<OPTION value=13>8.5</OPTION>
						<OPTION value=14>9</OPTION>
						<OPTION value=15>9.5</OPTION>
						<OPTION value=16>10</OPTION>
						<OPTION value=12>10.5</OPTION>
						<OPTION value=13>11</OPTION>
						<OPTION value=14>11.5</OPTION>
						<OPTION value=15>12</OPTION>
						<OPTION value=16>12.5</OPTION>
						</SELECT>
					</div>

					<br />
					<p>
						<font color="#e8425d">*Campos Obligatorios.</font>
					</p>
					<p>
						<font color="#e8425d">La información solicitada es
							confidencial.</font>
					</p>
					<p>
						<font color="#e8425d">Terminos, condiciones de uso y
							privacidad.</font>
					</p>
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
