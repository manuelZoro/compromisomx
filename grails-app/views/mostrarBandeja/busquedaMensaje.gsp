<!DOCTYPE html>
<html>
<head>
<!-- Bootstrap -->
<link href="${request.contextPath}/css/estiloBandeja/bootstrap.css"
	rel="stylesheet">
<link href="${request.contextPath}/css/estiloBandeja/navbar.css"
	rel="stylesheet">
<link href="${request.contextPath}/css/estiloBandeja/estilos.css"
	rel="stylesheet">
<link href="${request.contextPath}/css/estiloBandeja/piepag.css"
	rel="stylesheet">
<link href="${request.contextPath}/css/estiloBandeja/botones.css"
	rel="stylesheet">
<link href="${request.contextPath}/css/estiloBandeja/carrusel.css"
	rel="stylesheet">
<link
	href="${request.contextPath}/css/estiloBandeja\calendario_agenda.css"
	rel="stylesheet" type="text/css" media="all" />
<link href="${request.contextPath}/css/estiloBandeja/mensajes.css"
	rel="stylesheet">
<link href="${request.contextPath}/css/estiloBandeja/mensajeria.css"
	rel="stylesheet">
<link href="${request.contextPath}/css/estiloBandeja/organizacion.css"
	rel="stylesheet">

<script src="${request.contextPath}/js/jquery-1.9.1.min.js"
	type="text/javascript"></script>
<script src="${request.contextPath}/js/bootstrap.min.js"></script>

<script type="text/javascript">
	function busqueda2(offset){
		var cadena = '${query}';
		if(cadena == "") {
	    }
		else {
			$("#lista_mensajes").hide();
			$("#div_paginacion").hide();
			$("#contenido_mensaje").show();
			$("#despliega_mostrar").hide();
			$("#despliega_movera").hide();
			$("#despliega_organizar").hide();
			$("#contenido_mensaje").load("/compromisomx/MostrarBandeja/busquedaMensaje?cad="+cadena+"&offset="+offset+"&max=5");
		}
	}

