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
					$("select[name=ano6]").append(new Option(i, i));
				}
				$("select[name=mes6]").change(
						function() {
							fecha = new Date($("select[name=ano6]").val(), $(
									"select[name=mes6]").val(), 0);
							$("select[name=dia6]").find('option').remove();
							for (var i = 1; i <= fecha.getDate(); i++) {
								$("select[name=dia6]").append(
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
				Datos:<br>${session.p5checkinf}<br>${session.p5formapago}<br>${session.p5fpago}<br>
						${session.p5titulartarjeta}<br>${session.p5numerotarjeta}<br>${session.p5expmm}<br>
						${session.p5expaa}<br>${session.p5codigoseguridad}<br>${session.p5direccion1}<br>
						${session.p5direccion2}<br>${session.p5pais}<br>${session.p5estado}<br>
						${session.p5ciudad}<br>${session.p5cp}<br>${session.p5telefono}<br>
					<font size=6>Paso 6: Nuestro Movimiento / Informacion
						Personal</font>
					<div class="row">
						Fecha de nacimiento:* <select name="dia6" class="form-control" style="width: 100px"><option value="1">1</option>
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
							<option value="31">31</option></SELECT>
						<select name="mes6" class="form-control" style="width: 100px"><option value="1">Enero</option>
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
							<option value="12">Diciembre</option></SELECT> <select
							name="ano6" class="form-control" style="width: 100px"></SELECT> Pasatiempo: <select
							name="pasatiempo" class="form-control" style="width: 400px"><OPTION value=1>Default</OPTION></SELECT>
					</div>
					<div class="row">
						Profesión:* <select name="profesion" class="form-control" style="width: 400px"><OPTION value=1>Default</OPTION></SELECT> Otras
						Actividades: <select name="activiades" class="form-control" style="width: 400px"><OPTION value=1>Default</OPTION></SELECT>
					</div>

					<div class="row">
						Ocupación:* <select name="ocupacion" class="form-control" style="width: 400px"><OPTION value=1>Default</OPTION></SELECT>
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
