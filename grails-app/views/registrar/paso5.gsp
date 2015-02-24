<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="layout" content="registro_lay" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<title>Insert title here</title>
</head>
<body>
	<g:form name="formulario" controller="registrar" action="savePaso5">
		<div id="pantalla1" style="">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<p>&nbsp;</p>
					<h3>
						<strong>Paso 5. Información de autopago y envío</strong>
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
							<div class="checkbox pull-left">
								<p class="txt_izq">
									<label><input type="checkbox" id="checkinfo"
										name="checkinfo" onClick="recommendSausage();" value="true"></label><strong><small>Utilizar
											mi información de contacto para mi direccion de envío.</small></strong>
								</p>
							</div>
						</div>
						<div class="col-md-6">
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Nombre(s)*:</p>
								</div>
								<div class="col-md-7">
									<input required type="text"
										class="form-control texto_campo_principal" placeholder=""
										name="nombre_aut" id="nombre_aut">
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Primer Apellido*:</p>
								</div>
								<div class="col-md-7">
									<input required type="text"
										class="form-control texto_campo_principal" placeholder=""
										name="priemrapellidoaut" id="priemrapellidoaut">
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Segundo Apellido*:</p>
								</div>
								<div class="col-md-7">
									<input required type="text"
										class="form-control texto_campo_principal" placeholder=""
										name="segunoapellidoaut" id="segunoapellidoaut">
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">País*:</p>
								</div>
								<div class="col-md-7">
									<select
										class="form-control input-sm texto_campo_principal espaciado_campo_principal"
										name="paisaut" id="paisaut">
										<g:each in="${todospaises}" var="paises" status="i">
											<option value="${paises.id}">
												${paises.nombre}
											</option>
										</g:each>
									</select>
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Estado*:</p>
								</div>
								<div class="col-md-7">
									<select
										class="form-control input-sm texto_campo_principal espaciado_campo_principal"
										name="estadoaut" id="estadoaut">
										<g:each in="${todosestados}" var="estados" status="i">
											<option value="${estados.id}">
												${estados.nombre}
											</option>
										</g:each>
									</select>
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Ciudad*:</p>
								</div>
								<div class="col-md-7">
									<g:select class="form-control texto_campo_principal"
										optionKey="id" optionValue="nombre" from="${todosciudades}"
										name="cuidadaut" id="cuidadaut" />
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Código Postal*:</p>
								</div>
								<div class="col-md-7">
									<g:select class="form-control texto_campo_principal"
										optionKey="id" optionValue="codigo"
										from="${todoscodigospostales}" name="cpaut" id="cpaut" />
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Colonia*:</p>
								</div>
								<div class="col-md-7">
									<g:select class="form-control texto_campo_principal"
										optionKey="id" optionValue="nombre" from="${todoscolonias}"
										name="coloniaaut" id="coloniaaut" />
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Calle*:</p>
								</div>
								<div class="col-md-7">
									<input type="text" class="form-control texto_campo_principal"
										placeholder="" name="calleaut" id="calleaut">
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Número exterior*:</p>
								</div>
								<div class="col-md-3">
									<input required type="text"
										class="form-control texto_campo_principal" placeholder=""
										name="numextaut" id="numextaut">
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Número interior:</p>
								</div>
								<div class="col-md-3">
									<input type="text" class="form-control texto_campo_principal"
										placeholder="" name="numintaut" id="numintaut">
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Manzana:</p>
								</div>
								<div class="col-md-7">
									<input type="text" class="form-control texto_campo_principal"
										placeholder="" name="manzanaaut" id="manzanaaut">
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Cruzamientos:</p>
								</div>
								<div class="col-md-7">
									<input type="text" class="form-control texto_campo_principal"
										placeholder="" name="cruzamientosaut" id="cruzamientosaut">
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Referencias:</p>
								</div>
								<div class="col-md-7">
									<input type="text" class="form-control texto_campo_principal"
										placeholder="" name="referenciasaut" id="referenciasaut">
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Teléfono*:</p>
								</div>
								<div class="col-md-7">
									<input type="text" class="form-control texto_campo_principal"
										placeholder="" name="telefono" id="telefono">
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Correo electrónico*:</p>
								</div>
								<div class="col-md-7">
									<input type="text" class="form-control texto_campo_principal"
										placeholder="" name="correoaut" id="correoaut">
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-2"></div>
			</div>
		</div>

		<div id="pantalla2" style="display: none;">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<p>&nbsp;</p>
					<h3>
						<strong>Paso 5. Información de autopago y envío</strong>
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
							<div class="col-md-4">
								<p class="reg_alineacion">
									<img
										src="${request.contextPath}/images/iconografia/registro/aereo.png">
								</p>
								<div class="col-md-3"></div>
								<div class="col-md-9">
									<div class="radio">
										<label><input type="radio" name="grupo1" value="1">Envío
											Aéreo</label>
									</div>
								</div>
								<div class="col-md-2"></div>
							</div>
							<div class="col-md-4">
								<p class="reg_alineacion">
									<img
										src="${request.contextPath}/images/iconografia/registro/terrestre.png">
								</p>
								<div class="col-md-3"></div>
								<div class="col-md-9">
									<div class="radio">
										<label><input type="radio" name="grupo1" value="2"
											checked>Envío Terrestre</label>
									</div>
								</div>
								<div class="col-md-2"></div>
							</div>
							<div class="col-md-4">
								<p class="reg_alineacion">
									<img
										src="${request.contextPath}/images/iconografia/registro/maritimo.png">
								</p>
								<div class="col-md-3"></div>
								<div class="col-md-9">
									<div class="radio">
										<label><input type="radio" name="grupo1" value="3">Envío
											Marítimo</label>
									</div>
								</div>
								<div class="col-md-2"></div>
							</div>
						</div>
						<div class="col-md-12">
							<p>&nbsp;</p>
						</div>
						<div class="col-md-12">
							<div class="col-md-3"></div>
							<div class="col-md-3">
								<p class="pull-right">Envío:</p>
							</div>
							<div class="col-md-2">
								<p class="pull-left">
									<strong> <% out.print("0.00") %>
									</strong>
								</p>
							</div>
							<div class="col-md-4"></div>
						</div>
						<div class="col-md-12">
							<div class="col-md-3"></div>
							<div class="col-md-3">
								<p class="pull-right">Manejo:</p>
							</div>
							<div class="col-md-2">
								<p class="pull-left">
									<strong> <% out.print("0.00") %>
									</strong>
								</p>
							</div>
							<div class="col-md-4"></div>
						</div>
						<div class="col-md-12">
							<div class="col-md-3"></div>
							<div class="col-md-3">
								<p class="pull-right">Flete / Aduana:</p>
							</div>
							<div class="col-md-2">
								<p class="pull-left">
									<strong> <% out.print("0.00") %>
									</strong>
								</p>
							</div>
							<div class="col-md-4"></div>
						</div>
					</div>
				</div>
				<div class="col-md-2"></div>
			</div>
		</div>


		<div id="pantalla3" style="display: none;">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<p>&nbsp;</p>
					<h3>
						<strong>Paso 5. Información de autopago y envío</strong>
					</h3>
					<p>&nbsp;</p>
				</div>
				<div class="col-md-2"></div>
			</div>

			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<div class="row">
						<div class="col-md-12"></div>
						<div class="col-md-6">
							<h4>
								<strong>Información de Autopago</strong>
							</h4>
							<p class="reg_alineacion">
								<img
									src="${request.contextPath}/images/iconografia/registro/ayuda_tarjeta.png">
							</p>
						</div>
						<div class="col-md-6">
							<div class="row altura_fila">
								<div class="col-md-12">
									<div class="checkbox pull-left">
										<p class="txt_izq">
											<label><input type="checkbox" name="checkinf"
												id="checkinf" value="true"></label> <strong><small>Guardar
													información de autopago para su uso en un futuro.</small></strong>
										</p>
									</div>
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Forma de pago*:</p>
								</div>
								<div class="col-md-7">
									<select
										class="form-control input-sm texto_campo_principal espaciado_campo_principal"
										name="formapago" id="formapago">
										<OPTION value=1>Tarjeta de Crédito</OPTION>
										<OPTION value=2>Tarjeta de Débito</OPTION>
									</select>
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5"></div>
								<div class="col-md-7">
									<input type="radio" name="fpago" value="1"><img
										src="${request.contextPath}/images/iconografia/registro/mastercard.png">
									<input type="radio" name="fpago" value="2" checked><img
										src="${request.contextPath}/images/iconografia/registro/visa.png">
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Titular de la Tarjeta*:</p>
								</div>
								<div class="col-md-7">
									<input required type="text"
										class="form-control texto_campo_principal" placeholder=""
										name="titulartarjeta" id="titulartarjeta">
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Número de la Tarjeta*:</p>
								</div>
								<div class="col-md-7">
									<input type="text" class="form-control texto_campo_principal"
										required name="numerotarjeta" id="numerotarjeta"
										onKeyPress="return justNumbers(event);" maxlength="16" />
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Expiración de Tarjeta:</p>
								</div>
								<div class="col-md-3">
									<input list="expmm" name="expmm"
										class="form-control texto_campo_principal" maxlength="2"
										onKeyPress="return justNumbers(event);" value="01">
									<datalist id="expmm">
										<option value="01"></option>
										<option value="02"></option>
										<option value="03"></option>
										<option value="04"></option>
										<option value="05"></option>
										<option value="06"></option>
										<option value="07"></option>
										<option value="08"></option>
										<option value="09"></option>
										<option value="10"></option>
										<option value="11"></option>
										<option value="12"></option>
									</datalist>
								</div>
								<div class="col-md-3">
									<input list="expaa" name="expaa"
										class="form-control texto_campo_principal" maxlength="2"
										onKeyPress="return justNumbers(event);" value="14">
									<datalist id="expaa">
										<option value="14"></option>
										<option value="15"></option>
										<option value="16"></option>
										<option value="17"></option>
										<option value="18"></option>
										<option value="19"></option>
										<option value="20"></option>
										<option value="21"></option>
										<option value="22"></option>
										<option value="23"></option>
										<option value="24"></option>
									</datalist>
								</div>
								<div class="col-md-1"></div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Código de Seguridad:</p>
								</div>
								<div class="col-md-7">
									<input type="text" class="form-control texto_campo_principal"
										placeholder="" name="codigoseguridad" id="codigoseguridad"
										onKeyPress="return justNumbers(event);" maxlength="4" />
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Tipo de Comprobante:</p>
								</div>
								<div class="col-md-7">
									<p class="pull-left texto_normal">Factura Electrónica</p>
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5"></div>
								<div class="col-md-7">
									<div class="checkbox pull-left">
										<p class="txt_izq">
											<label><input type="checkbox"></label> Deseo
											proporcionar R.F.C. para fines fiscales (Sólo datos de
											facturación en México). En caso de no ingresar un R.F.C., el
											comprobante será emitido con un R.F.C. genérico.</strong>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-2"></div>
			</div>
		</div>
		<div id="pantalla4" style="display: none;">
			<!-- Esta pantalla no estaba en la documentación, y no se sabe a qué se refiere. Se requiere un cambio de requerimientos. -->
		</div>

		<input type="hidden" value="" name="accion" id="accion" />
	</g:form>
	<script type="text/javascript">
		var paso = 5;
		var pantallas = 3;
	</script>

	<script>
		function recommendSausage() {
			if (document.getElementById("checkinfo").checked == true) {
				document.getElementById("nombre_aut").value = "${session.registro_cuenta.nombres}";
				document.getElementById("priemrapellidoaut").value = "${session.registro_cuenta.primer_apellido}";
				document.getElementById("segunoapellidoaut").value = "${session.registro_cuenta.segundo_apellido}";
				document.getElementById("paisaut").value = "${session.registro_cuenta.pais.id}";
				document.getElementById("estadoaut").value = "${session.registro_cuenta.estado.id}";
				document.getElementById("cuidadaut").value = "${session.registro_cuenta.ciudad.id}";
				document.getElementById("cpaut").value = "${session.registro_cuenta.codigo_postal.id}";
				document.getElementById("coloniaaut").value = "${session.registro_cuenta.colonia.id}";
				document.getElementById("calleaut").value = "${session.registro_cuenta.calle}";
				document.getElementById("numextaut").value = "${session.registro_cuenta.numero_exterior}";
				document.getElementById("numintaut").value = "${session.registro_cuenta.numero_interior}";
				document.getElementById("manzanaaut").value = "${session.registro_cuenta.manzana}";
				document.getElementById("cruzamientosaut").value = "${session.registro_cuenta.cruzamientos}";
				document.getElementById("referenciasaut").value = "${session.registro_cuenta.referencias}";
				document.getElementById("telefono").value = "${session.registro_cuenta.telefono_casa}";
				document.getElementById("correoaut").value = "${session.registro_cuenta.correo_electronico}";
			}
			else{
				document.getElementById("nombre_aut").value = "";
				document.getElementById("priemrapellidoaut").value = "";
				document.getElementById("segunoapellidoaut").value = "";
				document.getElementById("paisaut").selectedIndex = "0";
				document.getElementById("estadoaut").selectedIndex = "0";
				document.getElementById("cuidadaut").selectedIndex = "0";
				document.getElementById("cpaut").selectedIndex = "0";
				document.getElementById("coloniaaut").selectedIndex = "0";
				document.getElementById("calleaut").value = "";
				document.getElementById("numextaut").value = "";
				document.getElementById("numintaut").value = "";
				document.getElementById("manzanaaut").value = "";
				document.getElementById("cruzamientosaut").value = "";
				document.getElementById("referenciasaut").value = "";
				document.getElementById("telefono").value = "";
				document.getElementById("correoaut").value = "";
				}
		}
	</script>

	<g:if test="${session.registro_cuenta_aut!=null}">
		<script type="text/javascript">
				document.getElementById("nombre_aut").value = "${session.registro_cuenta_aut.autopagonombres}";
				document.getElementById("priemrapellidoaut").value = "${session.registro_cuenta_aut.autopagoprimerapellido}";
				document.getElementById("segunoapellidoaut").value = "${session.registro_cuenta_aut.autopagosegundoapellido}";
				
				<g:if test="${session.registro_cuenta_aut.autopagopais!=null}">
				document.getElementById("paisaut").value = "${session.registro_cuenta_aut.autopagopais.id}";
                </g:if>
                <g:if test="${session.registro_cuenta_aut.autopagoestado!=null}">
				document.getElementById("estadoaut").value = "${session.registro_cuenta_aut.autopagoestado.id}";
                </g:if>
                <g:if test="${session.registro_cuenta_aut.autopagociudad!=null}">
				document.getElementById("cuidadaut").value = "${session.registro_cuenta_aut.autopagociudad.id}";
                </g:if>
                <g:if test="${session.registro_cuenta_aut.autopagocodigopostal!=null}">
				document.getElementById("cpaut").value = "${session.registro_cuenta_aut.autopagocodigopostal.id}";
                </g:if>
                <g:if test="${session.registro_cuenta_aut.autopagocolonia!=null}">
				document.getElementById("coloniaaut").value = "${session.registro_cuenta_aut.autopagocolonia.id}";
                </g:if>
				document.getElementById("calleaut").value = "${session.registro_cuenta_aut.autopagocalle}";
				document.getElementById("numextaut").value = "${session.registro_cuenta_aut.autopagonumeroexterior}";
				document.getElementById("numintaut").value = "${session.registro_cuenta_aut.autopagonumerointerior}";
				document.getElementById("manzanaaut").value = "${session.registro_cuenta_aut.autopagomanzana}";
				document.getElementById("cruzamientosaut").value = "${session.registro_cuenta_aut.autopagocruzamientos}";
				document.getElementById("referenciasaut").value = "${session.registro_cuenta_aut.autopagoreferencia}";
				document.getElementById("correoaut").value = "${session.registro_cuenta_aut.autopagocorreo}";
				
				//aca radios button
				
				document.getElementById("formapago").value = "${session.registro_cuenta_aut.autotipotarjetaformapago}";
				//aca autopago tipo tarjeta
				document.getElementById("titulartarjeta").value = '${session.registro_cuenta_aut.autopagotitulartarjeta}';
				document.getElementById("numerotarjeta").value = '${session.registro_cuenta_aut.autopagonumerotarjeta}';
				document.getElementById("expmm").value = "${session.registro_cuenta_aut.autopagoexpiracionmes}";
				document.getElementById("expaa").value = '${session.registro_cuenta_aut.autopagoexpiracionano}';
				document.getElementById("codigoseguridad").value = '${session.registro_cuenta_aut.autopagocodigoseguridad}';
				document.getElementById("direccion1").value = '${session.registro_cuenta_aut.autopagodireccion1}';
				document.getElementById("direccion2").value = '${session.registro_cuenta_aut.autopagodireccion2}';
				document.getElementById("telefono").value = '${session.registro_cuenta_aut.autopagotelefonot}';

				
				
				<g:if test="${session.registro_cuenta_aut.autopagopaist!=null}">
				document.getElementById("pais").value = '${session.registro_cuenta_aut.autopagopaist.id}';
                </g:if>
                <g:if test="${session.registro_cuenta_aut.autopagoestadot!=null}">
				document.getElementById("estado").value = '${session.registro_cuenta_aut.autopagoestadot.id}';
                </g:if>
                <g:if test="${session.registro_cuenta_aut.autopagociudadt!=null}">
				document.getElementById("ciudad").value = '${session.registro_cuenta_aut.autopagociudadt.id}';
                </g:if>
                <g:if test="${session.registro_cuenta_aut.autopagocodigopostalt!=null}">
				document.getElementById("cp").value = '${session.registro_cuenta_aut.autopagocodigopostalt.id}';
                </g:if>
				
		</script>
	</g:if>

	<g:if test="${session.registro_cuenta!=null}">
		<script type="text/javascript">
		        function rellenar(){

		        	document.getElementById("nombre_aut").value = "${session.registro_cuenta.nombres}";
					document.getElementById("priemrapellidoaut").value = "${session.registro_cuenta.primer_apellido}";
					document.getElementById("segunoapellidoaut").value = "${session.registro_cuenta.segundo_apellido}";
					
					<g:if test="${session.registro_cuenta.pais!=null}">
					document.getElementById("paisaut").value = '${session.registro_cuenta.pais.id}';
	                </g:if>
	                <g:if test="${session.registro_cuenta.estado!=null}">
					document.getElementById("estadoaut").value = '${session.registro_cuenta.estado.id}';
	                </g:if>
	                <g:if test="${session.registro_cuenta.ciudad!=null}">
					document.getElementById("cuidadaut").value = '${session.registro_cuenta.ciudad.id}';
	                </g:if>
	                <g:if test="${session.registro_cuenta.codigo_postal!=null}">
					document.getElementById("cpaut").value = '${session.registro_cuenta.codigo_postal.id}';
	                </g:if>
	                <g:if test="${session.registro_cuenta.colonia!=null}">
					document.getElementById("coloniaaut").value = '${session.registro_cuenta.colonia.id}';
	                </g:if>
					document.getElementById("calleaut").value = "${session.registro_cuenta.calle}";
					document.getElementById("numextaut").value = "${session.registro_cuenta.numero_exterior}";
					document.getElementById("numintaut").value = "${session.registro_cuenta.numero_interior}";
					document.getElementById("manzanaaut").value = "${session.registro_cuenta.manzana}";
					document.getElementById("cruzamientosaut").value = "${session.registro_cuenta.cruzamientos}";
					document.getElementById("referenciasaut").value = "${session.registro_cuenta.referencias}";
					document.getElementById("telefono").value = "${session.registro_cuenta.telefono_casa}";
					document.getElementById("correoaut").value = "${session.registro_cuenta.correo_electronico}";
		</script>
	</g:if>

</body>
</html>