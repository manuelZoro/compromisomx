<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<title>Inicio</title>
<meta name="layout" content="cuenta_layout" />
</head>
<body>
	<!-- Inicia Contenido principal -->
	<div class="row">
		<div class="col-md-12">
			<h2>Información legal</h2>
			<a type="button" href="${request.contextPath}/cuenta/editarinformacionlegal" class="btn btn-default texto_campo_principral">/ Editar Información Legal</a>
			<p class="reg_alineacion">
				<img
					src="${request.contextPath}/images/iconografia/admincuenta/icono_usuario_32_b.png">&nbsp;
				<img
					src="${request.contextPath}/images/iconografia/admincuenta/icono_dinero_32_a.png">&nbsp;
				<img
					src="${request.contextPath}/images/iconografia/admincuenta/icono_editar_32_a.png">
			</p>
		</div>
		<div class="col-md-3"></div>
		<div class="col-md-7">
			<div class="row altura_fila">
				<div class="col-md-2"></div>
				<div class="col-md-3"></div>
				<div class="col-md-5"></div>
				<div class="col-md-1"></div>
			</div>
			<div class="row altura_fila">
				<div class="col-md-2"></div>
				<div class="col-md-3">
					<p class="texto_normal">
						<strong>CURP</strong>
					</p>
				</div>
				<div class="col-md-5">
					<p class="texto_normal">
						${ cuenta.curp }
					</p>
				</div>
				<div class="col-md-1"></div>
			</div>
			<div class="row altura_fila">
				<div class="col-md-2"></div>
				<div class="col-md-3">
					<p class="texto_normal">Nombre(s)</p>
				</div>
				<div class="col-md-5">
					<p class="texto_normal">
						${ cuenta.nombreCompleto }
					</p>
				</div>
				<div class="col-md-1"></div>
			</div>
			<div class="row altura_fila">
				<div class="col-md-2"></div>
				<div class="col-md-3">
					<p class="texto_normal">Primer Apellido:</p>
				</div>
				<div class="col-md-5">
					<p class="texto_normal">
						${ cuenta.primer_apellido }
					</p>
				</div>
				<div class="col-md-1"></div>
			</div>
			<div class="row altura_fila">
				<div class="col-md-2"></div>
				<div class="col-md-3">
					<p class="texto_normal">Segundo Apellido:</p>
				</div>
				<div class="col-md-5">
					<p class="texto_normal">
						${ cuenta.segundo_apellido }
					</p>
				</div>
				<div class="col-md-1"></div>
			</div>
			<div class="row altura_fila">
				<div class="col-md-2"></div>
				<div class="col-md-3">
					<p class="texto_normal">Fecha de Nacimiento:</p>
				</div>
				<div class="col-md-5">
					<p class="texto_normal">
						<g:formatDate format="dd/MMM/yyyy"
							date="${ cuenta.fecha_de_nacimiento }" style="LONG" />
					</p>
				</div>
				<div class="col-md-1"></div>
			</div>
		</div>
		<div class="col-md-2"></div>
		<p>&nbsp;</p>
	</div>
	<br />
	<br />
	<br />
	<br />
	<br />
	<!-- Termina Contenido Principal -->
</body>
</html>