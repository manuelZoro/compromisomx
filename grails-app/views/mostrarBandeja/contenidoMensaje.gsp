<%@page import="java.util.Date" %>
<%@page import="compromisomx.Cuenta"%>
<%@page import="compromisomx.Carpetas"%>
<!DOCTYPE html>
<html>
	<head>
		<title>${mensaje.asunto}</title>
		<!-- Bootstrap -->
        <link href="${request.contextPath}/css/estiloBandeja/bootstrap.css" rel="stylesheet">
        <link href="${request.contextPath}/css/estiloBandeja/navbar.css" rel="stylesheet">
        <link href="${request.contextPath}/css/estiloBandeja/estilos.css" rel="stylesheet">
        <link href="${request.contextPath}/css/estiloBandeja/piepag.css" rel="stylesheet">
        <link href="${request.contextPath}/css/estiloBandeja/botones.css" rel="stylesheet">
        <link href="${request.contextPath}/css/estiloBandeja/carrusel.css" rel="stylesheet">
        <link href="${request.contextPath}/css/estiloBandeja\calendario_agenda.css" rel="stylesheet" type="text/css" media="all" />
        <link href="${request.contextPath}/css/estiloBandeja/mensajes.css" rel="stylesheet">
        <link href="${request.contextPath}/css/estiloBandeja/mensajeria.css" rel="stylesheet">
        <link href="${request.contextPath}/css/estiloBandeja/organizacion.css" rel="stylesheet">
        <script src="${request.contextPath}/js/jquery-1.9.1.min.js" type="text/javascript"></script>
		<script src="${request.contextPath}/js/bootstrap.min.js"></script>
		<script type="text/javascript">
			function cambiarImportancia_cm(id, carpeta) {
				var valor = document.getElementById("relevanteInput").value;
				var idCarpeta = carpeta;
				if(valor == "false"){
					document.getElementById("relevanteInput").value = "true";
				    $("#btnAlerta").prop('title', 'Marcar este mensaje como importante');
				    $("#btnAlerta").removeClass("msj_btn_alerta");
				    $("#btnAlerta").addClass("btn_msjalerta");
				    window.open("/compromisomx/MostrarBandeja/cambiarPrioridad?id="+id+"&idCarpeta="+idCarpeta+"&tipo="+'${tipo}'+"&orden="+'${orden}'+"&max=50&offset="+${offset},"_self");
				}else{
					document.getElementById("relevanteInput").value = "false";
					$("#imgR").prop('title', 'Marcar este mensaje como irrelevante');
					$("#btnAlerta").removeClass("btn_msjalerta");
				    $("#btnAlerta").addClass("msj_btn_alerta");
				    window.open("/compromisomx/MostrarBandeja/cambiarPrioridad?id="+id+"&idCarpeta="+idCarpeta+"&tipo="+'${tipo}'+"&orden="+'${orden}'+"&max=50&offset="+${offset},"_self");
				}
				
				$("#contenido_mensaje").show();
				$("#lista_mensajes").hide();
				$("#contenido_mensaje").load("/compromisomx/MostrarBandeja/contenidoMensaje?idMensaje="+id);
				$("#btnEliminar_mensaje").show();
				$("#desplegador_marcarcomo").show();
				$("#btn_responder").show(); 
				$("#div_mostrarTodo").hide(); 
				$("#desplegador_mostrar").hide();
				$("#div_ckecador").hide();
			}
		</script>
	</head>
	<body>
		<!-- Comienza Correo -->
			<div class="contenedor_correo" id="contenido_mensaje">
				<div class="row">
		            <div class="row">
		                <div class="info_correo">
		                    <div class="col-md-12">
		                        <h2 style="display: inline-block;"><strong>${mensaje.asunto}</strong></h2> <label style="display: inline-block;  background-color: lightgray; padding: 7px; text-align: center;">${mensaje.carpeta.nombre.toString()}</label>
		                    	<g:if test="${mensaje.relevante == false }">
                                	<div class="col_mensajes_2_g" style="float: right; margin-top: 20px;"><div class="msj_btn_alerta" title="Marcar este mensaje como importante" onclick="cambiarImportancia_cm('${mensaje.id}', '${mensaje.carpeta.id}')" id="btnAlerta"></div></div>
                                	<input type="hidden" id="relevanteInput" value="${mensaje.relevante.toString()}">
                                </g:if>
                                <g:else>
                                	<div class="col_mensajes_2_g" style="float: right; margin-top: 20px;"><div class="btn_msjalerta" title="Marcar este mensaje como irrelevante" onclick="cambiarImportancia_cm('${mensaje.id}', '${mensaje.carpeta.id}')" id="btnAlerta"></div></div>
                                	<input type="hidden" id="relevanteInput" value="${mensaje.relevante.toString()}">
                                </g:else>
                                <hr>
		                    </div>
		                    <div class="col-md-5">
		                        <div class="col-md-2"><img src="${request.contextPath}/images/iconografia/datosusuario/imagen_usuario_48.png" class="img_emprendedor"></div>
		                        <div class="col-md-10">
		                            <strong><small>${mensaje.remitente}</small></strong><br>
		                            <small>Categoría Platino</small><img src="${request.contextPath}/images/iconografia/categorias/Normal/Bronce_16.png">
		                            <div class="datos_emprendedor_mensaje">Faltan 10 días para el reembolso.</div>
		                        </div>
		                    </div>
		                    <div class="col-lg-7" style=" text-align: right;">
		                    	${mensaje.hora} ( ${fechaMensaje} )
		                    </div>
		                </div>
		             </div>
		             <div class="row">
		                 <div class="cuerpo_correo">
		                    <div class="row">
		                        <div class="col-md-12">
		                        	<p> ${mensaje.cuerpo.encodeAsRaw()} </p>
		                        </div>
		                    </div>
		                 </div>
		             </div>
		             <input type="hidden" value="${mensaje.id}" id="mensaje_eliminar_id" >
		             <input type="hidden" value="${mensaje.asunto}" id="mensaje_asunto_" >
		             <input type="hidden" value="${Cuenta.findByNombreCompleto(mensaje.remitente.toString()).id}" id="id_remitente" >
		             <script src="${request.contextPath}/js/bootstrap.min.js"></script>
		        </div>
			</div>
			<!-- Termina Correo -->	
		
	</body>
</html>