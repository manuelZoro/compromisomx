<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<title>Contraseña</title>
<meta name="layout" content="cuenta_layout" />

<script type="text/javascript">
	function passwordChanged() {

		var strongRegex = new RegExp(
				"^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).*$", "g");
		var mediumRegex = new RegExp(
				"^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$",
				"g");
		var enoughRegex = new RegExp("(?=.{6,}).*", "g");
		var pwd = document.getElementById("contrasena");
		if (pwd.value.length == 0) {
			toggle(0);
		} else if (false == enoughRegex.test(pwd.value)) {
			toggle(1);
		} else if (strongRegex.test(pwd.value)) {
			toggle(4);
		} else if (mediumRegex.test(pwd.value)) {
			toggle(3);
		} else {
			toggle(2);
		}
	}

	function toggle(i) {

		document.getElementById("excelente").style.display = "none";
		document.getElementById("buena").style.display = "none";
		document.getElementById("regular").style.display = "none";
		document.getElementById("mala").style.display = "none";
		switch (i) {

		case 1:
			document.getElementById("mala").style.display = "inline";
			break;
		case 2:
			document.getElementById("regular").style.display = "inline";
			break;
		case 3:
			document.getElementById("buena").style.display = "inline";
			break;
		case 4:
			document.getElementById("excelente").style.display = "inline";
			break;
		}
	}
</script>

</head>
<body>
	<!-- Inicia Contenido principal -->
	<g:form class="form-horizontal" controller="Cuenta" method="post"
		action="validacontraseña">
		<div class="row">
			<div class="col-md-12">
				<a type="button"
					href="${request.contextPath}/ayudaYSoporte"
					class="btn btn-default texto_campo_principral">/ Ayuda y
					soporte</a>
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
					<div class="col-md-3">Contraseña Actual:</div>
					<div class="col-md-4">
						<input type="password" class="form-control" name="password_actual">
					</div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-5"></div>
					<div class="col-md-6">
						<small> ${flash.message1}
						</small>
					</div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-2"></div>
					<div class="col-md-3">Contraseña Nueva:</div>
					<div class="col-md-4">
						<input id="contrasena" type="password" class="form-control" name="password_nueva" onkeyup="passwordChanged();">
						
					</div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-5"></div>
					<div class="col-md-6">
						<p>
							<img id="excelente" style="display: none;"
								src="${request.contextPath}/images/iconografia/registro/pass_excelente.png">
							<img id="buena" style="display: none;"
								src="${request.contextPath}/images/iconografia/registro/pass_buena.png">
							<img id="regular" style="display: none;"
								src="${request.contextPath}/images/iconografia/registro/pass_regular.png">
							<img id="mala" style="display: none;"
								src="${request.contextPath}/images/iconografia/registro/pass_mala.png">
						</p>
					</div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-2"></div>
					<div class="col-md-3">Confirmar Contraseña:</div>
					<div class="col-md-4">
						<input type="password" class="form-control"
							name="password_confirmada" >
					</div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-5"></div>
					<div class="col-md-6">
						<small> ${flash.message}
						</small>
					</div>
				</div>
				<p>&nbsp;</p>
				<div class="row altura_fila">
					<div class="col-md-5"></div>
					<div class="col-md-6">
						<button type="submit"
							class="btn btn-default texto_campo_principal">Guardar</button>
						&nbsp;&nbsp;&nbsp; <a type="button"
							class="btn btn-default texto_campo_principal"
							href="${request.contextPath}/cuenta/contraseña"
							class="btn btn-default texto_campo_principral">Cancelar</a>
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
	</g:form>
</body>
</html>