</script>
</head>
<body>
	<!-- Comienza Listado de Mensajes -->

	<div class="contenedor_mensajes tabla_buscador_1" id="busqueda">
		<g:if test="${total2 == 0}">
			<!-- Comienza aviso de sin resultados de búsqueda -->
			<div class="row fila_mensaje_correo msj_nuevo">
				<div class="col-md-12 mensaje_busqueda">No hay algun mensaje
					que coincida con su búsqueda.</div>
			</div>
			<!--  Termina aviso de sin resultados de búsqueda -->
		</g:if>
		<g:else>
			<!-- Comienza fila de correo -->
			<g:each in="${lista2}" var="bandeja" status="i">
				<g:if test="${bandeja.status == false}">
                	<div class="row fila_mensaje_correo msj_nuevo"  id="correo${i}">
                </g:if>
                <g:else>
                	<div class="row fila_mensaje_correo msj_leido"  id="correo${i}">
                </g:else>
					<div class="col-md-12">
						<div class="col_mensajes_2_a">
							<label><input id="check${i}" name="${bandeja.id}"
								type="checkbox" onclick="marcar2(this, ${i}, ${bandeja.id}); anadirLista(${bandeja.status.toString()}, ${bandeja.relevante.toString()}, this)" /></label>
						</div>
						<g:if test="${bandeja.status == false }">
							<div class="col_mensajes_2_b"
								onclick="mostrarMensaje('${bandeja.id}')">
								<img id="estado_mensaje"
									src="${request.contextPath}/images/iconografia/agenda/bullet_rosa.png">
							</div>
						</g:if>
						<g:else>
							<div class="col_mensajes_2_b"
								onclick="mostrarMensaje('${bandeja.id}')">
								<img id="estado_mensaje"
									src="${request.contextPath}/images/iconografia/agenda/bullet_gris.png">
							</div>
						</g:else>
						<g:if test="${bandeja.remitente.length()>17}">
							<g:if test="${bandeja.carpeta.id == 2 }">
								<div class="col_mensajes_2_c"
									onclick="mostrarMensaje('${bandeja.id}')">
									<a href="#">
										${bandeja.destinatario.substring(0, 14)}...
									</a>
								</div>
							</g:if>
							<g:else>
								<div class="col_mensajes_2_c"
									onclick="mostrarMensaje('${bandeja.id}')">
									<a href="#">
										${bandeja.remitente.substring(0, 14)}...
									</a>
								</div>
							</g:else>
						</g:if>
						<g:else>
							<g:if test="${bandeja.carpeta.id == 2 }">
								<div class="col_mensajes_2_c"
									onclick="mostrarMensaje('${bandeja.id}')">
									<a href="#">
										${bandeja.destinatario.substring(0, 14)}...
									</a>
								</div>
							</g:if>
							<g:else>
								<div class="col_mensajes_2_c"
									onclick="mostrarMensaje('${bandeja.id}')">
									<a href="#">
										${bandeja.remitente.substring(0, 14)}...
									</a>
								</div>
							</g:else>
						</g:else>
						<div class="col_mensajes_2_d"
							onclick="mostrarMensaje('${bandeja.id}')">
							<div class="msj_prev_asunto">
								${bandeja.asunto}
							</div>
							<g:if
								test="${(bandeja.asunto.length() + bandeja.cuerpo.replaceAll('\\<.*?\\>', '').length()) < 50}">
								<div class="msj_prev_contenido">
									&nbsp; &lt;${bandeja.cuerpo.replaceAll('\\<.*?\\>', '');}&gt;
								</div>
							</g:if>
							<g:else>
								<div class="msj_prev_contenido">
									&nbsp; &lt;${bandeja.cuerpo.replaceAll('\\<.*?\\>', '').substring(0, (50 - bandeja.asunto.length()-4))}&gt;
								</div>
							</g:else>
						</div>
						<div class="col_mensajes_2_e"
							onclick="mostrarMensaje('${bandeja.id}')">
							${bandeja.fecha}
						</div>
						<div class="col_mensajes_2_f">&nbsp;</div>
						<g:if test="${bandeja.relevante == false }">
							<div class="col_mensajes_2_g">
								<div class="msj_btn_alerta"
									title="Marcar este mensaje como importante"
									onclick="cambiarImportancia('${bandeja.id}', '${bandeja.carpeta.id}')"
									id="btnAlerta"></div>
							</div>
							<input type="hidden" id="relevanteInput"
								value="${bandeja.relevante.toString()}">
						</g:if>
						<g:else>
							<div class="col_mensajes_2_g">
								<div class="msj_btn_relevante"
									title="Marcar este mensaje como irrelevante"
									onclick="cambiarImportancia('${bandeja.id}', '${bandeja.carpeta.id}')"
									id="btnAlerta"></div>
							</div>
							<input type="hidden" id="relevanteInput"
								value="${bandeja.relevante.toString()}">
						</g:else>
						<g:if test="${bandeja.status == false }">
							<div class="col_mensajes_2_h"> 
								<div class="msj_btn_mensaje" id="div_marcar_como"
									title="Marcar este mensaje como leído"
									onclick="marcarComo('${bandeja.id}', '${bandeja.carpeta.id}')"></div>
							</div>
						</g:if>
						<g:else>
							<div class="col_mensajes_2_h">
								<div class="msj_btn_mensaje" id="div_marcar_como"
									title="Marcar este mensaje como no leído"
									onclick="marcarComo('${bandeja.id}', '${bandeja.carpeta.id}')"></div>
							</div>
						</g:else>
						<div class="col_mensajes_2_i">
							<a class="msj_btn_borrar"
								href="/compromisomx/MostrarBandejaAdmin/moverPapelera/${bandeja.id}"
								title="Eliminar este
	mensaje"></a>
						</div>
					</div>
				</div>
			</g:each>
		</g:else>
		<!-- Termina fila de correo -->
	</div>
	<!-- Termina Listado de Mensajes -->
	</div>
	
	 <!-- Comienza paginación -->
                    <div class="row" id="div_paginacion">
                    	<div class="col-md-9"></div>
                        <div class="col-md-3">
                        	<g:if test="${paginas == 1 || paginas == 0}">
                        	</g:if>
                        	<g:else>
                        		<div class="row altura_fila">
	                            	<div class="col-md-6"><p class="pull-right indicador_paginacion">Página ${(Integer.parseInt(num.toString()) / 5.0) + 1} de ${paginas}</p></div>
		                            	
		                            		<g:if test="${num == 0}">
			                            		<div class="pager_primero_inactivo" title="Primera página"></div>
			                                	<div class="pager_anterior_inactivo" title="Página anterior" id="pag_izq"></div>
			                                </g:if>
			                                <g:else>
			                                	<div class="pager_primero" onclick="busqueda2(0)" title="Primera página"></div>
			                                	<div class="pager_anterior" onclick="busqueda2(${num - 5})" title="Página anterior" id="pag_izq"></div>
			                                </g:else>
			                                <g:if test="${(Integer.parseInt(total2.toString()) - Integer.parseInt(num.toString())) <=  5 }">
			                                	<div class="pager_siguiente_inactivo" title="Página siguiente"></div>
			                                	<div class="pager_ultimo_inactivo" title="Última página" id="pag_der"></div>
			                                </g:if>
			                                <g:else>
			                                	<div class="pager_siguiente" onclick="busqueda2(${num + 5})" title="Página siguiente" id="pag_der"></div>
			                                	<div class="pager_ultimo" title="Última página" onclick="busqueda2(${(paginas -1) * 5})"></div>
			                                </g:else>
	                            </div>
                        	</g:else>
                        </div>
                    </div>
     <!-- Termina paginación -->
	</div>
</body>
</html>