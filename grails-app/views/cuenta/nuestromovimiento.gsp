<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<title>Inicio</title>
<meta name="layout" content="cuenta_layout" />
</head>
<body>
	<!-- Inicia Contenido principal -->
	<g:form class="form-horizontal" controller="Cuenta" method="post"
		action="saveNuestroMovimiento">
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
						<p class="texto_normal">Fecha de nacimiento*:</p>
					</div>
					<div class="col-md-4">
						<input type="date"
							value="${new java.text.SimpleDateFormat("yyyy-MM-dd").format(cuenta.fecha_de_nacimiento)}"
							class="form-control texto_campo_principal" disabled>
					</div>
					<div class="col-md-1"></div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-2"></div>
					<div class="col-md-3">
						<p class="texto_normal">Profesión*:</p>
					</div>
					<div class="col-md-4">
						<g:select name="profesion" optionKey="id" optionValue="profesion"
							class="form-control texto_campo_principal" from="${profesion}"
							value="${ info.profesion }" />
					</div>
					<div class="col-md-1"></div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-2"></div>
					<div class="col-md-3">
						<p class="texto_normal">Ocupación*:</p>
					</div>
					<div class="col-md-4">
						<g:select name="ocupacion" optionKey="id" optionValue="ocupacion"
							class="form-control texto_campo_principal" from="${ocupacion}"
							value="${info.ocupacion }" />
					</div>
					<div class="col-md-1"></div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-2"></div>
					<div class="col-md-3">
						<p class="texto_normal">Pasatiempo*:</p>
					</div>
					<div class="col-md-4">
						<g:select name="pasatiempo" optionKey="id"
							optionValue="pasatiempo"
							class="form-control texto_campo_principal" from="${pasatiempo}"
							value="${ info.pasatiempo }" />
					</div>
					<div class="col-md-1"></div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-2"></div>
					<div class="col-md-3">
						<p class="texto_normal">Otras actividades*:</p>
					</div>
					<div class="col-md-4">
						<g:select name="actividades"
							class="form-control texto_campo_principal" optionKey="id"
							optionValue="actividad" from="${actividades}"
							value="${ info.otrasactividades }" />
					</div>
					<div class="col-md-1"></div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-2"></div>
					<div class="col-md-3">
						<p class="texto_normal">Horario de trabajo*:</p>
					</div>
					<div class="col-md-2">
						De: <input type="time" name="trabajo_inicio"
							class="form-control input-sm texto_campo_principal espaciado_campo_principal"
							value="${info.trabajo_inicio}">
					</div>
					<div class="col-md-2">
						A:<input type="time" name="trabajo_fin"
							class="form-control input-sm texto_campo_principal espaciado_campo_principal"
							value="${info.trabajo_fin}">
					</div>
					<div class="col-md-1"></div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-2"></div>
					<div class="col-md-3">
						<p class="texto_normal">Tiempo libre*:</p>
					</div>
					<div class="col-md-2">
						De: <input type="time" name="libre_inicio"
							class="form-control input-sm texto_campo_principal espaciado_campo_principal"
							value="${info.libre_inicio}">
					</div>
					<div class="col-md-2">
						A:<input type="time" name="libre_fin"
							class="form-control input-sm texto_campo_principal espaciado_campo_principal"
							value="${info.libre_fin}">
					</div>
					<div class="col-md-1">
						<br />
					</div>
					<br /> <br /> <br />
				</div>
				<div class="row altura_fila">
					<div class="col-md-2"></div>
					<div class="col-md-3">
						<p class="texto_normal">Estado Civil*:</p>
					</div>
					<div class="col-md-4">
						<g:select class='form-control' name="estadocivil"
							from="${['Soltero', 'Casado']}"
							noSelection="${['null':'Seleccionar']}"
							value="${info.estadocivil}" />
					</div>
					<div class="col-md-1"></div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-2"></div>
					<div class="col-md-3">
						<p class="texto_normal">Aniversario*:</p>
					</div>
					<div class="col-md-4">
						<input type="date" name="fechaniversario"
							value="${new java.text.SimpleDateFormat("yyyy-MM-dd").format(info.aniversario)}"
							class="form-control texto_campo_principal">
					</div>
					<div class="col-md-1"></div>
				</div>


				<g:if test="${cuenta.genero}">
					<div class="row altura_fila">
						<div class="col-md-2"></div>
						<div class="col-md-3">
							<p class="texto_normal">
								<strong>Tallas Mujer</strong>
							</p>
						</div>
						<div class="col-md-1"></div>
					</div>
					<div class="row altura_fila">
						<div class="col-md-2"></div>
						<div class="col-md-3">
							<p class="texto_normal">Playera*:</p>
						</div>
						<div class="col-md-4">
							<g:select class='form-control' name="talla_playera"
								from="${['XS', 'S', 'M', 'L', 'XL']}"
								noSelection="${['null':'Seleccionar']}"
								value="${info.tallaPlayera}" />
						</div>
						<div class="col-md-1"></div>
					</div>
					<div class="row altura_fila">
						<div class="col-md-2"></div>
						<div class="col-md-3">
							<p class="texto_normal">Camisa*:</p>
						</div>
						<div class="col-md-4">
							<g:select class='form-control' name="talla_camisa"
								from="${['XS', 'S', 'M', 'L', 'XL']}"
								noSelection="${['null':'Seleccionar']}"
								value="${info.tallaCamisa}" />
						</div>
						<div class="col-md-1"></div>
					</div>
					<div class="row altura_fila">
						<div class="col-md-2"></div>
						<div class="col-md-3">
							<p class="texto_normal">Zapatos*:</p>
						</div>
						<div class="col-md-4">
							<g:select class='form-control' name="talla_zapato"
								from="${['2', '2.5', '3', '3.5', '4', '4.5', '5', '5.5', '6', '6.5', '7', '7.5', '8', '8.5', '9', '9.5', '10', '10.5', '11', '11.5', '12', '12.5']}"
								noSelection="${['null':'Seleccionar']}"
								value="${info.tallaZapato}" />
						</div>
						<div class="col-md-1"></div>
					</div>
				</g:if>
				<g:else>
					<div class="row altura_fila">
						<div class="col-md-2"></div>
						<div class="col-md-3">
							<p class="texto_normal">
								<strong>Tallas Hombre</strong>
							</p>
						</div>
						<div class="col-md-1"></div>
					</div>
					<div class="row altura_fila">
						<div class="col-md-2"></div>
						<div class="col-md-3">
							<p class="texto_normal">Playera*:</p>
						</div>
						<div class="col-md-4">
							<g:select class='form-control' name="talla_playera"
								from="${['XS', 'S', 'M', 'L', 'XL']}"
								noSelection="${['null':'Seleccionar']}"
								value="${info.tallaPlayera}" />
						</div>
						<div class="col-md-1"></div>
					</div>
					<div class="row altura_fila">
						<div class="col-md-2"></div>
						<div class="col-md-3">
							<p class="texto_normal">Camisa*:</p>
						</div>
						<div class="col-md-4">
							<g:select class='form-control' name="talla_camisa"
								from="${['XS', 'S', 'M', 'L', 'XL']}"
								noSelection="${['null':'Seleccionar']}"
								value="${info.tallaCamisa}" />
						</div>
						<div class="col-md-1"></div>
					</div>
					<div class="row altura_fila">
						<div class="col-md-2"></div>
						<div class="col-md-3">
							<p class="texto_normal">Zapatos*:</p>
						</div>
						<div class="col-md-4">
							<g:select class='form-control' name="talla_zapato"
								from="${['2', '2.5', '3', '3.5', '4', '4.5', '5', '5.5', '6', '6.5', '7', '7.5', '8', '8.5', '9', '9.5', '10', '10.5', '11', '11.5', '12', '12.5']}"
								noSelection="${['null':'Seleccionar']}"
								value="${info.tallaZapato}" />
						</div>
						<div class="col-md-1"></div>
					</div>
				</g:else>

				<div id="hijosssss">
					<div class="row altura_fila">
						<div class="col-md-2"></div>
						<div class="col-md-3">
							<p class="texto_normal">
								<strong>Hijos</strong>
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
							<div class="col-md-4">
								<input id="hijos_si" type="radio" name="radiohijos" value="1"
									onclick="hh(true);">sí
							</div>
							<div class="col-md-4">
								<input id="hijos_no" type="radio" name="radiohijos" value="0"
									onclick="hh(false);">no
							</div>
						</div>
						<div class="col-md-1"></div>
					</div>

					<g:if test="${hijos.size()>0}">

						<div id="hijos">
							<div class="row altura_fila">

								<div class="col-md-2"></div>
								<div class="col-md-2">
									<a onclick="eliminarhijo();"><img
										src="${request.contextPath}/images/iconografia/registro/quitarhijo.png"
										border="0"></a>
								</div>
								<div class="col-md-2">
									<a id="ag" onclick="agregar();"><img
										src="${request.contextPath}/images/iconografia/registro/agregarhijo.png"
										border="0"></a>
								</div>
							</div>
							<g:each in="${hijos}" var="hijo" status="i">
								<div id="${"hijo" + i}">
									<div class="row altura_fila">
										<div class="col-md-2"></div>
										<div class="col-md-3">
											<p class="texto_normal">
												<strong>Género</strong>
											</p>
										</div>
										<div class="col-md-4">
											<g:select id="generohijo" name="generohijo"
												class="form-control input-sm texto_campo_principal espaciado_campo_principal"
												from="${['0': 'Masculino', '1': 'Femenino']}"
												optionKey="key" optionValue="value"
												value="${hijo.genero?"1":"0"}" />
										</div>
										<div class="col-md-1"></div>
									</div>
									<div class="row altura_fila">
										<div class="col-md-2"></div>
										<div class="col-md-3">
											<p class="texto_normal">Fecha de Nacimiento:</p>
										</div>
										<div class="col-md-4">
											<input id="fechanachijo" type="date"
												class="form-control texto_campo_principal"
												name="fechanachijo"
												value="${new java.text.SimpleDateFormat("yyyy-MM-dd").format(hijo.fechaNacimiento)}">
										</div>
										<div class="col-md-1"></div>
									</div>
								</div>
							</g:each>
						</div>
					</g:if>
					<g:else>
						<div id="hijos" style="display: none;">
							<div id="hijo0">
								<div class="row altura_fila">
									<div class="col-md-2"></div>
									<div class="col-md-3">
										<p class="texto_normal">
											<strong>Género</strong>
										</p>
									</div>
									<div class="col-md-4">
										<g:select id="generohijo" name="generohijo"
											class="form-control input-sm texto_campo_principal espaciado_campo_principal"
											from="${['0': 'Masculino', '1': 'Femenino']}" optionKey="key"
											optionValue="value" />
									</div>
									<div class="col-md-1"></div>
								</div>
								<div class="row altura_fila">
									<div class="col-md-2"></div>
									<div class="col-md-3">
										<p class="texto_normal">Fecha de Nacimiento:</p>
									</div>
									<div class="col-md-4">
										<input id="fechanachijo" type="date"
											class="form-control texto_campo_principal"
											name="fechanachijo" value="1990-12-20">
									</div>
									<div class="col-md-1"></div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-1">
									<a onclick="eliminarhijo();"><img
										src="${request.contextPath}/images/iconografia/registro/quitarhijo.png"
										border="0"></a>
								</div>
								<div class="col-md-1">
									<a id="ag" onclick="agregar();"><img
										src="${request.contextPath}/images/iconografia/registro/agregarhijo.png"
										border="0"></a>
								</div>
							</div>
						</div>
					</g:else>
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
	</g:form>
	<script type="text/javascript">
		$('input').timespinner();
		Globalize.culture('de-DE');
		$('input').timespinner('option', 'value', '19:00');
	</script>

	<script type="text/javascript">
		var habilitado = false;
		function hh(hab) {
			//alert(habilitado);
			habilitado = hab;

			if (habilitado) {
				document.getElementById("fechanachijo").name = "fechanachijo";
				document.getElementById("generohijo").name = "generohijo";
			} else {
				document.getElementById("fechanachijo").name = "";
				document.getElementById("generohijo").name = "";
				eliminarTodos();
			}
			document.getElementById("hijos").style.display = (habilitado) ? "inline"
					: "none";
		}

		function eliminarhijo() {
			//alert("Eliminar");
			// Removing a specified element when knowing its parent node
			if (hijos > 0) {
				var d = document.getElementById("hijos");
				var d_nested = document.getElementById("hijo" + hijos);
				hijos--;
				var throwawayNode = d.removeChild(d_nested);
			}
		}

		function eliminarTodos() {
			while (hijos > 0) {
				var d = document.getElementById("hijos");
				var d_nested = document.getElementById("hijo" + hijos);
				hijos--;
				var throwawayNode = d.removeChild(d_nested);
			}
		}
	</script>
	<script type="text/javascript">
		var hijos = 0;
		function agregar() {
			var div = document.getElementById('hijo0');
			clone = div.cloneNode(true); // true means clone all childNodes and all event handlers
			hijos++;
			clone.id = "hijo" + hijos;
			document.getElementById('hijos').appendChild(clone);
		}

		function eliminar() {

		}
	</script>
	<g:if test="${hijos.size()>0}">
		<script>
			hijos =
		${hijos.size()-1}
			;
			document.getElementById("hijos_si").checked = true;
		</script>
	</g:if>
	<g:else>
		<script>
			document.getElementById("hijos_no").checked = true;
		</script>
	</g:else>

</body>
</html>