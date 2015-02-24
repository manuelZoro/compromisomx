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
<script>
	$(document).ready(
			function() {
				for (var i = 1900; i < 2020; i++) {
					$("select[name=ano]").append(new Option(i, i));
				}
				$("select[name=mes]").change(
						function() {
							fecha = new Date($("select[name=ano]").val(), $(
									"select[name=mes]").val(), 0);
							$("select[name=dia]").find('option').remove();
							for (var i = 1; i <= fecha.getDate(); i++) {
								$("select[name=dia]").append(
										new Option(i, "" + i));
							}
						});
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
			<g:form action="siguiente2_1">

				<div class="body">

					<font size=6>Paso 2: Creacion de la cuenta</font>
					<div class="row">
						CURP:* <input width="400" type="text" class="form-control"
							required style="width: 400px" name="curp" id="curp" maxlength="18">
					</div>
					<div class="row">
						Nombre(s):* <input type="text" class="form-control" required
							style="width: 400px" name="nombre" id="nombre" maxlength="30">
					</div>
					<div class="row">
						Primer Apellido:* <input type="text" class="form-control" required
							style="width: 400px" name="primer_apellido" id="primer_apellido" maxlength="30">
					</div>
					<div class="row">
						Segundo Apellido:* <input width="200" type="text"
							class="form-control" required style="width: 400px"
							name="segundo_apellido" id="segundo_apellido" maxlength="18">
					</div>
					<br />
					<div class="row">
						Fecha de nacimiento:* <select name="dia">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
							<option value="13">13</option>
							<option value="14">14</option>
							<option value="15">15</option>
							<option value="16">16</option>
							<option value="17">17</option>
							<option value="18">18</option>
							<option value="19">19</option>
							<option value="20">20</option>
							<option value="21">21</option>
							<option value="22">22</option>
							<option value="23">23</option>
							<option value="24">24</option>
							<option value="25">25</option>
							<option value="26">26</option>
							<option value="27">27</option>
							<option value="28">28</option>
							<option value="29">29</option>
							<option value="30">30</option>
							<option value="31">31</option>
						</select> <select name="mes">
							<option value="1">Enero</option>
							<option value="2">Febrero</option>
							<option value="3">Marzo</option>
							<option value="4">Abril</option>
							<option value="5">Mayo</option>
							<option value="6">Junio</option>
							<option value="7">Julio</option>
							<option value="8">Agosto</option>
							<option value="9">Septiembre</option>
							<option value="10">Octubre</option>
							<option value="11">Noviembre</option>
							<option value="12">Diciembre</option>
						</select> <select name="ano">
							<!-- Los años se cargan con javascript y jquery -->
						</select>
						<!-- <input type="date" name="fecha" value="01-01-1990"> -->
					</div>
					<div class="row">
						Idioma:* <select name="idioma">
							<option value="1">Ingles</option>
							<option value="2">Español</option>
						</SELECT> <br />
						<p>
							<font color="#e8425d">Todo el material que usted reciba<br></br>Estara
								en el idioma seleccionado.
							</font>
						</p>
					</div>
					<div class="row">
						Genero:* <select name="genero">
							<OPTION value=0>Femenino</OPTION>
							<OPTION value=1>Masculino</OPTION>
						</SELECT> <br /> <br /> <br />
						<p>
							<font color="#e8425d">*Campos Obligatorios.</font>
						</p>
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
