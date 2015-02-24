<%@page import="java.util.Date" %>

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
	</head>
	<body>
		<!-- Comienza Correo -->
			<div class="contenedor_correo" id="contenido_mensaje">
				<div class="row">
		            <div class="row">
		                <div class="info_correo">
		                    <div class="col-md-12">
		                        <h2><strong>${mensaje.asunto}</strong></h2>
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
		             <script src="${request.contextPath}/js/bootstrap.min.js"></script>
		        </div>
			</div>
			<!-- Termina Correo -->	
		
	</body>
</html>