<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="layout" content="registro_lay" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<title>Insert title here</title>

</head>
<body>
	<!-- <form name="formulario"> -->
	<div id="pantalla1">
		<div class="row">
			<div class="col-md-12">
				<p>&nbsp;</p>
			</div>
		</div>

		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-10">
				<div class="hoja_confirmacion sombrapanel">
					<div class="col-md-12 hoja_confirm_encabezado">
						<img
							src="${request.contextPath}/images/iconografia/registro/reg_confirm_encabezado_logo.png">
					</div>
					<div class="col-md-12">
						<p>&nbsp;</p>
						<p class="txt_cen">
							<img
								src="${request.contextPath}/images/iconografia/navbar_registro/logo_cmx_navreg _confirm.png">
						</p>
						<p>&nbsp;</p>
						<p class="txt_cen texto_verde txt_big_big">
							<em>¡Bienvenido!</em>
						</p>
						<p class="txt_cen txt_big">
							<em>Su registro se ha realizado con éxito</em>
						</p>
						<p class="txt_cen texto_verde txt_big">
							<em>¡Ahora usted es un emprendedor social!</em>
						</p>
						<p>&nbsp;</p>
						<div class="row">
							<div class="col-md-1"></div>
							<div class="col-md-2">
								<p class="texto_normal">
									<strong>Nombre:</strong>
								</p>
							</div>
							<div class="col-md-9">
								<p class="texto_normal texto_verde">
									<strong> ${session.nombre}
									</strong>
								</p>
							</div>
						</div>
						<p>&nbsp;</p>
						<div class="row">
							<div class="col-md-1"></div>
							<div class="col-md-2">
								<p class="texto_normal">
									<strong>Fecha de registro:</strong>
								</p>
							</div>
							<div class="col-md-9">
								<p class="texto_normal texto_verde">
									<strong> ${session.fechareg}
									</strong>
								</p>
							</div>
						</div>
						<p>&nbsp;</p>
						<div class="row">
							<div class="col-md-1"></div>
							<div class="col-md-2">
								<p class="texto_normal">
									<strong>Nombre de usuario:</strong>
								</p>
							</div>
							<div class="col-md-9">
								<p class="texto_normal texto_verde">
									<strong> ${session.usuario}
									</strong>
								</p>
							</div>
						</div>
						<p>&nbsp;</p>
						<div class="row">
							<div class="col-md-1"></div>
							<div class="col-md-2">
								<p class="texto_normal">
									<strong>Contraseña:</strong>
								</p>
							</div>
							<div class="col-md-9">
								<p class="texto_normal texto_verde">
									<strong> ${session.password}
									</strong>
								</p>
							</div>
						</div>
						<p>&nbsp;</p>
						<div class="row">
							<div class="col-md-1"></div>
							<div class="col-md-2">
								<p class="texto_normal">
									<strong>Correo electrónico:</strong>
								</p>
							</div>
							<div class="col-md-9">
								<p class="texto_normal texto_verde">
									<strong> ${session.correo}
									</strong>
								</p>
							</div>
						</div>
						<p>&nbsp;</p>
						<div class="row">
							<div class="col-md-1"></div>
							<div class="col-md-2">
								<p class="texto_normal">
									<strong>Fecha de pago:</strong>
								</p>
							</div>
							<div class="col-md-9">
								<p class="texto_normal texto_verde">
									<strong> ${session.fechaautopago}
									</strong>
								</p>
							</div>
						</div>
						<p>&nbsp;</p>
						<div class="row">
							<div class="col-md-1"></div>
							<div class="col-md-2">
								<p class="texto_normal">
									<strong>ID del Mentor:</strong>
								</p>
							</div>
							<div class="col-md-9">
								<p class="texto_normal texto_verde">
									<strong> ${session.idmentor}
									</strong>
								</p>
							</div>
						</div>
						<p>&nbsp;</p>
						<div class="row">
							<div class="col-md-1"></div>
							<div class="col-md-2">
								<p class="texto_normal">
									<strong>Mentor:</strong>
								</p>
							</div>
							<div class="col-md-9">
								<p class="texto_normal texto_verde">
									<strong> ${session.nombrementor}
									</strong>
								</p>
							</div>
						</div>
						<p>&nbsp;</p>
						<div class="row">
							<div class="col-md-1"></div>
							<div class="col-md-2">
								<p class="texto_normal">
									<strong>Equipo:</strong>
								</p>
							</div>
							<div class="col-md-9">
								<p class="texto_normal texto_verde">
									<strong>Rojo</strong>
								</p>
							</div>
						</div>
						<p>&nbsp;</p>
						<div class="row">
							<div class="col-md-1"></div>
							<div class="col-md-2">
								<p class="texto_normal">
									<strong>Lider de equipo:</strong>
								</p>
							</div>
							<div class="col-md-9">
								<p class="texto_normal texto_verde">
									<strong>Roberto Lugo Hernandez</strong>
								</p>
							</div>
						</div>
						<p>&nbsp;</p>
						<div class="row">
							<div class="col-md-1"></div>
							<div class="col-md-10">
								<p class="texto_normal">
									<strong>Su usuario y contraseña le permitirán el
										acceso a las secciones siguientes de nuestro sitio web:</strong>
								</p>
								<p class="texto_normal texto_verde">
									<strong>http://www.compromisomx.com</strong>
								</p>
							</div>
							<div class="col-md-1"></div>
						</div>
						<div class="row">
							<div class="col-md-1"></div>
							<div class="col-md-10">
								<h2>
									<strong>Dirección de Facturación</strong>
								</h2>
								<div class="texto_normal">
									<p>Edgar Manuel Lopez Flores</p>
									<br>Calle melón No. 26 Mzna. E CP. 24085. San Francisco de
									Campeche, Campeche, México
								</div>


								<p>&nbsp;</p>
							</div>
							<div class="col-md-1"></div>
						</div>
						<div class="row">
							<div class="col-md-1"></div>
							<div class="col-md-5">
								<p class="txt_der">
									<a href="#"><img
										src="${request.contextPath}/images/iconografia/registro/descargar.png"></a>
								</p>
							</div>
							<div class="col-md-5">
								<p class="txt_izq">
									<a href="#"><img
										src="${request.contextPath}/images/iconografia/registro/imprimir.png"></a>
								</p>
							</div>
							<div class="col-md-1"></div>
						</div>
						<g:form name="formulario" controller="registrar" action="savePaso7">
							<div class="row">
								<div class="col-md-12">
									<p>&nbsp;</p>
									<p>&nbsp;</p>
									<p class="reg_alineacion">
										<button type="submit" class="btn btn-rosa">¡Listo!
											Confirmar registro</button>
									</p>
								</div>
							</div>
						</g:form>
						<div class="col-md-12 hoja_confirm_piepag"></div>
					</div>
				</div>
				<div class="col-md-1"></div>
			</div>
		</div>

		<script type="text/javascript">
			var paso = 7;
			var pantallas = 1;
		</script>
</body>
</html>