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
						${ cuenta.coaplicanteCurp }
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
						${ cuenta.coaplicantenombre }
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
						${ cuenta.coaplicanteprimerapellido }
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
						${ cuenta.coaplicantesegundoapellido }
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
						<g:formatDate format="dd/MMMM/yyyy"
							date="${ cuenta.coaplicanteFechaNacimiento }" style="LONG" />
					</p>
				</div>
				<div class="col-md-1"></div>
			</div>
			<div class="row altura_fila">
				<div class="col-md-2"></div>
				<div class="col-md-3">
					<p class="texto_normal">Género:</p>
				</div>
				<div class="col-md-5">
					<p class="texto_normal">
						${ cuenta.coaplicanteGenero }
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