<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta name="layout" content="cuenta_layout" />
<title>Inicio</title>
</head>
<body>
	<!-- Inicia Contenido principal -->
	<div class="row">
		<div class="col-md-12">
			<h2>Información de la Cuenta</h2>
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
			<g:uploadForm class="form-horizontal" controller="Cuenta"
				method="post" action="actualizarcuenta">
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
							${ cuenta.segundo_apellido}
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
						<g:if test="${!cuenta.genero}">
							<p class="texto_normal">Masculino</p>
						</g:if>
						<g:else>
							<p class="texto_normal">Femenino</p>
						</g:else>
					</div>
					<div class="col-md-1"></div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-2"></div>
					<div class="col-md-3">
						<p class="texto_normal">ID de Usuario:</p>
					</div>
					<div class="col-md-5">
						<p class="texto_normal">
							${ cuenta.id }
						</p>
					</div>
					<div class="col-md-1"></div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-2"></div>
					<div class="col-md-3">
						<p class="texto_normal">Nombre de Usuario:</p>
					</div>
					<div class="col-md-5">
						<input type="text" class="form-control texto_campo_principal"
							placeholder="Nombre Usuario" name="nombre_usuario"
							value="${ cuenta.nombre_usuario }"><small>Por
							favor elija un nombre de usuario fácil de recordar y de por lo
							menos 6 caracteres. Use sólo letras (a-z, A-Z), números (0-9) y
							guion bajo (_). No utilice espacios.<br>&nbsp;
						</small>
					</div>
					<div class="col-md-1"></div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-2"></div>
					<div class="col-md-3">
						<p class="texto_normal">Correo electrónico:</p>
					</div>
					<div class="col-md-5">
						<input type="text" class="form-control texto_campo_principal"
							placeholder="Correo Electrónico" name="correo_electronico"
							value="${ cuenta.correo_electronico }">
					</div>
					<div class="col-md-1"></div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-2"></div>
					<div class="col-md-3">
						<p class="texto_normal">Clave de verificación:</p>
					</div>
					<div class="col-md-5">
						<input type="text" class="form-control texto_campo_principal"
							placeholder="RGSEDE456TYHBG" name="codigo_verificacion1"
							value="${ cuenta.codigo_verificacion1 }">
					</div>
					<div class="col-md-1">
						<button type="button" class="btn btn-default">
							<em><small>Solicitar clave</small></em>
						</button>
					</div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-2"></div>
					<div class="col-md-3">
						<p class="texto_normal">Teléfono de casa:</p>
					</div>
					<div class="col-md-5">
						<input type="text" class="form-control texto_campo_principal"
							placeholder="Teléfono de Casa" name="telefono_casa"
							value="${cuenta.telefono_casa }">
					</div>
					<div class="col-md-1"></div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-2"></div>
					<div class="col-md-3">
						<p class="texto_normal">Teléfono móvil:</p>
					</div>
					<div class="col-md-5">
						<input type="text" class="form-control texto_campo_principal"
							placeholder="Teléfono Movil" name="telefono_movil"
							value="${ cuenta.telefono_movil }">
					</div>
					<div class="col-md-1"></div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-2"></div>
					<div class="col-md-3">
						<p class="texto_normal">Clave de verificación:</p>
					</div>
					<div class="col-md-5">
						<input type="text" class="form-control texto_campo_principal"
							placeholder="RGSEDE456TYHBG" name="codigo_verificacion2"
							value="${ cuenta.codigo_verificacion2 }">
					</div>
					<div class="col-md-1">
						<button type="button" class="btn btn-default">
							<em><small>Solicitar clave</small></em>
						</button>
					</div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-2"></div>
					<div class="col-md-3">
						<p class="texto_normal">Fecha de inscripción:</p>
					</div>
					<div class="col-md-5">
						<p class="texto_normal">
							<g:formatDate format="dd/MMMM/yyyy"
								date="${ cuenta.fechaInscripcion }" style="LONG" />
						</p>
					</div>
					<div class="col-md-1"></div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-2"></div>
					<div class="col-md-3">
						<p class="texto_normal">Fecha de autopago:</p>
					</div>
					<div class="col-md-5">
						<p class="texto_normal">
							<g:formatDate format="dd/MMMM/yyyy"
								date="${ cuenta.fechaInscripcion }" style="LONG" />
						</p>
					</div>
					<div class="col-md-1"></div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-2"></div>
					<div class="col-md-3">
						<p class="texto_normal">Idioma:</p>
					</div>
					<div class="col-md-5">
						<select
							class="form-control input-sm texto_campo_principal espaciado_campo_principal"
							name="idioma">
							<g:if test="${cuenta.idioma.equals("1")}">
								<option value="1" selected>Español</option>
							</g:if>
						</select>
					</div>
					<div class="col-md-1"></div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-2"></div>
					<div class="col-md-3">
						<small>* Datos obligatorios.</small>
					</div>
					<div class="col-md-5">
						<button type="submit"
							class="btn btn-default texto_campo_principal">Guardar</button>
						&nbsp;&nbsp;&nbsp; <a type="button"
							class="btn btn-default texto_campo_principal"
							href="${request.contextPath}/cuenta">Cancelar</a>
					</div>
					<div class="col-md-1"></div>
					<div class="row altura_fila">
						<div class="col-md-12">
							<p>&nbsp;</p>
							<p>&nbsp;</p>
						</div>
					</div>
				</div>
			</g:uploadForm>
		</div>
		<div class="col-md-2"></div>
		<p>&nbsp;</p>
	</div>
	<!-- Termina Contenido Principal -->
</body>
</html>
