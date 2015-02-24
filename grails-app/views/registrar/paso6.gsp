<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="layout" content="registro_lay" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<title>Insert title here</title>

</head>
<body>
	<g:form name="formulario" controller="registrar" action="savePaso6">
		<div id="pantalla1" style="">
			<!-- nuevo -->
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<div class="row">
						<div class="col-md-6">
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Fecha de nacimiento*:</p>
								</div>
								<div class="col-md-7">
									<input type="date" class="form-control texto_campo_principal"
										class="form-control"
										value="${new java.text.SimpleDateFormat("yyyy-MM-dd").format(session.registro_cuenta.fecha_de_nacimiento)}"
										disabled>
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Profesión*:</p>
								</div>
								<div class="col-md-7">
									<g:select name="profesion" optionKey="id"
										optionValue="profesion"
										class="form-control texto_campo_principal"
										from="${todosprofesiones}" />

								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Ocupación*:</p>
								</div>
								<div class="col-md-7">
									<g:select name="ocupacion" optionKey="id"
										optionValue="ocupacion"
										class="form-control texto_campo_principal"
										from="${todosocupaciones}" />
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Pasatiempo:</p>
								</div>
								<div class="col-md-7">
									<g:select name="pasatiempo" optionKey="id"
										optionValue="pasatiempo"
										class="form-control texto_campo_principal"
										from="${todospasatiempos}" />
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Otras actividades:</p>
								</div>
								<div class="col-md-7">
									<g:select name="actividades"
										class="form-control texto_campo_principal" optionKey="id"
										optionValue="actividad" from="${todosotrasactiviades}" />
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-2"></div>
			</div>
			<!-- nuevo -->
		</div>

		<div id="pantalla2" style="display: none;">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<p>&nbsp;</p>
					<h3 class="reg_alineacion">
						<strong><em>Información Personal</em></strong>
					</h3>
					<h3 class="reg_alineacion">
						<strong><em>Hijos</em></strong>
					</h3>
					<p>&nbsp;</p>
				</div>
				<div class="col-md-2"></div>
			</div>

			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<div class="row">
						<div class="col-md-6">
							<div class="row altura_fila">
								<div class="col-md-10"></div>
								<div class="col-md-2">
									<div class="radio">
										<label><input type="radio" name="radiohijos" value="1"
											onclick="hh(true);">Sí</label>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="row altura_fila">
								<div class="col-md-2">
									<div class="radio">
										<label><input type="radio" name="radiohijos" value="0"
											onclick="hh(false);" checked>No</label>
									</div>
								</div>
								<div class="col-md-10"></div>
							</div>
						</div>
						<div class="col-md-12">
							<p>&nbsp;</p>
						</div>
					</div>
					<!-- Comienza hijo -->

					<div id="hijos" style="display: none;">
						<div class="row col-md-1">
							<a onclick="eliminarhijo();"><img
								src="${request.contextPath}/images/iconografia/registro/quitarhijo.png"
								border="0"></a>
						</div>
						<div class="col-md-1">
							<a id="ag" onclick="agregar();"><img
								src="${request.contextPath}/images/iconografia/registro/agregarhijo.png"
								border="0"></a>
						</div>
						<div class="row" id="hijo0">
							<div class="col-md-12">
								<div class="row altura_fila">
									<div class="col-md-1">
										<p class="txt_der">Género</p>
									</div>
									<div class="col-md-3">
										<select id="generohijo" name="generohijo"
											class="form-control input-sm texto_campo_principal espaciado_campo_principal">
											<option value="0">Masculino</option>
											<option value="1">Femenino</option>
										</select>
									</div>
									<div class="col-md-3">
										<p class="txt_der">Fecha de Nacimiento:</p>
									</div>
									<div class="col-md-4">
										<input id="fechanachijo" type="date"
											class="form-control texto_campo_principal"
											name="fechanachijo">
									</div>

								</div>
							</div>
						</div>
						<!-- Termina hijo -->

					</div>

				</div>
				<div class="col-md-2"></div>
			</div>
		</div>

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
		<g:if test="">
			<script type="text/javascript">
				
			</script>
		</g:if>

		<div id="pantalla3" style="display: none;">
			<g:if test="${session.registro_cuenta.genero}">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<p>&nbsp;</p>
						<h3 class="reg_alineacion">
							<strong><em>Información Personal</em></strong>
						</h3>
						<h3 class="reg_alineacion">
							<strong><em>Tallas Mujer</em></strong>
						</h3>
						<p>&nbsp;</p>
					</div>
					<div class="col-md-2"></div>
				</div>

				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<div class="row">
							<div class="col-md-12">
								<p class="txt_cen">
									<img
										src="${request.contextPath}/images/iconografia/registro/monitorosa.png">
								</p>
							</div>
							<div class="col-md-12">
								<p>&nbsp;</p>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="row altura_fila">
									<div class="col-md-3">
										<p class="txt_der"></p>
									</div>
									<div class="col-md-2">
										<p class="txt_der">Playera*:</p>
									</div>
									<div class="col-md-3">
										<select name="talla_playera"
											class="form-control input-sm texto_campo_principal espaciado_campo_principal">
											<option value='XS'>Extra chica</option>
											<option value='S'>Chica</option>
											<option value='M'>Mediana</option>
											<option value='L'>Grande</option>
											<option value='XL'>Extra grande</option>
										</select>
									</div>
									<div class="col-md-4"></div>
								</div>
								<div class="row altura_fila">
									<div class="col-md-3">
										<p class="txt_der"></p>
									</div>
									<div class="col-md-2">
										<p class="txt_der">Camisa*:</p>
									</div>
									<div class="col-md-3">
										<select name="talla_camisa"
											class="form-control input-sm texto_campo_principal espaciado_campo_principal">
											<option value='XS'>Extra chica</option>
											<option value='S'>Chica</option>
											<option value='M'>Mediana</option>
											<option value='L'>Grande</option>
											<option value='XL'>Extra grande</option>
										</select>
									</div>
									<div class="col-md-4"></div>
								</div>
								<div class="row altura_fila">
									<div class="col-md-3">
										<p class="txt_der"></p>
									</div>
									<div class="col-md-2">
										<p class="txt_der">Zapatos*:</p>
									</div>
									<div class="col-md-3">
										<select name="talla_zapato"
											class="form-control input-sm texto_campo_principal espaciado_campo_principal">
											<option value='2'>2</option>
											<option value='2.5'>2.5</option>
											<option value='3'>3</option>
											<option value='3.5'>3.5</option>
											<option value='4'>4</option>
											<option value='4.5'>4.5</option>
											<option value='5'>5</option>
											<option value='5'>6</option>
											<option value='6.5'>6.5</option>
											<option value='7'>7</option>
											<option value='7.5'>7.5</option>
											<option value='8'>8</option>
											<option value='8.5'>8.5</option>
											<option value='9'>9</option>
											<option value='9.5'>9.5</option>
											<option value='10'>10</option>
										</select>
									</div>
									<div class="col-md-4"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-2"></div>
				</div>
			</g:if>
			<g:else>
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<p>&nbsp;</p>
						<h3 class="reg_alineacion">
							<strong><em>Información Personal</em></strong>
						</h3>
						<h3 class="reg_alineacion">
							<strong><em>Tallas Hombre</em></strong>
						</h3>
						<p>&nbsp;</p>
					</div>
					<div class="col-md-2"></div>
				</div>

				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<div class="row">
							<div class="col-md-12">
								<p class="txt_cen">
									<img
										src="${request.contextPath}/images/iconografia/registro/monitoazul.png">
								</p>
							</div>
							<div class="col-md-12">
								<p>&nbsp;</p>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="row altura_fila">
									<div class="col-md-3">
										<p class="txt_der"></p>
									</div>
									<div class="col-md-2">
										<p class="txt_der">Playera*:</p>
									</div>
									<div class="col-md-3">
										<select name="talla_playera"
											class="form-control input-sm texto_campo_principal espaciado_campo_principal">
											<option value='XS'>Extra chica</option>
											<option value='S'>Chica</option>
											<option value='M'>Mediana</option>
											<option value='L'>Grande</option>
											<option value='XL'>Extra grande</option>
										</select>
									</div>
									<div class="col-md-4"></div>
								</div>
								<div class="row altura_fila">
									<div class="col-md-3">
										<p class="txt_der"></p>
									</div>
									<div class="col-md-2">
										<p class="txt_der">Camisa*:</p>
									</div>
									<div class="col-md-3">
										<select name="talla_camisa"
											class="form-control input-sm texto_campo_principal espaciado_campo_principal">
											<option value='XS'>Extra chica</option>
											<option value='S'>Chica</option>
											<option value='M'>Mediana</option>
											<option value='L'>Grande</option>
											<option value='XL'>Extra grande</option>
										</select>
									</div>
									<div class="col-md-4"></div>
								</div>
								<div class="row altura_fila">
									<div class="col-md-3">
										<p class="txt_der"></p>
									</div>
									<div class="col-md-2">
										<p class="txt_der">Zapatos*:</p>
									</div>
									<div class="col-md-3">
										<select name="talla_zapato"
											class="form-control input-sm texto_campo_principal espaciado_campo_principal">
											<option value='2'>2</option>
											<option value='2.5'>2.5</option>
											<option value='3'>3</option>
											<option value='3.5'>3.5</option>
											<option value='4'>4</option>
											<option value='4.5'>4.5</option>
											<option value='5'>5</option>
											<option value='5'>6</option>
											<option value='6.5'>6.5</option>
											<option value='7'>7</option>
											<option value='7.5'>7.5</option>
											<option value='8'>8</option>
											<option value='8.5'>8.5</option>
											<option value='9'>9</option>
											<option value='9.5'>9.5</option>
											<option value='10'>10</option>
											<option value='10.5'>10.5</option>
											<option value='11'>11</option>
											<option value='11.5'>11.5</option>
											<option value='12'>12</option>
											<option value='12.5'>12.5</option>
										</select>
									</div>
									<div class="col-md-4"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-2"></div>
				</div>
			</g:else>
			<!-- termina nuevo -->
		</div>
		<div id="pantalla4" style="display: none;">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<p>&nbsp;</p>
					<h3 class="reg_alineacion">
						<strong><em>Información Personal</em></strong>
					</h3>
					<h3 class="reg_alineacion">
						<strong><em>Redes Sociales</em></strong>
					</h3>
					<p>&nbsp;</p>
				</div>
				<div class="col-md-2"></div>
			</div>

			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<div class="row">
						<div class="col-md-12">
							<p>&nbsp;</p>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="txt_der"></p>
								</div>
								<div class="col-md-1">
									<p class="txt_der">
										<img
											src="${request.contextPath}/images/iconografia/registro/twitter.png">
									</p>
								</div>
								<div class="col-md-6">
									<input type="text" class="form-control texto_campo_principal"
										name="l_twi" placeholder="Twitter">
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="txt_der"></p>
								</div>
								<div class="col-md-1">
									<p class="txt_der">
										<img
											src="${request.contextPath}/images/iconografia/registro/facebook.png">
									</p>
								</div>
								<div class="col-md-6">
									<input type="text" class="form-control texto_campo_principal"
										name="l_fac" placeholder="Facebook">
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="txt_der"></p>
								</div>
								<div class="col-md-1">
									<p class="txt_der">
										<img
											src="${request.contextPath}/images/iconografia/registro/skype.png">
									</p>
								</div>
								<div class="col-md-6">
									<input type="text" class="form-control texto_campo_principal"
										name="l_sky" placeholder="Skype">
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="row altura_fila">
								<div class="col-md-1">
									<p class="txt_der">
										<img
											src="${request.contextPath}/images/iconografia/registro/facetime.png">
									</p>
								</div>
								<div class="col-md-6">
									<input type="text" class="form-control texto_campo_principal"
										name="l_fat" placeholder="Facetime">
								</div>
								<div class="col-md-5">
									<p class="txt_der"></p>
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-1">
									<p class="txt_der">
										<img
											src="${request.contextPath}/images/iconografia/registro/whatsapp.png">
									</p>
								</div>
								<div class="col-md-6">
									<input type="text" class="form-control texto_campo_principal"
										name="l_wha" placeholder="Whatsapp">
								</div>
								<div class="col-md-5">
									<p class="txt_der"></p>
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-1">
									<p class="txt_der"></p>
								</div>
								<div class="col-md-6">
									<img
										src="${request.contextPath}/images/iconografia/registro/siguenostwitter.png">
								</div>
								<div class="col-md-5">
									<p class="txt_der"></p>
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-1">
									<p class="txt_der"></p>
								</div>
								<div class="col-md-6">
									<img
										src="${request.contextPath}/images/iconografia/registro/siguenosfacebook.png">
								</div>
								<div class="col-md-5">
									<p class="txt_der"></p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-2"></div>
			</div>
		</div>

		<div id="pantalla5" style="display: none;">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<p>&nbsp;</p>
					<h3 class="reg_alineacion">
						<strong><em>Información Personal</em></strong>
					</h3>
					<p>&nbsp;</p>
				</div>
				<div class="col-md-2"></div>
			</div>

			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<div class="row">
						<div class="col-md-12">
							<p>&nbsp;</p>
						</div>
					</div>
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8">
							<div class="row altura_fila">
								<div class="col-md-3">
									<p class="txt_der texto_normal">Horario de trabajo*:</p>
								</div>
								<div class="col-md-1">
									<p class="txt_der texto_normal">De:</p>
								</div>
								<div class="col-md-4">
									<input type="time" name="htrabajo1"
										class="form-control input-sm texto_campo_principal espaciado_campo_principal">
								</div>
								<div class="col-md-1">
									<p class="txt_der texto_normal">A:</p>
								</div>
								<div class="col-md-4">
									<input type="time" name="htrabajo2"
										class="form-control input-sm texto_campo_principal espaciado_campo_principal">
								</div>
								<div class="col-md-1"></div>
							</div>
							<div class="row altura_fila" class="medida">
								<div class="col-md-3">
									<p class="txt_der texto_normal">Tiempo libre*:</p>
								</div>
								<div class="col-md-1">
									<p class="txt_der texto_normal">De:</p>
								</div>
								<div class="col-md-4">
									<input type="time" name="htlibre1"
										class="form-control input-sm texto_campo_principal espaciado_campo_principal">
								</div>
								<div class="col-md-1">
									<p class="txt_der texto_normal">A:</p>
								</div>
								<div class="col-md-4">
									<input type="time" name="htlibre2"
										class="form-control input-sm texto_campo_principal espaciado_campo_principal">
								</div>
								<div class="col-md-1"></div>
							</div>
							<div class="row altura_fila" class="medida">
								<div class="col-md-3">
									<p class="txt_der texto_normal">Estado civil*:</p>
								</div>
								<div class="col-md-1"></div>
								<div class="col-md-3">
									<g:select name="estadocivil" from="${arre}"
										class="form-control input-sm texto_campo_principal espaciado_campo_principal"
										style="width: 130px" value="${session.p6estadocivil}" />
								</div>
								<div class="col-md-1"></div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-3">
									<p class="pull-right texto_normal">Aniversario:</p>
								</div>
								<div class="col-md-1"></div>
								<div class="col-md-2">
									<input type="date" name="fechaniversario"
										value="${session.p6fechaniversario}"
										class="form-control texto_campo_principal">
								</div>
								<div class="col-md-2"></div>
							</div>
						</div>
						<div class="col-md-2"></div>
					</div>
				</div>
				<div class="col-md-2"></div>
			</div>
		</div>
		<input type="hidden" value="" name="accion" id="accion" />
	</g:form>

	<script type="text/javascript">
		var paso = 6;
		var pantallas = 5;
	</script>
</body>
</html>