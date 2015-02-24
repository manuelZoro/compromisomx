<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="layout" content="registro_lay" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
	function seleccionado(i, paquete) {
		document.getElementById("paq1").style.border = "0px solid";
		document.getElementById("paq2").style.border = "0px solid";
		document.getElementById("paq3").style.border = "0px solid";
		document.getElementById("paq4").style.border = "0px solid";
		document.getElementById("paquete").value = i;
		paquete.style.border = "5px solid red";
	}
</script>
</head>

<body>
	<g:form name="formulario" controller="registrar" action="savePaso4">
		<div id="pantalla1" style="">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<p>&nbsp;</p>
					<p class="txt_big texto_verde reg_alineacion">
						<em><strong>¡Paquete de Bienvenida!</strong></em>
					</p>
					<p>&nbsp;</p>
				</div>
				<div class="col-md-2"></div>
			</div>


			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<div class="row">
						<div class="col-md-12">
							<div class="row altura_fila">
								<div class="col-md-12">
									<p class="reg_alineacion">
										<img id="paq1" class="reg_div_producto sombrapanel"
											onclick="seleccionado(1, this);"
											src="${request.contextPath}/images/iconografia/registro/producto_1.png">
										<img id="paq2" class="reg_div_producto sombrapanel"
											onclick="seleccionado(2, this);"
											src="${request.contextPath}/images/iconografia/registro/producto_2.png">
										<img id="paq3" class="reg_div_producto sombrapanel"
											onclick="seleccionado(3, this);"
											src="${request.contextPath}/images/iconografia/registro/producto_1.png">
										<img id="paq4" class="reg_div_producto sombrapanel"
											onclick="seleccionado(4, this);"
											src="${request.contextPath}/images/iconografia/registro/producto_2.png">
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-2"></div>
			</div>

		</div>
		<input type="hidden" value="" name="accion" id="accion" />
		<input type="text" value="0" name="paquete" id="paquete" />

	</g:form>

	<script type="text/javascript">
		var paso = 4;
		var pantallas = 1;
	</script>
	<g:if test="${session.registro_cuenta.paquete != null}">
		<script type="text/javascript">
			document.getElementById("paquete").value = "${session.registro_cuenta.paquete}";
			document.getElementById("paq" + ${session.registro_cuenta.paquete}).style.border = "5px solid red";
		</script>
	</g:if>
</body>
</html>