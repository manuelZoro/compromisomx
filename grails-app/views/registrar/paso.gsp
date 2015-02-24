<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>

<body>

	<g:if test="${session.registro_cuenta != null}">
		<label> Tipo: ${session.registro_cuenta.tipo}
		</label>
		<hr />

		<g:if test="${session.registro_cuenta.mentor != null}">
			<label> ${session.registro_cuenta.mentor.nombreCompleto}
			</label>
			<br />
			<label> ${session.registro_cuenta.mentor.nombre_usuario}
			</label>
			<hr />
		</g:if>

		<label> ${session.registro_cuenta.curp}
		</label>
		<br />
		<label> ${session.registro_cuenta.nombres}
		</label>
		<br />
		<label> ${session.registro_cuenta.primer_apellido}
		</label>
		<br />
		<label> ${session.registro_cuenta.segundo_apellido}
		</label>
		<br />
		<label> ${session.registro_cuenta.fecha_de_nacimiento}
		</label>
		<br />
		<label> ${session.registro_cuenta.idioma}
		</label>
		<br />
		<label>Género: ${(session.registro_cuenta.genero)?"Femenino":"Masculino"}
		</label>
		<hr />

		<g:if test="${session.registro_cuenta.pais != null}">
			<label> ${session.registro_cuenta.pais.nombre}
			</label>
			<br />
		</g:if>
		<g:if test="${session.registro_cuenta.estado != null}">
			<label> ${session.registro_cuenta.estado.nombre}
			</label>
			<br />
		</g:if>
		<g:if test="${session.registro_cuenta.ciudad != null}">
			<label> ${session.registro_cuenta.ciudad.nombre}
			</label>
			<br />
		</g:if>
		<g:if test="${session.registro_cuenta.codigo_postal != null}">
			<label> ${session.registro_cuenta.codigo_postal.codigo}
			</label>
			<br />
		</g:if>
		<g:if test="${session.registro_cuenta.colonia != null}">
			<label> ${session.registro_cuenta.colonia.nombre}
			</label>
			<br />
		</g:if>
		<label> ${session.registro_cuenta.calle}
		</label>
		<br />
		<label> ${session.registro_cuenta.numero_exterior}
		</label>
		<br />
		<label> ${session.registro_cuenta.numero_interior}
		</label>
		<br />
		<label> ${session.registro_cuenta.manzana}
		</label>
		<br />
		<label> ${session.registro_cuenta.cruzamientos}
		</label>
		<br />
		<label> ${session.registro_cuenta.referencias}
		</label>
		<hr />

		<label> ${session.registro_cuenta.telefono_casa}
		</label>
		<br />
		<label> ${session.registro_cuenta.otro_telefono}
		</label>
		<br />
		<label> ${session.registro_cuenta.telefono_movil}
		</label>
		<br />
		<label> ${session.registro_cuenta.codigo_verificacion1}
		</label>
		<br />
		<label> ${session.registro_cuenta.correo_electronico}
		</label>
		<br />
		<label> ${session.registro_cuenta.codigo_verificacion2}
		</label>
		<hr />

		<label> ${session.registro_cuenta.nombre_usuario}
		</label>
		<br />
		<label> ${session.registro_cuenta.password}
		</label>
		<hr />

		<label> ${session.registro_cuenta.coaplicantenombre}
		</label>
		<br />
		<label> ${session.registro_cuenta.coaplicanteprimerapellido}
		</label>
		<br />
		<label> ${session.registro_cuenta.coaplicantesegundoapellido}
		</label>
		<hr />

		<label> ${session.registro_cuenta.aceptaAcuerdo?"Acepta":"No acepta(valor no posible)"}
		</label>
		<br />
		<label> ${session.registro_cuenta.firmaDigital}
		</label>
		<hr />

		<label> Paquete elegido: ${session.registro_cuenta.paquete}
		</label>
		<hr />
		<g:if test="${session.registro_cuenta_aut != null}">
			<label> ${session.registro_cuenta_aut.autopagonombres}
			</label>
			<br />
			<label> ${session.registro_cuenta_aut.autopagoprimerapellido}
			</label>
			<br />
			<label> ${ session.registro_cuenta_aut.autopagosegundoapellido}
			</label>
			<br />
			<label> ${session.registro_cuenta_aut.autopagopais.nombre}
			</label>
			<br />
			<label> ${session.registro_cuenta_aut.autopagoestado.nombre}
			</label>
			<br />
			<label> ${session.registro_cuenta_aut.autopagociudad.nombre}
			</label>
			<br />
			<label> ${session.registro_cuenta_aut.autopagocodigopostal.codigo}
			</label>
			<br />
			<label> ${session.registro_cuenta_aut.autopagocolonia.nombre}
			</label>
			<br />
			<label> ${session.registro_cuenta_aut.autopagocalle}
			</label>
			<br />
			<label> ${session.registro_cuenta_aut.autopagonumeroexterior}
			</label>
			<br />
			<label> ${session.registro_cuenta_aut.autopagonumerointerior}
			</label>
			<br />
			<label> ${session.registro_cuenta_aut.autopagomanzana}
			</label>
			<br />
			<label> ${session.registro_cuenta_aut.autopagocruzamientos}
			</label>
			<br />
			<label> ${session.registro_cuenta_aut.autopagoreferencia}
			</label>
			<br />
			<label> ${session.registro_cuenta_aut.autopagocorreo}
			</label>
			<hr />

			<label> ${session.registro_cuenta_aut.autoformadeenvio}
			</label>
			<hr />

			<label> ${session.registro_cuenta_aut.autotipotarjetaformapago}
			</label>
			<br />
			<label> ${session.registro_cuenta_aut.autopagotipotarjeta}
			</label>
			<br />
			<label> ${session.registro_cuenta_aut.autopagotitulartarjeta}
			</label>
			<br />
			<label> ${session.registro_cuenta_aut.autopagonumerotarjeta}
			</label>
			<br />
			<label> ${session.registro_cuenta_aut.autopagoexpiracionmes}
			</label>
			<br />
			<label> ${session.registro_cuenta_aut.autopagoexpiracionano}
			</label>
			<br />
			<label> ${session.registro_cuenta_aut.autopagocodigoseguridad}
			</label>
			<hr />
			<%/*
			<label> ${session.registro_cuenta_aut.autopagodireccion1}
			</label>
			<br />
			<label> ${session.registro_cuenta_aut.autopagodireccion2}
			</label>
			<br />
			<label> ${session.registro_cuenta_aut.autopagopaist}
			</label>
			<br />
			<label> ${session.registro_cuenta_aut.autopagoestadot}
			</label>
			<br />
			<label> ${session.registro_cuenta_aut.autopagociudadt}
			</label>
			<br />
			<label> ${session.registro_cuenta_aut.autopagocodigopostalt}
			</label>
			<br />
			<label> ${session.registro_cuenta_aut.autopagotelefonot}
			</label>
			<hr />
			*/%>
		</g:if>

		<g:if test="${session.registro_cuenta_inf != null}">
			<g:if test="${session.registro_cuenta_inf.pasatiempo != null}">
				<label> ${session.registro_cuenta_inf.pasatiempo.pasatiempo}
				</label>
				<br />
			</g:if>
			<g:if test="${session.registro_cuenta_inf.profesion != null}">
				<label> ${session.registro_cuenta_inf.profesion.profesion}
				</label>
				<br />
			</g:if>
			<g:if test="${session.registro_cuenta_inf.otrasactividades != null}">
				<label> ${session.registro_cuenta_inf.otrasactividades.actividad}
				</label>
				<br />
			</g:if>
			<g:if test="${session.registro_cuenta_inf.ocupacion != null}">
				<label> ${session.registro_cuenta_inf.ocupacion.ocupacion}
				</label>
				<hr />
			</g:if>

			<g:if test="${session.registro_listaHijos != null}">
				<g:each in="${session.registro_listaHijos}" var="hijo">
					<label> ${hijo.fechaNacimiento}
					</label>
					<br />
					<label> ${hijo.genero}
					</label>
					<br />
				</g:each>
			</g:if>
			<hr />

			<label> ${session.registro_cuenta_inf.twitter}
			</label>
			<br />
			<label> ${session.registro_cuenta_inf.facetime}
			</label>
			<br />
			<label> ${session.registro_cuenta_inf.facebook}
			</label>
			<br />
			<label> ${session.registro_cuenta_inf.whatsapp}
			</label>
			<br />
			<label> ${session.registro_cuenta_inf.skype}
			</label>
			<hr />

			<label> ${session.registro_cuenta_inf.tallaPlayera}
			</label>
			<br />
			<label> ${session.registro_cuenta_inf.tallaCamisa}
			</label>
			<br />
			<label> ${session.registro_cuenta_inf.tallaZapato}
			</label>
			<hr />

			<label> ${session.registro_cuenta_inf.trabajo_inicio}
			</label>
			<br />
			<label> ${session.registro_cuenta_inf.trabajo_fin}
			</label>
			<br />
			<label> ${session.registro_cuenta_inf.libre_inicio}
			</label>
			<br />
			<label> ${session.registro_cuenta_inf.libre_fin}
			</label>
			<br />
			<label> ${session.registro_cuenta_inf.estadocivil}
			</label>
			<br />
			<label> ${session.registro_cuenta_inf.aniversario}
			</label>
			<hr />

		</g:if>

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

	</g:if>



</body>
</html>