<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<title>Inicio</title>
<meta name="layout" content="cuenta_layout" />
</head>
<body>
	<!-- Inicia Contenido principal -->
	<g:uploadForm class="form-horizontal" controller="Cuenta" method="post"
		action="SaveDireccion">
		<div class="row">
			<div class="col-md-12">
				<h2>
					<strong>Dirección</strong>
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
					<div class="col-md-3">
						<p class="texto_normal">Colonia*:</p>
					</div>
					<div class="col-md-1"></div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-2"></div>
					<div class="col-md-3">
						<p class="texto_normal">Calle*:</p>
					</div>
					<div class="col-md-4">
						<input type="text" class="form-control texto_campo_principal"
							value="${ cuenta.calle }" name="calle" required="required">
					</div>
					<div class="col-md-1"></div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-2"></div>
					<div class="col-md-3">
						<p class="texto_normal">Manzana*:</p>
					</div>
					<div class="col-md-4">
						<input type="text" class="form-control texto_campo_principal"
							value="${ cuenta.manzana }" name="manzana"
							required="required">
					</div>
					<div class="col-md-1"></div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-2"></div>
					<div class="col-md-3">
						<p class="texto_normal">Número Exterior*:</p>
					</div>
					<div class="col-md-4">
						<input type="text" class="form-control texto_campo_principal"
							value="${ cuenta.numero_exterior }" name="numero_exterior"
							required="required">
					</div>
					<div class="col-md-1"></div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-2"></div>
					<div class="col-md-3">
						<p class="texto_normal">Número Interior*:</p>
					</div>
					<div class="col-md-4">
						<input type="text" class="form-control texto_campo_principal"
							value="${ cuenta.numero_interior }" name="numero_interior"
							required="required">
					</div>
					<div class="col-md-1"></div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-2"></div>
					<div class="col-md-3">
						<p class="texto_normal">Cruzamientos*:</p>
					</div>
					<div class="col-md-4">
						<input type="text" class="form-control texto_campo_principal"
							value="${ cuenta.cruzamientos }" name="cruzamientos"
							required="required">
					</div>
					<div class="col-md-1"></div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-2"></div>
					<div class="col-md-3">
						<p class="texto_normal">Referencias*:</p>
					</div>
					<div class="col-md-4">
						<textarea class="form-control texto_campo_principal" rows="1"
							cols="3" name="referencias">
							${ cuenta.referencias }
						</textarea>
					</div>
					<div class="col-md-1"></div>
				</div>
				
				<g:include view="/cuenta/formdireccion.gsp" />
				
				<div class="row altura_fila">
					<div class="col-md-2"></div>
					<div class="col-md-1"></div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-2"></div>
					<div class="col-md-3">
						<p class="texto_normal">
							<small>* Datos obligatorios.</small>
						</p>
					</div>
					<div class="col-md-4">
						<br />
						<button type="submit"
							class="btn btn-default texto_campo_principal">Guardar</button>
						&nbsp;&nbsp;&nbsp; <a type="button"
							class="btn btn-default texto_campo_principal"
							href="${request.contextPath}/cuenta/direccion"
							class="btn btn-default texto_campo_principral">Cancelar</a>
					</div>
					<div class="col-md-1"></div>
				</div>
			</div>
		</div>
		<div class="col-md-2"></div>
		<p>&nbsp;</p>
	</g:uploadForm>
</body>
</html>