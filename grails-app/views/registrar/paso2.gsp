<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.text.SimpleDateFormat"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="layout" content="registro_lay" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<title>Insert title here</title>

<script type="text/javascript">
    // wait for dom to load
    $(function(){
      // set onblur event handler
      $("#nombreusuario").keyup(function(){
        // if some username was entered - this == #username
        if($(this).length > 0) {
          // use create link so we don't have to hardcode context
          var url = '${createLink(controller:'registrar', action:'disponible')}'
          //document.getElementById("dummy").style.display = "none";
								// async ajax request pass username entered as id parameter
								$.getJSON(url, {
									nombreusuario : $(this).val()
								}, function(json) {
									if (!json.available) {
										
										$("#nombreusuario").css("border",
												"2px solid red");
										
										document.getElementById("correcto").style.display = "none";
										document.getElementById("correcto").style.visibility = "hidden";
										document.getElementById("incorrecto").style.display = "";
										document.getElementById("incorrecto").style.visibility = "visible";		
										//alert("adiós");
									}
									else{
										
										$("#nombreusuario").css("border",
												"2px solid green");
												
										document.getElementById("incorrecto").style.display = "none";
										document.getElementById("incorrecto").style.visibility = "hidden";
										document.getElementById("correcto").style.display = "";
										document.getElementById("correcto").style.visibility = "visible";
										//alert(json.id);
									}
								});
							}
        else {
        	document.getElementById("correcto").style.display = "none";
			document.getElementById("correcto").style.visibility = "hidden";
			document.getElementById("incorrecto").style.display = "none";
			document.getElementById("incorrecto").style.visibility = "hidden";
            }
						});
	});
</script>

