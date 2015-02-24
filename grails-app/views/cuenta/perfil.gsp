<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<title>Inicio</title>
<meta name="layout" content="cuenta_layout" />
</head>

<body>
	<style type="text/css">
.img-rounded {
	max-width: 128px !important;
	min-width: 128px !important;
	max-height: 128px !important;
	min-height: 128px !important;
}
</style>
	<!-- Inicia Contenido principal -->
	<g:uploadForm class="form-horizontal" controller="Cuenta" method="post"
		action="SaveFotoPerfil">
		<div class="row">
			<div class="col-md-12">
				<h2>Perfil</h2>
				<a type="button"
					href="${request.contextPath}/cuenta/editarperfil.gsp"
					class="btn btn-default texto_campo_principral">/ Editar Perfil</a>
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
							<g:if test="${cuenta.imagen_perfil.length()>0}">
								<img
									src="${request.contextPath}/images/perfil/${cuenta.imagen_perfil}"
									alt="" class="img-rounded">
							</g:if>
							<g:else>
								<img
									src="${request.contextPath}/images/iconografia/admincuenta/img_usuario.png"
									alt="" class="img-rounded">
							</g:else>
						</p>
						<p class="texto_normal">
							<input type="file" name="imagenperfil" style="display: none;"
								id="botonFileReal"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
								type="button" value="Subir Foto"
								onclick="document.getElementById('botonFileReal').click();"
								style="">
						</p>
					</div>
					<div class="col-md-5">
						<p>Nombre Expuesto:</p>
						<p class="texto_normal">
							<strong> ${ cuenta.nombre_expuesto }</strong>
						</p>
						<p class="texto_normal">Ubicación:</p>
						<p class="texto_normal">
							<strong> ${ cuenta.ciudad.nombre } ${ cuenta.estado.nombre }</strong>
						</p>
					</div>
					<div class="col-md-1"></div>
				</div>
				<p>&nbsp;</p>
				<div class="row altura_fila">
					<div class="col-md-2"></div>
					<div class="col-md-5">
						<button type="submit"
							class="btn btn-default texto_campo_principal">Guardar</button>
						&nbsp;&nbsp;&nbsp; <a type="button"
							class="btn btn-default texto_campo_principal"
							href="${request.contextPath}/cuenta/informacionlegal.gsp"
							class="btn btn-default texto_campo_principral">Cancelar</a>
					</div>
				</div>
				<br />
			</div>
			<div class="col-md-2"></div>
			<p>&nbsp;</p>
		</div>
	</g:uploadForm>
	<!-- Termina Contenido Principal -->
</body>
</html>