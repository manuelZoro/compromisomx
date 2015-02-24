<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<title>Inicio</title>
<meta name="layout" content="cuenta_layout" />
</head>
<body>
	<!-- Inicia Contenido principal -->
	<g:uploadForm class="form-horizontal" controller="Cuenta" method="post" action="SaveEditInformacionLegal">
	<div class="row">
		<div class="col-md-12">
			<h2>
				Información legal <br/><a type="button"
					href="${request.contextPath}/cuenta/informacionlegal"
					class="btn btn-default texto_campo_principral">Atrás</a>
			</h2>
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
						<strong>Nombre(s):</strong>
					</p>
				</div>
				<div class="col-md-5">
					<p class="texto_normal">
						${ cuenta.nombreCompleto }
						${ cuenta.primer_apellido }
						${ cuenta.segundo_apellido }
					</p>
				</div>
				<div class="col-md-1"></div>
			</div>
			<div class="row altura_fila">
				<div class="col-md-2"></div>
				<div class="col-md-6">
					<small>Por favor ingrese los 18 caracteres que componen su
						CURP: </small>
				</div>
			</div>
			<div class="row altura_fila">
				<div class="col-md-2"></div>
				<div class="col-md-6">
					<input type="text" class="form-control texto_campo_principal"
						value="${ cuenta.curp }" readonly="readonly">
				</div>
				<div class="col-md-1"></div>
			</div>
			<div class="row altura_fila">
				<div class="col-md-2"></div>
				<div class="col-md-6">
					<small>Por favor ingrese los 18 caracteres que componen su
						RFC: </small>
				</div>
			</div>
			<div class="row altura_fila">
				<div class="col-md-2"></div>
				<div class="col-md-6">
					<input type="text" class="form-control texto_campo_principal" name="rfc_edit" style="text-transform:uppercase;" required placeholder="Ej. EFCD9011118K9" value="${ cuenta.rfc }">
				</div>
				<div class="col-md-1"></div>
			</div>
			<p>&nbsp;</p>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
			<div class="row altura_fila">
				<div class="col-md-2"></div>
				<div class="col-md-5">
					<button type="submit" class="btn btn-default texto_campo_principal">Guardar</button>
					&nbsp;&nbsp;&nbsp;
					<a type="button" class="btn btn-default texto_campo_principal" href="${request.contextPath}/cuenta/informacionlegal"
					class="btn btn-default texto_campo_principral" >Cancelar</a>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-2"></div>
	<p>&nbsp;</p>
	<br />
	<br />
	<br />
	<br />
	<br />
	<!-- Termina Contenido Principal -->
	</g:uploadForm>
</body>
</html>