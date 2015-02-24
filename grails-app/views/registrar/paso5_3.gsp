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
			<g:form action="siguiente5_3">

				<div class="body">
					Datos:</br>
					${session.p5grupo1}</br> <font size=6>Paso 5: Informacion de
						Autopago y envio</font>
					<div class="row">
						<input type="checkbox" name="checkinf" value="true">
						Guardar informacion de autopago para su uso en un futuro
					</div>
					<br />
					<div class="row">
						Seleccionar forma de pago:*<select name="formapago"
							class="form-control" style="width: 400px">
							<OPTION value=1>Tarjeta de Crédito</OPTION>
							<OPTION value=2>Tarjeta de Débito</OPTION>
						</SELECT>
					</div>
					<div class="row">
						<input type="radio" name="fpago" value="1">Mastercard <input
							type="radio" name="fpago" value="2" checked>VISA
					</div>
					<div class="row">
						Titular de la tarjeta:* <input type="text" class="form-control"
							required style="width: 400px" name="titulartarjeta">
					</div>
					<div class="row">
						Numero de la tarjeta: <input width="200" type="text"
							class="form-control" required style="width: 400px"
							name="numerotarjeta" id="numerotarjeta"
							onkeypress="return justNumbers(event);" maxlength="16" />
					</div>
					<div class="row">
						Expiracion de tarjeta:* <input list="expmm" name="expmm"
							class="form-control" style="width: 100px" maxlength="2"
							onkeypress="return justNumbers(event);" value="01">
						<datalist id="expmm">
							<option value="01"></option>
							<option value="02"></option>
							<option value="03"></option>
							<option value="04"></option>
							<option value="05"></option>
							<option value="06"></option>
							<option value="07"></option>
							<option value="08"></option>
							<option value="09"></option>
							<option value="10"></option>
							<option value="11"></option>
							<option value="12"></option>
						</datalist>
						<input list="expaa" name="expaa" class="form-control"
							style="width: 100px" maxlength="2"
							onkeypress="return justNumbers(event);"  value="14">
						<datalist id="expaa" size="5">
							<option value="14"></option>
							<option value="15"></option>
							<option value="16"></option>
							<option value="17"></option>
							<option value="18"></option>
							<option value="19"></option>
							<option value="20"></option>
							<option value="21"></option>
							<option value="22"></option>
							<option value="23"></option>
							<option value="24"></option>
						</datalist>
					</div>
					<div class="row">
						Codigo de seguridad:* <input type="text" class="form-control"
							required style="width: 400px" name="codigoseguridad"
							id="codigoseguridad" onkeypress="return justNumbers(event);"
							maxlength="4" />
					</div>
					<div class="row">
						Datos de facturacion<br /> Direccion:* <input type="text"
							class="form-control" required style="width: 400px"
							name="direccion1">
					</div>
					<div class="row">
						<input type="text" class="form-control" required
							style="width: 400px" name="direccion2">
					</div>
					<div class="row">
						Pais:* <select name="pais" class="form-control"
							style="width: 400px"><g:each in="${todospaises}"
								var="paises" status="i">
								<option value="${paises.id}">
									${paises.nombre}
								</option>
							</g:each></SELECT>
					</div>
					<div class="row">
						Estado:* <select name="estado" class="form-control"
							style="width: 400px"><g:each in="${todosestados}"
								var="estados" status="i">
								<option value="${estados.id}">
									${estados.nombre}
								</option>
							</g:each></SELECT>
					</div>
					<div class="row">
						Ciudad:* <select name="ciudad" class="form-control"
							style="width: 400px"><option value="1">Default</option></SELECT>
					</div>
					<div class="row">
						Codigo postal:* <input type="text" class="form-control" required
							style="width: 400px" name="cp" maxlength="5"
							onkeypress="return justNumbers(event);">
					</div>
					<div class="row">
						Telefono:* <input type="text" class="form-control" required
							style="width: 400px" name="telefono" maxlength="15">
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


	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
