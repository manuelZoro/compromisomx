<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<title>Inicio</title>
<meta name="layout" content="cuenta_layout" />
</head>
<body>
	<!-- Inicia Contenido principal -->
	<g:uploadForm class="form-horizontal" controller="Cuenta" method="post"
		action="EditarUbicacion">
		<div class="row">
			<div class="col-md-12">
				<h2>
					Información legal <br /><a type="button"
						href="${request.contextPath}/cuenta/perfil.gsp"
						class="btn btn-default texto_campo_principral">Atrás</a>
				</h2>
				<a type="button"
					href="${request.contextPath}/cuenta/editarinformacionlegal.gsp"
					class="btn btn-default texto_campo_principral">/ Ayuda y
					Soporte</a>
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
							<strong>Nombre Expuesto:</strong>
						</p>
					</div>
					<div class="col-md-5">
						<input class="texto_normal" name="nombreExpuesto" value="${ cuenta.nombre_expuesto }">
					</div>
					<div class="col-md-1"></div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-2"></div>
					<div class="col-md-6">
						<small>Así aparecerá en eventos y reconocimientos, para
							cambiar este nombre. Por favo ingrese a un cambio de nombre
							expuesto a ayuda y soporte.</small>
					</div>
				</div>
				<br />
				<div class="row altura_fila">
					<div class="col-md-2"></div>
					<div class="col-md-3">
						<p class="texto_normal">
							<strong>Mostrar Ubicación:</strong>
						</p>
					</div>
					<div class="col-md-5">
						<p class="texto_normal">
							${ cuenta.ciudad.nombre },
							${ cuenta.estado.nombre }
						</p>
					</div>
					<div class="col-md-1"></div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-2"></div>
					<div class="col-md-6">
						<small>Esta es la ubicación que aparecerá en concursos y
							reconocimientos.</small>
					</div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-10"></div>
					<div class="col-md-2">
						<a type="button" class="btn btn-default texto_campo_principal"
							href="#Ubicacion" class="btn btn-default texto_campo_principral">Editar
							Ubicación</a>
					</div>
				</div>
				<div id="Ubicacion">

					<g:include view="/cuenta/formeditperfil.gsp" />

				</div>
			</div>
		</div>
	</g:uploadForm>
	<div class="col-md-2"></div>
	<p>&nbsp;</p>
	<!-- Termina Contenido Principal -->
</body>
</html>