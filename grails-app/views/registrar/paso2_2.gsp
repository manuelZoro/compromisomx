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
<script type="text/javascript">
	function justNumbers(e) {
		var keynum = window.event ? window.event.keyCode : e.which;
		if ((keynum == 8) || (keynum == 46))
			return true;

		return /\d/.test(String.fromCharCode(keynum));
	}
	$(document).ready(function() {
		for (var i = 14; i < 99; i++) {
			$("select[name=expaa]").append(new Option(i, i));
		}
	});
</script>
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
						<li><a href="${request.contextPath}/cuenta/registro.gsp">Informacion
								del mentor</a></li>
						<li class="active"><a href="#">Informacion<br />de la
								cuenta
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
			<g:form action="siguiente2_2">
			Datos:</br>
				${session.p2curp}</br>
				${session.p2nombre}</br>
				${session.p2primer_apellido}</br>
				${session.p2segundo_apellido}</br>
				${session.p2dia}</br>
				${session.p2mes}</br>
				${session.p2ano}</br>
				${session.p2idioma}</br>
				${session.p2genero}
				<div class="body">
					<font size=6>Paso 2: Creacion de la cuenta</font>
					<div class="row">
						Pais:* <select name="pais" class="form-control"
							style="width: 400px">
							<g:each in="${todospaises}" var="paises" status="i">
								<option value="${paises.id}">
									${paises.nombre}
								</option>
							</g:each>
						</select>
					</div>
					<div class="row">
						Estado:* <select name="estado" class="form-control"
							style="width: 400px">
							<g:each in="${todosestados}" var="estados" status="i">
								<option value="${estados.id}">
									${estados.nombre}
								</option>
							</g:each>
						</select>
					</div>
					<div class="row">
						Ciudad:* <select name="ciudad" class="form-control"
							style="width: 400px"><option value="1">Default</option></SELECT>
					</div>
					<div class="row">
						Codigo Postal:* <input type="text" class="form-control"
							style="width: 400px" name="codigopostal" maxlength="5" required
							maxlength="5" onkeypress="return justNumbers(event);">
					</div>
					<div class="row">
						Colonia:*
						<!-- <select name="selCombo" value="dd"></SELECT> -->
						<input type="text" class="form-control" style="width: 400px"
							name="colonia" required maxlength="40">
					</div>
					<div class="row">
						Calle:*
						<!-- <select name="selCombo" value="dd"></SELECT> -->
						<input type="text" class="form-control" style="width: 400px"
							name="calle" required maxlength="40">
					</div>
					<div class="row">
						Numero Exterior:* <input type="text" class="form-control"
							style="width: 400px" name="mumeroexterior" required maxlength="5">
					</div>
					<div class="row">
						Numero Interior: <input type="text" class="form-control"
							style="width: 400px" name="numerointerior" maxlength="5">
					</div>
					<div class="row">
						Manzana: <input type="text" class="form-control"
							style="width: 400px" name="manzana" maxlength="15">
					</div>
					<div class="row">
						Cruzamientos: <input type="text" class="form-control"
							style="width: 400px" name="cruzamientos" maxlength="40">
					</div>
					<div class="row">
						Referencias:
						<textarea class="form-control" style="width: 400px"
							name="referencias" maxlength="220"></textarea>
					</div>
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
