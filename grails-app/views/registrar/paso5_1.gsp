<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
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
			<g:form action="siguiente5_1">

				<div class="body">
					<font size=6>Paso 5: Informacion de Autopago y envio</font>
					<div class="row">
						<input type="checkbox" id="checkinfo" name="checkinfo"
							onClick="recommendSausage()" value="true"> Utilizar mi informacion de
						contacto para mi direccion de envio.
					</div>
					<br />
					<div class="row">
						Nombre(s):* <input type="text" class="form-control" required
							style="width: 400px" name="nombre_aut" id="nombre_aut">
					</div>
					<div class="row">
						Primer Apellido:* <input type="text" class="form-control" required
							style="width: 400px" name="priemrapellidoaut" id="priemrapellidoaut">
					</div>
					<div class="row">
						Segundo Apellido: <input type="text" class="form-control" required
							style="width: 400px" name="segunoapellidoaut" id="segunoapellidoaut">
					</div>
					<div class="row">
						Pais:* <select name="paisaut" id="paisaut" class="form-control"
							style="width: 400px"><g:each in="${todospaises}"
								var="paises" status="i">
								<option value="${paises.id}">
									${paises.nombre}
								</option>
							</g:each></SELECT>
					</div>
					<div class="row">
						Estado:*<select name="estadoaut" id="estadoaut" class="form-control"
							style="width: 400px"><g:each in="${todosestados}"
								var="estados" status="i">
								<option value="${estados.id}">
									${estados.nombre}
								</option>
							</g:each></SELECT>
					</div>
					<div class="row">
						Ciudad:* <select name="cuidadaut" id="cuidadaut" class="form-control"
							style="width: 400px"><option value="1">Default</option></SELECT>
					</div>
					<div class="row">
						Codigo Postal:* <input type="text" class="form-control"
							style="width: 400px" name="cpaut" id="cpaut">
					</div>
					<div class="row">
						Colonia:* <input type="text" class="form-control" required
							style="width: 400px" name="coloniaaut" id="coloniaaut">
					</div>
					<div class="row">
						Calle:* <input type="text" class="form-control" required
							style="width: 400px" name="calleaut" id="calleaut">
					</div>
					<div class="row">
						Numero exterior:* <input type="text" class="form-control" required
							style="width: 400px" name="numextaut" id="numextaut">
					</div>
					<div class="row">
						Numero interior: <input type="text" class="form-control" required
							style="width: 400px" name="numintaut" id="numintaut">
					</div>
					<div class="row">
						Manzana: <input type="text" class="form-control"
							style="width: 400px" name="manzanaaut" id="manzanaaut">
					</div>
					<div class="row">
						Cruzamientos: <input type="text" class="form-control" required
							style="width: 400px" name="cruzamientosaut" id="cruzamientosaut">
					</div>
					<div class="row">
						Referencias:
						<textarea class="form-control" name="referenciasaut" id="referenciasaut"
							style="width: 400px"></textarea>
					</div>
					<div class="row">
						Correo Electronico:* <input type="text" class="form-control"
							style="width: 400px" name="correoaut" id="correoaut">
					</div>
					<br /> <br />
					<p>
						<font color="#e8425d">*Campos Obligatorios.</font>
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

	<script>
		function recommendSausage() {
			//alert ("asd");
			if (document.getElementById("checkinfo").checked == true) {
				document.getElementById("nombre_aut").value = "${session.p2nombre}";
				document.getElementById("priemrapellidoaut").value = "${session.p2primer_apellido}";
				document.getElementById("segunoapellidoaut").value = "${session.p2segundo_apellido}";
				document.getElementById("paisaut").value = "${session.p2pais}";
				document.getElementById("estadoaut").value = "${session.p2estado}";
				document.getElementById("cuidadaut").value = "${session.p2ciudad}";
				document.getElementById("cpaut").value = "${session.p2codigopostal}";
				document.getElementById("coloniaaut").value = "${session.p2colonia}";
				document.getElementById("calleaut").value = "${session.p2calle}";
				document.getElementById("numextaut").value = "${session.p2mumeroexterior}";
				document.getElementById("numintaut").value = "${session.p2numerointerior}";
				document.getElementById("manzanaaut").value = "${session.p2manzana}";
				document.getElementById("cruzamientosaut").value = "${session.p2cruzamientos}";
				document.getElementById("referenciasaut").value = "${session.p2referencias}";
				document.getElementById("correoaut").value = "${session.p2correroelectronico}";
				
				//alert (document.getElementById("nombre_aut").value);
			}
			else{
				document.getElementById("nombre_aut").value = "";
				document.getElementById("priemrapellidoaut").value = "";
				document.getElementById("segunoapellidoaut").value = "";
				document.getElementById("paisaut").value = "1";
				document.getElementById("estadoaut").value = "1";
				document.getElementById("cuidadaut").value = "1";
				document.getElementById("cpaut").value = "";
				document.getElementById("coloniaaut").value = "";
				document.getElementById("calleaut").value = "";
				document.getElementById("numextaut").value = "";
				document.getElementById("numintaut").value = "";
				document.getElementById("manzanaaut").value = "";
				document.getElementById("cruzamientosaut").value = "";
				document.getElementById("referenciasaut").value = "";
				document.getElementById("correoaut").value = "";
				//alert (document.getElementById("nombre_aut").value);
			}
		}
	</script>
	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
