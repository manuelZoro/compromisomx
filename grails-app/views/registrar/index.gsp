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

		<div>
			<iframe id="pasos" src="paso1" frameborder="0" width="1024"
				height="300"> </iframe>
			<br />
			<!--<g:form class="form-horizontal" action="index">-->
				<button class="btn btn-default" id="ant" name="ant" type="submit"
					onclick="anteriorPaso(this.value);" value="1">Anterior</button>
				<button class="btn btn-default" id="sig" type="submit"
					onclick="siguientePaso(this.value);" value="1">Siguiente</button>
				<g:field type="hidden" name="botonvalor" id="botonvalor" />
			<!--</g:form>-->
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

	<script type="text/javascript">
		function siguientePaso(paso) {
			var n = parseInt(paso);
			alert(n);
			if (n < 7) {
				if (n == 2) {
					//alert("Valor 2");
					document.getElementById("botonvalor").value = n;
					alert("holi " + botonvalor.value);
				}
				document.getElementById("pasos").src = "paso" + (n + 1);
				document.getElementById("sig").value = (n + 1);
				document.getElementById("ant").value = (n + 1);
				//alert(document.getElementById("ant").value);
			} else {
				//alert("No hay más pasos " + n);
			}
			//document.getElementById("pasos").style = "display:inline;";
		}
		function anteriorPaso(paso) {
			var n = parseInt(paso);
			if (n > 1) {
				document.getElementById("pasos").src = "paso" + (n - 1);
				document.getElementById("sig").value = (n - 1);
				document.getElementById("ant").value = (n - 1);
			} else {
				//alert("No se puede regresar más" + n );
			}
			//document.getElementById("pasos").style = "display:inline;";
		}
	</script>
</body>
</html>