<script type="text/javascript">
function passwordChanged() {
	
var strongRegex = new RegExp("^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).*$", "g");
var mediumRegex = new RegExp("^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g");
var enoughRegex = new RegExp("(?=.{6,}).*", "g");
var pwd = document.getElementById("contrasena");
if (pwd.value.length==0) {
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

function toggle(i){

document.getElementById("excelente").style.display = "none";
document.getElementById("buena").style.display = "none";
document.getElementById("regular").style.display = "none";
document.getElementById("mala").style.display = "none";
switch(i) {

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
	<g:form name="formulario" controller="registrar" action="savePaso2">
		<div id="pantalla1" style="">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<div class="row">
						<div class="col-md-6">
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">CURP*:</p>
								</div>
								<div class="col-md-7">
									<input type="text" class="form-control texto_campo_principal"
										placeholder="" name="curp" id="curp" maxlength="18">
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Nombre(s)*:</p>
								</div>
								<div class="col-md-7">
									<input type="text" class="form-control texto_campo_principal"
										placeholder="" name="nombre" id="nombre" maxlength="30">
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Primer Apellido*:</p>
								</div>
								<div class="col-md-7">
									<input type="text" class="form-control texto_campo_principal"
										placeholder="" name="primer_apellido" id="primer_apellido"
										maxlength="30">
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Segundo Apellido*:</p>
								</div>
								<div class="col-md-7">
									<input type="text" class="form-control texto_campo_principal"
										placeholder="" name="segundo_apellido" id="segundo_apellido"
										maxlength="18">
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Fecha de Nacimiento*:</p>
								</div>
								<div class="col-md-7">
									<input type="date" class="form-control texto_campo_principal"
										placeholder="" id="fechanacimiento" name="fechanacimiento"
										class="form-control" value="1999-01-01">
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-lg-5">
									<p class="pull-right texto_normal">Idioma*:</p>
								</div>
								<div class="col-md-7">
									<select
										class="form-control input-sm texto_campo_principal espaciado_campo_principal"
										name="idioma" id="idioma">
										<option value="1">Español</option>
										<%/* <option value="2">Inglés</option>
                                                <option value="3">Otro</option> */%>
									</select>
									<p>
										<small><em>Todo el material que usted reciba
												estará en el idioma seleccionado.</em></small>
									</p>
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-lg-5">
									<p class="pull-right texto_normal">Género*:</p>
								</div>
								<div class="col-md-7">
									<select
										class="form-control input-sm texto_campo_principal espaciado_campo_principal"
										name="genero" id="genero">
										<option value="0">Masculino</option>
										<option value="1">Femenino</option>
									</select>
									<div class="col-md-2">
										<p class="pull-right">
											<small><em>* Campos Obligatorios</em></small>
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

		<div id="pantalla2" style="display: none;">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<p>&nbsp;</p>
					<h3>
						<strong>Paso 2. Creación de la Cuenta</strong>
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
							<!--  -->
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">País*:</p>
								</div>
								<div class="col-md-7">
									<!-- Aqui va pais -->
									<g:select
										class="form-control input-sm texto_campo_principal espaciado_campo_principal"
										name="pais" optionKey="id" optionValue="nombre"
										from="${todospaises}" id="pais" onchange='' />
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Estado*:</p>
								</div>
								<div class="col-md-7">
									<!-- Aqui va estado -->
									<g:select
										class="form-control input-sm texto_campo_principal espaciado_campo_principal"
										name="estado" optionKey="id" optionValue="nombre"
										from="${todosestados}" id="estado" />
								</div>
							</div>
							<!--  -->
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Ciudad*:</p>
								</div>
								<div class="col-md-7">
									<g:select class="form-control texto_campo_principal"
										name="ciudad" optionKey="id" optionValue="nombre"
										from="${todosciudades}" id="ciudad" />
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Código Postal*:</p>
								</div>
								<div class="col-md-7">
									<g:select class="form-control texto_campo_principal"
										name="codigopostal" optionKey="id" optionValue="codigo"
										from="${todoscodigospostales}" id="codigopostal" />
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Colonia*:</p>
								</div>
								<div class="col-md-7">
									<g:select class="form-control texto_campo_principal"
										name="colonia" optionKey="id" optionValue="nombre"
										from="${todoscolonias}" id="colonia" />
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Calle*:</p>
								</div>
								<div class="col-md-7">
									<input type="text" class="form-control texto_campo_principal"
										placeholder="" name="calle" id="calle">
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Número exterior*:</p>
								</div>
								<div class="col-md-3">
									<input type="text" class="form-control texto_campo_principal"
										placeholder="" name="mumeroexterior" id="mumeroexterior">
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Número interior:</p>
								</div>
								<div class="col-md-3">
									<input type="text" class="form-control texto_campo_principal"
										placeholder="" name="numerointerior" id="numerointerior">
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Manzana:</p>
								</div>
								<div class="col-md-7">
									<input type="text" class="form-control texto_campo_principal"
										placeholder="" name="manzana" id="manzana">
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Cruzamientos:</p>
								</div>
								<div class="col-md-7">
									<input type="text" class="form-control texto_campo_principal"
										placeholder="" name="cruzamientos" id="cruzamientos">
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Referencias:</p>
								</div>
								<div class="col-md-7">
									<textarea class="form-control" rows="4" name="referencias"
										id="referencias"></textarea>
								</div>
							</div>
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
						<strong>Paso 2. Creación de la Cuenta</strong>
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
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Teléfono de casa:</p>
								</div>
								<div class="col-md-5">
									<input type="text" class="form-control texto_campo_principal"
										placeholder="" name="telefonocasa" id="telefonocasa">
								</div>
								<div class="col-md-2"></div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Otro teléfono:</p>
								</div>
								<div class="col-md-5">
									<input type="text" class="form-control texto_campo_principal"
										placeholder="" name="telefono" id="telefono">
								</div>
								<div class="col-md-2"></div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Teléfono móvil:</p>
								</div>
								<div class="col-md-5">
									<input type="text" class="form-control texto_campo_principal"
										placeholder="" name="telefonomovil" id="telefonomovil">
								</div>
								<div class="col-md-2">
									<p class="pull-left">
										<small><em><a href="#">Solicitar clave</a> &nbsp;<img
												src="${request.contextPath}/images/iconografia/registro/clavecorrecta.png">
										</em></small>
									</p>
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Código de Verificación:</p>
								</div>
								<div class="col-md-5">
									<input type="text" class="form-control texto_campo_principal"
										placeholder="" name="codigoverificaciontelefono"
										id="codigoverificaciontelefono">
								</div>
								<div class="col-md-2"></div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Correo Electrónico:</p>
								</div>
								<div class="col-md-5">
									<input type="text" class="form-control texto_campo_principal"
										placeholder="" name="correroelectronico"
										id="correroelectronico">
								</div>
								<div class="col-md-2">
									<p class="pull-left">
										<small><em><a href="#">Solicitar clave</a> &nbsp;<img
												src="${request.contextPath}/images/iconografia/registro/claveincorrecta.png">
										</em></small>
									</p>
								</div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Código de Verificación:</p>
								</div>
								<div class="col-md-5">
									<input type="text" class="form-control texto_campo_principal"
										placeholder="" name="codigoverificacioncorreo"
										id="codigoverificacioncorreo">
								</div>
								<div class="col-md-2"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-2"></div>
			</div>
		</div>

		<div id="pantalla4" style="display: none;">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<p>&nbsp;</p>
					<h3>
						<strong>Paso 2. Creación de la Cuenta</strong>
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
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="txt_der texto_normal">Nombre de Usuario*:</p>
									<p class="txt_der">
										<small><em>Por favor elija un nombre de usuario
												fácil de <br>recordar y de por lo menos 6 caracteres.<br>Use
												sólo letras (a-z, A-Z), números (0-9) y guión bajo (_).<br>No
												utilice espacios.
										</em></small>
									</p>
									<p>&nbsp;</p>
								</div>
								<div class="col-md-5">
									<input type="text" class="form-control texto_campo_principal"
										placeholder="" name="nombreusuario" id="nombreusuario">
									<div class="reg_alineacion">
										<!-- En caso de ser correcto -->
										<div style="display: none;" id="correcto">
											<p>
												<font color="green">Disponible</font> <img
													src="${request.contextPath}/images/iconografia/registro/usuariodisponible.png" />
											</p>
										</div>

										<!-- En caso de ser incorrecto -->
										<div style="display: none;" id="incorrecto">
											<p>
												<font color="red">No disponible</font> <img
													src="${request.contextPath}/images/iconografia/registro/usuarionodisponible.png" />
											</p>
										</div>
									</div>
								</div>
								<div class="col-md-2"></div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="txt_der texto_normal">Contraseña*:</p>
									<p class="txt_der">
										<small><em>Por su seguridad la contraseña<br>debe
												contener al menos 6 caracteres,<br>una letra mayúscula
												y un número.
										</em></small>
									</p>
									<p>&nbsp;</p>
								</div>
								<div class="col-md-5">
									<input type="password"
										class="form-control texto_campo_principal" placeholder=""
										name="contrasena" id="contrasena" onkeyup="passwordChanged();">
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
								<div class="col-md-2"></div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="pull-right texto_normal">Confirmar contraseña:</p>
								</div>
								<div class="col-md-5">
									<input type="password"
										class="form-control texto_campo_principal" placeholder=""
										name="confirmarcontrasena" id="confirmarcontrasena">
								</div>
								<div class="col-md-2"></div>
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
					<h3>
						<strong>Paso 2. Creación de la Cuenta</strong>
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
							<div class="row altura_fila">
								<div class="col-md-5"></div>
								<div class="col-md-5">
									<h4>
										<strong>Co-aplicante</strong>
									</h4>
								</div>
								<div class="col-md-2"></div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="txt_der texto_normal">Nombre(s)*:</p>
								</div>
								<div class="col-md-5">
									<input type="text" class="form-control texto_campo_principal"
										placeholder="" name="conombre" id="conombre">
								</div>
								<div class="col-md-2"></div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="txt_der texto_normal">Primer Apellido*:</p>
								</div>
								<div class="col-md-5">
									<input type="text" class="form-control texto_campo_principal"
										placeholder="" name="coprimerapellido" id="coprimerapellido">
								</div>
								<div class="col-md-2"></div>
							</div>
							<div class="row altura_fila">
								<div class="col-md-5">
									<p class="txt_der texto_normal">Segundo Apellido*:</p>
								</div>
								<div class="col-md-5">
									<input type="text" class="form-control texto_campo_principal"
										placeholder="" name="cosegundoapellido" id="cosegundoapellido">
								</div>
								<div class="col-md-2"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-2"></div>
			</div>
		</div>
		<input type="hidden" value="" name="accion" id="accion" />
	</g:form>
	<script type="text/javascript">
		var paso = 2;
		var pantallas = 5;
	</script>

	<g:if test="${session.registro_cuenta!=null}">
		<script type="text/javascript">
		        
				document.getElementById("curp").value = "${session.registro_cuenta.curp}";
				document.getElementById("nombre").value = "${session.registro_cuenta.nombres}";
				document.getElementById("primer_apellido").value = "${session.registro_cuenta.primer_apellido}";
				document.getElementById("segundo_apellido").value = "${session.registro_cuenta.segundo_apellido}";
				
				<g:if test="${session.registro_cuenta.fecha_de_nacimiento!=null}">
				document.getElementById("fechanacimiento").value = "${new SimpleDateFormat("yyyy-MM-dd").format(session.registro_cuenta.fecha_de_nacimiento)}";
				</g:if>
				
				document.getElementById("idioma").value = '${session.registro_cuenta.idioma}';
				document.getElementById("genero").value = '${(session.registro_cuenta.genero)?1:0}';
				
				
				<g:if test="${session.registro_cuenta.pais!=null}">
				document.getElementById("pais").value = '${session.registro_cuenta.pais.id}';
                </g:if>
                <g:if test="${session.registro_cuenta.estado!=null}">
				//document.getElementById("estado").value = '${session.registro_cuenta.estado.id}';
                </g:if>
                <g:if test="${session.registro_cuenta.ciudad!=null}">
				document.getElementById("ciudad").value = '${session.registro_cuenta.ciudad.id}';
                </g:if>
                <g:if test="${session.registro_cuenta.codigo_postal!=null}">
				document.getElementById("codigopostal").value = '${session.registro_cuenta.codigo_postal.id}';
                </g:if>
                <g:if test="${session.registro_cuenta.colonia!=null}">
				document.getElementById("colonia").value = '${session.registro_cuenta.colonia.id}';
                </g:if>
				
				document.getElementById("calle").value = "${session.registro_cuenta.calle}";
				document.getElementById("mumeroexterior").value = "${session.registro_cuenta.numero_exterior}";
				document.getElementById("numerointerior").value = "${session.registro_cuenta.numero_interior}";
				document.getElementById("manzana").value = "${session.registro_cuenta.manzana}";
				document.getElementById("cruzamientos").value = "${session.registro_cuenta.cruzamientos}";
				document.getElementById("referencias").value = "${session.registro_cuenta.referencias}";

				document.getElementById("telefonocasa").value = "${session.registro_cuenta.telefono_casa}";
				document.getElementById("telefono").value = "${session.registro_cuenta.otro_telefono}";
				document.getElementById("telefonomovil").value = "${session.registro_cuenta.telefono_movil}";
				document.getElementById("codigoverificaciontelefono").value = "${session.registro_cuenta.codigo_verificacion1}";
				document.getElementById("correroelectronico").value = "${session.registro_cuenta.correo_electronico}";
				document.getElementById("codigoverificacioncorreo").value = "${session.registro_cuenta.codigo_verificacion2}";

				document.getElementById("nombreusuario").value = "${session.registro_cuenta.nombre_usuario}";

				document.getElementById("conombre").value = "${session.registro_cuenta.coaplicantenombre}";
				document.getElementById("coprimerapellido").value = "${session.registro_cuenta.coaplicanteprimerapellido}";
				document.getElementById("cosegundoapellido").value = "${session.registro_cuenta.coaplicantesegundoapellido}";
		</script>
	</g:if>
</body>
</html>