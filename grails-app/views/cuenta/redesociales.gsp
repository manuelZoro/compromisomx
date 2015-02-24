<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<title>Inicio</title>
<meta name="layout" content="cuenta_layout" />
</head>
<body>
	<!-- Inicia Contenido principal -->
	<g:uploadForm class="form-horizontal" controller="Cuenta" method="post" action="SaveRedSocial">
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
					<p class="texto_normal">Facebook</p>
				</div>
				<div class="col-md-5">
					<p class="texto_normal">
						<input type="text" class="form-control texto_campo_principal"
						value="${ info.facebook }" name="facebook">
					</p>
				</div>
				<div class="col-md-1"></div>
			</div>
			<div class="row altura_fila">
				<div class="col-md-2"></div>
				<div class="col-md-3">
					<p class="texto_normal">Twitter</p>
				</div>
				<div class="col-md-5">
					<p class="texto_normal">
						<input type="text" class="form-control texto_campo_principal"
						value="${ info.twitter }" name="twitter">
					</p>
				</div>
				<div class="col-md-1"></div>
			</div>
			<div class="row altura_fila">
				<div class="col-md-2"></div>
				<div class="col-md-3">
					<p class="texto_normal">Skype</p>
				</div>
				<div class="col-md-5">
					<p class="texto_normal">
						<input type="text" class="form-control texto_campo_principal"
						value="${ info.skype }" name="skype">
					</p>
				</div>
				<div class="col-md-1"></div>
			</div>
			<div class="row altura_fila">
				<div class="col-md-2"></div>
				<div class="col-md-3">
					<p class="texto_normal">Facetime</p>
				</div>
				<div class="col-md-5">
					<p class="texto_normal">
						<input type="text" class="form-control texto_campo_principal"
						value="${ info.facetime }" name="facetime">
					</p>
				</div>
				<div class="col-md-1"></div>
			</div>
			<div class="row altura_fila">
				<div class="col-md-2"></div>
				<div class="col-md-3">
					<p class="texto_normal">WhatsApp</p>
				</div>
				<div class="col-md-5">
					<p class="texto_normal">
						<input type="text" class="form-control texto_campo_principal"
						value="${ info.whatsapp }" name="whastapp">
					</p>
				</div>
				<div class="col-md-1"></div>
			</div>
			<div class="row altura_fila">
				<div class="col-md-2"></div>
				<div class="col-md-3">
					<p class="texto_normal"></p>
				</div>
				<div class="col-md-5">
					<button type="submit" class="btn btn-default texto_campo_principal">Guardar</button>
					&nbsp;&nbsp;&nbsp;
					<a type="button" class="btn btn-default texto_campo_principal" href="${request.contextPath}/cuenta/redesociales"
					class="btn btn-default texto_campo_principral" >Cancelar</a>
				</div>
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
	</g:uploadForm>
</body>
</html>