<%@page import="java.lang.Integer"%>
<%@page import="compromisomx.Carpetas"%>
<%@page import="compromisomx.Cuenta"%>
<%@page import="compromisomx.Bandeja"%>
<%@page  import="grails.converters.JSON" %>

<!DOCTYPE html>
<html lang="en">
  	<head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Compromiso MX</title>
        
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

        function borrar(confirmacion) {
    		var carpeta = ${carpeta.id};
    		if(carpeta == 2){
    			if(confirmacion)
    				window.open("/compromisomx/MostrarBandejaAdmin/eliminarMensajes?lista="+listaId.toString()+"&idCarpeta="+carpeta,"_self");
    			else
    				$("#eliminarVarios").show();
    		} else {
    			if(listaId.length > 0)
    				window.open("/compromisomx/MostrarBandejaAdmin/eliminarMensajes?lista="+listaId.toString()+"&idCarpeta="+carpeta,"_self");
    		}
    	}

        function mover(id) {
    		window.open("/compromisomx/MostrarBandejaAdmin/moverMensajes?lista="+listaId.toString()+"&idCarpeta="+id,"_self");
    	}
        	
        function marcarComo2(confirmacion) {
    		var carpeta = ${carpeta.id};
    		if(carpeta == 2){
    			if(confirmacion)
    				window.open("/compromisomx/MostrarBandejaAdmin/marcarComo?lista="+listaId.toString()+"&idCarpeta="+carpeta,"_self");
    			else
    				$("#eliminarVarios").show();
    		} else {
    			if(listaId.length > 0)
    				window.open("/compromisomx/MostrarBandejaAdmin/marcarComo?lista="+listaId.toString()+"&idCarpeta="+carpeta,"_self");
    		}
    	}

        function first() {
    		var n = "/compromisomx/MostrarBandejaAdmin/index/"+${carpeta.id}+"?max=5&offset=0&tipo="+'${tipoOrdenacion}'+"&orden="+'${modo}';
    		window.open(n,"_self");
    	}
    	
    	function last() {
    		var n = "/compromisomx/MostrarBandejaAdmin/index/"+${carpeta.id}+"?max=5&offset="+ parseInt(${(paginas - 1) * 5}) +"&tipo="+'${tipoOrdenacion}'+"&orden="+'${modo}';
    		window.open(n,"_self");
    	}
    	
    	function marcarLeidos(){
    		var carpeta = ${carpeta.id};
    		if(listaId.length > 0)
    			window.open("/compromisomx/MostrarBandejaAdmin/marcarMensajes?lista="+listaId.toString()+"&idCarpeta="+carpeta,"_self")
    	}

    	function marcarComo(id, carpeta) {		
    		window.open("/compromisomx/MostrarBandejaAdmin/marcarComo/"+id+"?carpeta="+carpeta, "_self");
    	}

    	function next_page() {
    		var n = "/compromisomx/MostrarBandejaAdmin/index/"+${carpeta.id}+"?max=5&offset="+ (parseInt(${num}) + parseInt("5"));
    		window.open(n,"_self");
    	}
    	function prev_page() {
    		var n = "/compromisomx/MostrarBandejaAdmin/index/"+${carpeta.id}+"?max=5&offset="+ (parseInt(${num}) - parseInt("5"));		
    		window.open(n,"_self");
    	}

    	function marcar2(obj, ides, idMensaje) {
    		var identi;
    		identi =  "#correo"+ides;
    		if (obj.checked){
    			listaId.unshift(idMensaje);
    		$(document).ready(function() {
    			$("#btnEliminar").show();
    			$("#desplegador_movera").show();
    			$("#desplegador_marcarcomo").show();
    			$(identi).addClass("row fila_correo_seleccionado msj_nuevo");
    			});
    		if(listaId.length == 5) {
    			document.getElementById('checador').checked = true;
    			}
    		}
    		else{
    			listaId.splice(listaId.indexOf(idMensaje.toString()), 1);
    			$(document).ready(function() {
    				$(identi).removeClass("row fila_correo_seleccionado msj_nuevo");
    				$(identi).addClass("row fila_mensaje_correo msj_nuevo");
    				});
    			if(listaId.length==0 || listaId.toString() == ",,,,") {
    				document.getElementById('checador').checked = false;
    			$(document).ready(function() {
    				$("#btnEliminar").hide();
    				$("#desplegador_movera").hide();
    				$("#desplegador_marcarcomo").hide();
    				$("#despliega_mostrar").hide();
    				$("#despliega_marcarcomo").hide();
    				$("#despliega_movera").hide();
    				});
    			}
    		}
    	}
    	function marcarColor() {
    		check = document.getElementById('checador');
    		filas = document.getElementsByTagName('div');
    		var ide;
    		
    		for (i = 0; i < filas.length; i++) {
    			ide = "#correo"+(i-1);

    				if (check.checked == true) {
    	
    					$(document).ready(function() {
    						$(ide).addClass("row fila_correo_seleccionado msj_nuevo");
    						});
    				}
    				else{
    					$(document).ready(function() {
    					$(ide).removeClass("row fila_correo_seleccionado msj_nuevo");
    					$(ide).addClass("row fila_mensaje_correo msj_nuevo");
    					});
    				}	
    		}
    	}

    	function marcar_2(source) {
    		var estado;
    		var importancia;
    		var listaStatus = '${lista.status.toString()}';
    		var listaRelevante = '${lista.relevante.toString()}';
    		listaStatus = listaStatus.substring(1, listaStatus.length -1);
    		listaRelevante = listaRelevante.substring(1, listaRelevante.length -1);
    		
    		if(source.checked) {			
    			for(i = 0; i < listaStatus.split(", ").length; i++) {

    				if(listaStatus.split(", ")[i] == "false")
    					estado = "No Leido";
    				else
    					estado = "Leido";
    					
    				//alert("Estado: " + estado + ":" + (listaStatus.split(", ")[i] == "false"));
    				
    				if(listaRelevante.split(", ")[i] == "false")
    					importancia = "No Importante";
    				else
    					importancia = "Importante";

    				if(listaMarcados.indexOf(estado) == parseInt(-1))
    					listaMarcados.unshift(estado);
    				
    				if(listaMarcados.indexOf(importancia) == parseInt(-1))
    					listaMarcados.unshift(importancia);
    			}
    		} else {
    			listaMarcados = [];
    		}

    		if(listaMarcados.indexOf("No Importante") != parseInt(-1))
    			$("#div_importante").show();
    		else
    			$("#div_importante").hide();
    		
    		if(listaMarcados.indexOf("Importante") != parseInt(-1))
    			$("#div_no_importante").show();
    		else
    			$("#div_no_importante").hide();
    		
    		if(listaMarcados.indexOf("No Leido") != parseInt(-1))
    			$("#div_leido").show();
    		else
    			$("#div_leido").hide();
    			
    		if(listaMarcados.indexOf("Leido") != parseInt(-1))
    			$("#div_no_leido").show();
    		else
    			$("#div_no_leido").hide();
    	}

    	function marcar(source) {
    		var id;
    		var name;
    		if(source.checked==true) {
    			$(document).ready(function() {
    				$("#btnEliminar").show();
    				$("#desplegador_movera").show();
    				$("#desplegador_marcarcomo").show();
    				});
    			listaId.length = 5;
    			checkboxes = document.getElementsByTagName('input');

    			for (i = 0; i < checkboxes.length; i++) {
    	
    				if (checkboxes[i].type == "checkbox" && checkboxes[i].id != "no") {
    					checkboxes[i].checked = source.checked;
    					id = "#"+checkboxes[i].id;
    					name =  $(id).attr('name');
    						if(name != null)
    							listaId.unshift(name);
    				}
    			}
    		}
    		else {
    			$(document).ready(function() {
    				$("#btnEliminar").hide();
    				$("#desplegador_movera").hide();
    				$("#desplegador_marcarcomo").hide();
    				$("#despliega_mostrar").hide();
    				$("#despliega_marcarcomo").hide();
    				$("#despliega_movera").hide();
    				});
    			listaId = [];
    			checkboxes = document.getElementsByTagName('input');

    			for (i = 0; i < checkboxes.length; i++) {

    				if (checkboxes[i].type == "checkbox") {
    					checkboxes[i].checked = source.checked;
    				}
    			}	
    		}
    	}
    	var listaMarcados = [];
    	var v = false;
    	var abierta;
    	var listaId = [];
    	$(document).ready(function(){
    		v = false;
    	});

    	function anadirLista(status, relevante, source){
    		var estado;
    		var importancia;
    		
    		if(status)
    			estado = "Leido";
    		else
    			estado = "No Leido";

    		if(relevante)
    			importancia = "Importante";
    		else
    			importancia = "No Importante";

    		if(source.checked) {
    			if(listaMarcados.indexOf(estado) == -1)
    				listaMarcados.unshift(estado);

    			if(listaMarcados.indexOf(importancia) == -1)
    				listaMarcados.unshift(importancia);
    		} else {
    			if(listaMarcados.indexOf(estado) != -1)
    				listaMarcados.splice(listaMarcados.indexOf(estado), 1);

    			if(listaMarcados.indexOf(importancia) != -1)
    				listaMarcados.splice(listaMarcados.indexOf(importancia), 1);
    		}
    	
    		if(listaMarcados.indexOf("No Importante") != -1)
    			$("#div_importante").show();
    		else
    			$("#div_importante").hide();
    		
    		if(listaMarcados.indexOf("Importante") != -1)
    			$("#div_no_importante").show();
    		else
    			$("#div_no_importante").hide();
    			
    		if(listaMarcados.indexOf("No Leido") != -1)
    			$("#div_leido").show();
    		else
    			$("#div_leido").hide();
    			
    		if(listaMarcados.indexOf("Leido") != -1)
    			$("#div_no_leido").show();
    		else
    			$("#div_no_leido").hide();

    	}

    	$(document).ready(function(){
    		  $("#desplegador_organizar").click(function(){
    		    $("#despliega_organizar").slideToggle("fast");
    			  $("#despliega_mostrar").hide();
    			  $("#despliega_marcarcomo").hide();
    			  $("#despliega_movera").hide();
    		  });	
    		  $("#desplegador_mostrar").click(function(){
    			  $("#despliega_mostrar").slideToggle("fast");
    			  $("#despliega_movera").hide();
    			  $("#despliega_marcarcomo").hide();
    			  $("#despliega_organizar").hide();
    		  });
    		  $("#desplegador_movera").click(function(){
    			  $("#despliega_movera").slideToggle("fast");
    			  $("#despliega_mostrar").hide();
    			  $("#despliega_marcarcomo").hide();
    			  $("#despliega_organizar").hide();
    		  });
    		  $("#desplegador_marcarcomo").click(function(){
    			  $("#despliega_marcarcomo").slideToggle("fast");
    			  $("#despliega_mostrar").hide();
    			  $("#despliega_movera").hide();
    			  $("#despliega_organizar").hide();
    		  });
    		  $("#desplegador_movera_opcion").click(function(){
    			  $("#despliega_movera_opcion").slideToggle("fast");
    		  });
    		  $("#desplegador_carpetas").click(function(){
    			  $("#despliega_carpetas").slideToggle("fast");
    			  $("#img_carpetas").attr("src","${request.contextPath}/images/iconografia/agenda/bullet_rosa_arriba.png");
    		  });
    		  $("#desplegador_nueva_carpeta").click(function(){
    			  $("#despliega_nueva_carpeta").slideToggle("fast");			  
    			  $("#img_contacto").attr("src","${request.contextPath}/images/iconografia/agenda/bullet_rosa_arriba.png");
    		  });
    	});
    	
    	function mostrarOpciones() {
    		if(!v){
    			$("#nuevaCarpeta").show();
    			v = true;
    		}else{
    			$("#nuevaCarpeta").hide();
    			v = false;
    		}
    	}

    	function mostrarOpEliminar(id) {
    		var imagen = "#"+id;
    		$(imagen).show();
    	}

    	function ocultarImagen(id) {
    		var imagen = "#"+id;
    		$(imagen).hide();
    	}

    	function ocultarMensaje() {
    		$("#mensajeEliminar").hide();
    	}

    	function ordenar(carpeta, tipo, orden) {
    		window.open("/compromisomx/MostrarBandejaAdmin/index/"+carpeta+"?tipo="+tipo+"&orden="+orden, "_self");
    	}

    	function cambiarNombre(id, i, nombre){		
    		if(${ab} && (id == ${carpeta.id})){
    			var id1 = "#"+i;
    			var id2 = "#div"+i;
    			$(id1).hide();
    			$(id2).show();
    			document.getElementById("nombreModificado"+i).value = nombre;
    		}else{
    			window.open("/compromisomx/MostrarBandejaAdmin/index/" + id +"?offset=0&max=5&abierta=true", "_self");
    			abierta = true;
    		}
    	}

    	function mostrar_infromacion_contacto(id) {
    		var div = "#"+id;
    		$(div).show();
    	}

    	function ocultar_informacion(id) {
    		var div = "#"+id;
    		$(div).hide();
    	}

    	function crearCarpeta2(){
    		var nombreCarpeta = document.getElementById("nombreCarpeta2").value.toLowerCase();
    		var lista = '${listaCarpetas}';
    		lista = lista.substring(1, lista.length -1).toLowerCase();
    		
    		//for (i = 0; i < lista.split(",").length; i++) { 
    			if(lista.split(", ").indexOf(nombreCarpeta) != -1) {
    				$("#mensaje_carpeta").show();
    				//break;
    			} else {
    				var idUsuario = ${cuenta.id.toString()};
    				$("#mensaje_carpeta").hide();
    				window.open("/compromisomx/MostrarBandejaAdmin/guardarCarpeta?nombreCarpeta="+nombreCarpeta+"&cuentaId="+idUsuario, "_self");
    				//break;
    			}
    		//}
    	}
    	
    	function crearCarpeta(){
    		var nombreCarpeta = document.getElementById("nombreCarpeta").value.toLowerCase();
    		var lista = '${listaCarpetas}';
    		lista = lista.substring(1, lista.length -1).toLowerCase();
    		
    		//for (i = 0; i < lista.split(",").length; i++) { 
    			if(lista.split(", ").indexOf(nombreCarpeta) != -1) {
    				$("#mensaje_carpeta").show();
    				//break;
    			} else {
    				var idUsuario = ${cuenta.id.toString()};
    				$("#mensaje_carpeta").hide();
    				window.open("/compromisomx/MostrarBandejaAdmin/guardarCarpeta?nombreCarpeta="+nombreCarpeta+"&cuentaId="+idUsuario, "_self");
    				//break;
    			}
    		//}
    	}
    	function cambiarImportancia(id) {
    		var valor = document.getElementById("relevanteInput").value;
    		var idMensaje = id;
    		if(valor == "false"){
    			document.getElementById("relevanteInput").value = "true";
    		    $("#btnAlerta").prop('title', 'Relevante');
    		    $("#btnAlerta").removeClass("msj_btn_alerta");
    		    $("#btnAlerta").addClass("msj_btn_relevante");
    		    window.open("/compromisomx/MostrarBandejaAdmin/cambiarPrioridad?id="+id+"&idMensaje="+idMensaje,"_self");
    		}else{
    			document.getElementById("relevanteInput").value = "false";
    			$("#imgR").prop('title', 'irrelevante');
    			$("#btnAlerta").removeClass("msj_btn_relevante");
    		    $("#btnAlerta").addClass("msj_btn_alerta");
    		    window.open("/compromisomx/MostrarBandejaAdmin/cambiarPrioridad?id="+id+"&idMensaje="+idMensaje,"_self");
    		}
    	}

    	function marcarMensajesComo(valor) {
    		window.open("/compromisomx/MostrarBandejaAdmin/marcarMensajesComo?lista="+listaId.toString()+"&idCarpeta="+${carpeta.id}+"&val="+valor, "_self");
    	}

    	function mostrarMensaje(id){
    		$("#contenido_mensaje").show();
    		$("#lista_mensajes").hide();
    		$("#contenido_mensaje").load("/compromisomx/MostrarBandejaAdmin/contenidoMensaje?idMensaje="+id);
    	}
    	function filtrarMensaje(i, carpeta){
    		$("#lista_mensajes").hide();
    		$("#div_paginacion").hide();
    		$("#despliega_mostrar").hide();
    		$("#despliega_movera").hide();
    		$("#despliega_organizar").hide();
    		$("#contenido_mensaje").load("/compromisomx/MostrarBandejaAdmin/filtroMensaje?nums="+i+"&carpeta="+carpeta+"&offset=0&max=5");
    		$("#contenido_mensaje").show();
    	}

    	
    	function busqueda(){
        	var cadena = document.getElementById('texto').value;
        	cadena = cadena.replace(" ","_");
        
        	if(cadena == ""){
        	}
        	else {
    		$("#lista_mensajes").hide();
    		$("#contenido_mensaje").show();
			$("#despliega_mostrar").hide();
			$("#despliega_movera").hide();
			$("#despliega_organizar").hide();
			
			var cade = "/compromisomx/MostrarBandejaAdmin/busquedaMensaje?cad="+cadena+"&offset=0&max=5";
			
    		$("#contenido_mensaje").load(cade);
    		}
    		document.getElementById('texto').value = "";
    	}

    	function eliminarCarpeta(nombre) {
    		$("#mensajeEliminar").show();
    		var label = "Está seguro de eliminar la carpeta '" +  nombre + "'? (todos los mensajes que contiene se enviarán a la papelera)'";
    		document.getElementById("lblEliminar").innerHTML = label;
    		document.getElementById("entradaCarpeta").value = nombre;
    	}
    	
    function eliminarCarpeta_2() {
		var carpeta = document.getElementById("entradaCarpeta").value;
		window.open("/compromisomx/MostrarBandejaAdmin/eliminarCarpeta?carpeta="+carpeta, "_self");
	}

	function modificarNombre(id, i, carpeta) {
		var nombre = document.getElementById("nombreModificado"+i).value;
		var nombreCarpeta = document.getElementById("carpeta"+i).value;

		if(nombre != "" && nombre != null ){
			if(nombre.length <= 30)
				window.open("/compromisomx/MostrarBandejaAdmin/cambiarNombreCarpeta?nombreModificado="+nombre+"&cuentaId="+id+"&carpetaNombre="+nombreCarpeta, "_self");
			else
				$("#mensaje_nombre_carpeta").show();
		} else {
			var id1 = "#"+i;
			var id2 = "#div"+i;
			$(id1).show();
			$(id2).hide();
		}
	}

    	function ocultar(i) {
    		var id1 = "#"+i;
    		var id2 = "#div"+i;
    		$(id1).show();
    		$(id2).hide();
    	}
        
        </script>
	</head>
    
	<body role="document" id="fondo_body">

        <!-- Comienza Barra Navegación -->
        <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"><img src="${request.contextPath}/images/institucional/logo_cmx_header.png" border="0"><!-- Marca --></a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <!-- <li class="active"></li> -->
                        <li><a href="${request.contextPath}/inicio">Inicio</a></li>
                        <li><a href="${request.contextPath}/cuenta">Cuenta</a></li>
                        <li><a href="${request.contextPath}/organizacion">Organización</a></li>
                        <li><a href="${request.contextPath}/agenda">Agenda</a></li>
                        <li><a href="${request.contextPath}/autopago">Autopago</a></li>            
                        <li><a href="#">Pedidos</a></li>
                        <li><a href="${request.contextPath}/ayudaYSoporte">Ayuda</a></li>
                        <li><a href="#" id="nav2"><img src="${request.contextPath}/images/iconografia/header/registrar_48.png" alt="Registrar" id="panel_accionesheader"></a></li>
                        <li><a href="#" id="nav2"><img src="${request.contextPath}/images/iconografia/header/tienda_48.png" alt="Tienda Social" id="panel_accionesheader"></a></li>
                        <li><a href="#" id="nav2"><img src="${request.contextPath}/images/iconografia/header/idioma_48.png" alt="Cambiar Idioma" id="panel_accionesheader"></a></li>
                        <li><a href="#" id="nav2"><img src="${request.contextPath}/images/iconografia/header/salir_48.png" alt="Salir" id="panel_accionesheader"></a></li>
                        <li><a href="#" id="nav2"><img src="${request.contextPath}/images/iconografia/header/donar_116_43.png" alt="Donar" id="panel_accionesheader"></a></li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </div>
        <!-- Termina Barra Navegación -->

        <!-- Inicia Página Principal -->
                <div class="container theme-showcase" role="main">
            <div class="page-header"></div>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            
            <!-- Inicia Sección Datos y Acciones Principales -->
            <div class="row">
            <!-- Comienza Panel Emprendedor -->
                <div class="col-md-3">
                    <div class="panel panel-body sombrapanel">
                        <p class="pull-left"><img src="${request.contextPath}/images/iconografia/datosusuario/imagen_usuario_48.png" hspace="5" vspace="5"></p>
                        <strong><small>${cuenta.nombreCompleto}</small></strong><br>
                        <small>Categoría Platino</small><img src="${request.contextPath}/images/iconografia/categorias/Normal/Bronce_16.png"><br>
                        <p class="datos_emprendedor_mensaje">Faltan 10 días para el reembolso.</p>
                    </div>
                </div>
            <!-- Termina Panel Emprendedor -->
        
            <!-- Inicia Panel Datos de Usuario -->
                <div class="col-md-7">
                    <div class="panel panel-body sombrapanel">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="col-md-personalizada_1_izq medida_menu_agenda_1"><p class="txt_cen"><small><strong>Nombre</strong><br>${cuenta.nombreCompleto}</small></p></div>
                                <div class="col-md-personalizada_1 medida_menu_agenda_2"><p class="txt_cen"><small><strong>Mentor</strong><br>${cuenta.mentor.nombreCompleto}</small></p></div>
                                <div class="col-md-personalizada_1 medida_menu_agenda_3"><p class="txt_cen"><small><strong>Rango</strong><br>Bronce</small></p></div>
                                <div class="col-md-personalizada_1 medida_menu_agenda_4"><p class="txt_cen"><small><strong>Equipo</strong><br>Fuego</small></p></div>
                                <div class="col-md-personalizada_1 medida_menu_agenda_5"><p class="txt_cen"><small><strong>Fecha de Autopago</strong><br>31 Diciembre 2013</small></p></div>
                                <div class="col-md-personalizada_1_der medida_menu_agenda_6"><p class="txt_cen"><small><strong>Estatus</strong><br>Activo</small></p></div>
                            </div>
                        </div>
                    </div>
                </div>
            <!-- Termina Panel Datos de Usuario -->
        
            <!-- Empieza Panel de Iconos del Sistema -->
                <div class="col-md-2">
                    <div class="panel panel-body sombrapanel">
                    	<g:if test="${Bandeja.executeQuery("from Bandeja as b where b.nuevo = true and b.destinatario like '%"+ cuenta.nombreCompleto +"%' and b.carpeta = 1").size()> 0}">
                    		<div class="medida_acciones_menu"><a href="${request.contextPath}/mostrarBandejaAdmin"><div class="btn_msjadmin" title="Mensajes Administrador"></a></div></div>
                        </g:if>
                        <g:else>
                        	<div class="medida_acciones_menu"><a href="${request.contextPath}/mostrarBandejaAdmin"><div class="btn_msjadmin" title="Mensajes Administrador"></a></div></div>
                        </g:else>
	                        <div class="medida_acciones_menu"><a href="${request.contextPath}/mostrarBandeja"><div class="btn_msjemprendedores"  title="Mensajes Emprendedor"></a></div></div>
                        <div class="medida_acciones_menu"><div class="btn_alertassistema"></div></div>
                        <div class="medida_acciones_menu"><div class="btn_ubicemprend"></div></div>
                        <div class="medida_acciones_menu"><div class="btn_agenda"></div></div>
                    </div>
                </div>
            <!-- Termina Panel Iconos del Sistema -->
            </div>
            <!-- Finaliza Sección Datos y Acciones Principales -->

            <!-- Inicia Contenido principal -->
            <div class="row">
                <div class="col-md-9">
                    <h2><strong>Mensajes Administrador</strong></h2>
                </div>
                <div class="col-md-3">
                </div>
            </div>
           		
            <div class="row">
                <div class="col-md-12 agenda_contenido_fondo">
                    <div class="row">
                    	<div class="col-md-12">
                        <!-- Inician botones superiores -->
                        	<div class="col-md-2">
                                <div class="agenda_espacio_botones_sup txt_cen">
                                    
                                </div>
                            </div>
                            <div class="col-md-10">
                            	<div id="mensajeEliminar" style="margin-top: -35px; display: none;">
				                     <div class="row">
				                         <div class="col-md-1"></div>
				                         <div class="col-md-10">
				                         	<div class="row caja_eliminacarpeta">
				                             	<div class="col-md-10" id="lblEliminar">¿Está seguro de eliminar la carpeta "Carpeta 1"? Todos los mensajes que contiene se moverán a la Papelera.</div>
				                                 <div class="col-md-1"><div class="btn_confirmaelimina" title="Eliminar" id="btnEliminaCarpeta" onclick="eliminarCarpeta_2()">Eliminar</div></div>
				                                 <div class="col-md-1"><div class="btn_cancelaelimina" title="Cancelar" id="btnCancelar" onClick="ocultarMensaje()">Cancelar</div></div>
				                                 <g:hiddenField name="carpeta" id="entradaCarpeta" />
				                             </div>
				                         </div>
				                         <div class="col-md-1"></div>
				                     </div>
				                 </div>
                            	<div class="row">
                                	<div class="col-md-10 agenda_espacio_botones_sup">
                                        <div class="cajaseleccionatodo" title="Seleccionar todo"><label class="selecciona_elemento_contacto"><input type="checkbox" id="checador" name="" onclick="marcar(this);marcarColor();marcar_2(this);" value="false"></label></div>
                                        <div class="cajaboton_1"><div id="desplegador_mostrar" class="btn btn-gris_peq btn_menu_agenda">Mostrar&nbsp;<img src="${request.contextPath}/images/iconografia/agenda/bullet_rosa2.png"></div></div>
                                         <div class="despliega_mostrar" id="despliega_mostrar"  style="display: none">
                                                    <div class="row">
                                                        <div class="col-md-12"><div class="despliega_mostrar_opcion" onclick="filtrarMensaje(1, '${carpeta.id}')">Todos</div></div>
                                                        <div class="col-md-12"><div class="despliega_mostrar_opcion" onclick="filtrarMensaje(2, '${carpeta.id}')">Leídos</div></div>
                                                        <div class="col-md-12"><div class="despliega_mostrar_opcion" onclick="filtrarMensaje(3, '${carpeta.id}')">No leídos</div></div>
                                                        <div class="col-md-12"><div class="despliega_mostrar_opcion" onclick="filtrarMensaje(4, '${carpeta.id}')">Importantes</div></div>
                                                        <div class="col-md-12"><div class="despliega_mostrar_opcion" onclick="filtrarMensaje(5, '${carpeta.id}')">Irrelevantes</div></div>
                                                    </div>
                                                </div>
                                        <div class="cajaboton_2"><button type="button"  onclick="marcarLeidos()" class="btn btn-gris_peq btn_menu_agenda2">Mostrar todo como leído</button></div>
                                        <div class="cajaboton_3"><div  style="display: none" id="desplegador_movera" class="btn btn-gris_peq btn_menu_agenda btn_menu_agenda_3">Mover a&nbsp;<img src="${request.contextPath}/images/iconografia/agenda/bullet_rosa2.png"></div></div>
                                        <div class="despliega_movera" id="despliega_movera"  style="display: none">
                                                    <div class="row">

                                                        
                                                        <!-- Inicia carpetas de usuario -->
				                                        <g:each var="carpeta" in="${carpetas}" status="i">
															<g:if test="${carpeta.usuario == cuenta.nombreCompleto}">
																<g:if test="${carpeta.nombre == "Recibidos"}">
																</g:if>
																<g:else>
																<div class="col-md-12"><div onclick="mover(${carpeta.id})" class="despliega_movera_opcion">${carpeta.nombre}</div></div>
																</g:else>
															</g:if>
														</g:each>
				                                        <!-- Termina carpetas de usaurio -->
                                                        														
                                                        <div class="col-md-12"><div class="despliega_movera_opcion"><div id="desplegador_movera_opcion" class="crear_nva_carpeta">Nueva carpeta</div></div></div>
                                                        <div class="col-md-12"><div class="linea_menu"></div></div>
                                                        <div class="col-md-12">
                                                        	<div class="despliega_movera_opcion" id="despliega_movera_opcion" style="display: none">
                                                            	<div class="col-md-10"><input type="text" class="form-control texto_campo_desplieguelista" placeholder="Nueva carpeta" name="nombreCarpeta2" id="nombreCarpeta2"></div>
                                                                <div class="col-md-2"><div class="btn_ok_peq" onclick="crearCarpeta2()"></div></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                        <div class="cajaboton_4"><div id="desplegador_marcarcomo" style="display: none" class="btn btn-gris_peq btn_menu_agenda btn_menu_agenda_3">Marcar como&nbsp;<img src="${request.contextPath}/images/iconografia/agenda/bullet_rosa2.png"></div></div>
                                        <div class="despliega_marcarcomo" id="despliega_marcarcomo" style="display: none">
                                                    <div class="row">
                                                <div class="col-md-12"><div class="despliega_marcarcomo_opcion" style="display: none" id="div_leido" onclick="marcarMensajesComo('l')">Leído</div></div>
                                                <div class="col-md-12"><div class="despliega_marcarcomo_opcion" style="display: none" id="div_no_leido" onclick="marcarMensajesComo('nl')">No leído</div></div>
                                                <div class="col-md-12"><div class="despliega_marcarcomo_opcion" style="display: none" id="div_importante" onclick="marcarMensajesComo('i')">Importante</div></div>
                                                <div class="col-md-12"><div class="despliega_marcarcomo_opcion" style="display: none" id="div_no_importante" onclick="marcarMensajesComo('ni')">Irrelevante</div></div>
                                                    </div>
                                                </div>
                                        <div class="cajaboton_5"><button id="btnEliminar" onclick="borrar(false)" style="display: none" type="button" class="btn btn-gris_peq btn_menu_agenda2">Eliminar</button></div>
                                        <div class="cajaboton_6">
                                            <div class="buscar">
                                                <input required type="text" class="form-control texto_campo_principal campo_buscar" placeholder="Buscar" name="texto" id="texto"><input type="submit" onClick="busqueda()" value="" class="btn_buscarmsj">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="agenda_espacio_botones_sup pull-right">
                                            <div id="desplegador_organizar" class="btn btn-gris_peq btn_menu_agenda">Organizar&nbsp;<img src="${request.contextPath}/images/iconografia/agenda/bullet_rosa2.png"></div>
                                            <div class="despliega_organizar" id="despliega_organizar" style="display :none">
                                        	<div class="row">
                                            	<div class="col-md-12"><div class="despliega_mostrar_opcion">Fecha<div class="btn_descendente" onclick="ordenar('${carpeta.id}',1,'desc')"></div><div class="btn_ascendente" onclick="ordenar('${carpeta.id}','1','asc')"></div></div></div>
                                            	<div class="col-md-12"><div class="despliega_mostrar_opcion">De<div class="btn_descendente" onclick="ordenar('${carpeta.id}','2','desc')"></div><div class="btn_ascendente" onclick="ordenar('${carpeta.id}','2','asc')"></div></div></div>
                                            	<div class="col-md-12"><div class="despliega_mostrar_opcion">Asunto<div class="btn_descendente" onclick="ordenar('${carpeta.id}','3','desc')"></div><div class="btn_ascendente" onclick="ordenar('${carpeta.id}','3','asc')"></div></div></div>
                                            </div>
                                        </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <!-- Terminan botones superiores -->
                        </div>
                    </div>
                    <div class="row">
                    	<div class="col-md-personalizada_2 medida_cont_agenda_1 listado_carpetas">
                        	<div class="col-md-1"></div>
                        	<div class="col-md-10">
                            	<!-- Inicia Barra de opciones lateral -->
                            	<div class="row">
                                    <div class="msj_carpetas">
                                        <div class="col-md-12"><div class="msj_carp_actual"><a href="/compromisomx/MostrarBandejaAdmin/index/1?offset=0&max=5">Recibidos (#${Bandeja.countByDestinatarioLikeAndCarpeta(cuenta.nombreCompleto, Carpetas.get(1));})</a></div></div>
                                        <div class="col-md-12"><div class="msj_carp"><a href="/compromisomx/MostrarBandejaAdmin/index/2?offset=0&max=5">Papelera (#${Bandeja.countByDestinatarioLikeAndCarpeta(cuenta.nombreCompleto, Carpetas.get(2));})</a></div></div>
                                        <div class="col-md-12"><div class="msj_carp"><a style="cursor: pointer;" id="desplegador_carpetas" >Carpetas&nbsp;<img src="${request.contextPath}/images/iconografia/agenda/bullet_rosa2.png" id="img_carpetas"></a></div></div>
                                       
                                      	<div id="despliega_carpetas" style="display: none;">
                                      	<div class="col-md-12"><div class="linea_menu"></div></div>
                                      		<!-- Inicia carpetas de usuario -->
	                                        <g:each var="carpeta" in="${carpetas}" status="i">
												<g:if test="${carpeta.usuario == cuenta.nombreCompleto}">
												<g:if test="${carpeta.nombre=="Recibidos" || carpeta.nombre=="Papelera"}">
													</g:if>
													<g:else>
													<div class="col-md-12">
													<div class="col-md-10" onmouseover="mostrarOpEliminar(${carpeta.id})" onmouseout="ocultarImagen(${carpeta.id})" id="${i}">
														<div class="msj_carp">
															<a onclick="cambiarNombre('${carpeta.id}', '${i}', '${carpeta.nombre}')" style="cursor: pointer;">${carpeta.nombre} (#${Bandeja.countByDestinatarioLikeAndCarpeta(cuenta.nombreCompleto, Carpetas.get(carpeta.id));})</a>
															<div class="btn_elimina_carpeta" id="${carpeta.id}" title="Eliminar Carpeta" onclick="eliminarCarpeta('${carpeta.nombre}')" style="display: none;"></div>
														</div>
													</div>
													
													<!-- Inicia cambiar nombre -->
													<div class="msj_carp" id="div${i}" style="display: none;" >
														<div class="row" onblur="ocultar('${i}');">
	                                                    	<div class="col-md-10"><input type="text" class="form-control texto_campo_desplieguelista" placeholder="Nueva carpeta" name="nombreModificado" id="nombreModificado${i}"></div>
	                                                    	<div class="col-md-2"><div class="btn_ok_peq" id="btn_ok_peq" onclick="modificarNombre(${cuenta.id}, '${i}')"></div></div>
	                                                    	<input type="hidden" id="carpeta${i}" value="${carpeta.nombre}">
	                                                	</div>
													</div>
													<!-- Termina cambiar nombre -->
													</div>
													</g:else>
												</g:if>
											</g:each>
	                                        <!-- Termina carpetas de usaurio -->
	                                        
	                                        <div class="col-md-12"></div><div class="col-md-10"><div class="msj_carp"><div class="crear_nva_carpeta"><a style="cursor: pointer;" id="desplegador_nueva_carpeta">Crear nueva carpeta</a></div></div></div>
	                                        <div class="col-md-2"></div>
	                                        <div class="col-md-10">
	                                        	<div class="msj_carp" id="despliega_nueva_carpeta" style="display: none;">
	                                            	<div class="row">
	                                                    <div class="col-md-10"><input type="text" class="form-control texto_campo_desplieguelista" placeholder="Nueva carpeta"  name="nombreCarpeta" id="nombreCarpeta"></div>
	                                                    <div class="col-md-2"><div class="btn_ok_peq" id="btn_ok_peq" onclick="crearCarpeta()"></div></div>
	                                                </div>
	                                        	</div>
	                                        </div>
	                                        <div class="col-md-2"></div>
	                                        <div class="col-md-10" id="mensaje_carpeta" style="display: none;"><div class="msj_carp"><div class="carpeta_error">El nombre de la carpeta ya existe, indica otro nombre.</div></div></div>
	                                        <div class="col-md-12"><div class="linea_menu"></div></div>
                                      	</div>
                                        
                                        <div class="col-md-12"><div class="msj_carp_actual"></div></div>
                                        <div class="col-md-12" id="despliega_contactos" style="display: none;">
                                        <div class="col-md-12"><div class="linea_menu"></div></div>

										
										<!-- Termina contactos de usuario -->
										<div class="col-md-12"><div class="linea_menu"></div></div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Finaliza Barra de opciones lateral -->
                            </div>
                        	<div class="col-md-1"></div>
                        </div>
                    	<div class="col-md-personalizada_2 medida_cont_agenda_2">
                            <!-- Comienza Correo -->
                            <div class="contenedor_correo" id="contenido_mensaje" style="display: none;">
                                
                            </div>
                            <!-- Termina Correo -->
                        	<!-- Comienza Listado de Mensajes -->
                        	<div id="lista_mensajes">
                            <div class="contenedor_mensajes tabla_buscador_1" >
                               <g:if test="${total == 0}"> 
                                <!-- Comienza aviso de sin resultados de búsqueda -->
                                <div class="row fila_mensaje_correo msj_nuevo">
                                    <div class="col-md-12 mensaje_busqueda">No hay algún mensaje en su ${carpeta.nombre}.</div>
                                </div>
                                <!--  Termina aviso de sin resultados de búsqueda -->
                                </g:if>
								<g:else>
								    <!-- Comienza fila de correo -->
	                                <g:each in="${lista}" var="bandeja" status="i">
	                                <g:if test="${bandeja.status == false}">
	                                	<div class="row fila_mensaje_correo msj_nuevo"  id="correo${i}">
	                                </g:if>
	                                <g:else>
	                                	<div class="row fila_mensaje_correo msj_leido"  id="correo${i}">
	                                </g:else>
	                                    <div class="col-md-12">
	                                        <div class="col_mensajes_2_a"><label><input  id="check${i}" name="${bandeja.id}" type="checkbox" onclick="marcar2(this, ${i}, ${bandeja.id});  anadirLista(${bandeja.status.toString()}, ${bandeja.relevante.toString()}, this)"/></label></div>
	                                        <g:if  test="${bandeja.status == false }">
	                                        	<div class="col_mensajes_2_b"  onclick="mostrarMensaje('${bandeja.id}')"><img id="estado_mensaje" src="${request.contextPath}/images/iconografia/agenda/bullet_rosa.png"></div>
	                                        </g:if>
	                                        <g:else>
	                                        	<div class="col_mensajes_2_b"  onclick="mostrarMensaje('${bandeja.id}')"><img id="estado_mensaje" src="${request.contextPath}/images/iconografia/agenda/bullet_gris.png"></div>
	                                        </g:else>
	                                        <g:if test="${bandeja.remitente.length()>17}">
	                                        	<div class="col_mensajes_2_c"  onclick="mostrarMensaje('${bandeja.id}')"><a href="#">${bandeja.remitente.substring(0, 14)}...</a></div>
	                                        </g:if>
	                                        <g:else>
	                                        	<div class="col_mensajes_2_c"  onclick="mostrarMensaje('${bandeja.id}')"><a href="#">${bandeja.remitente}...</a></div>
	                                        </g:else>
	                                        <div class="col_mensajes_2_d"  onclick="mostrarMensaje('${bandeja.id}')">
	                                            <div class="msj_prev_asunto">${bandeja.asunto}</div>
	                                            <g:if test="${(bandeja.asunto.length() + bandeja.cuerpo.length()) < 50}">
	                                            	<div class="msj_prev_contenido">&nbsp; &lt;${bandeja.cuerpo.replaceAll('\\<.*?\\>', '');}&gt;</div>
	                                            </g:if>
	                                            <g:else>
	                                            	<div class="msj_prev_contenido">&nbsp; &lt;${bandeja.cuerpo.substring(0, (50 - bandeja.asunto.length()-4)).replaceAll("\\<.*?\\>", "");}&gt;</div>
	                                            </g:else>
	                                        </div>
	                                        <div class="col_mensajes_2_e"  onclick="mostrarMensaje('${bandeja.id}')">${bandeja.fecha}</div>
	                                        <div class="col_mensajes_2_f">&nbsp;</div>
	                                        <g:if test="${bandeja.relevante == false }">
	                                        	<div class="col_mensajes_2_g"><div class="msj_btn_alerta" title="Marcar este mensaje como importante" onclick="cambiarImportancia('${bandeja.id}', '${bandeja.carpeta.id}')" id="btnAlerta"></div></div>
	                                        	<input type="hidden" id="relevanteInput" value="${bandeja.relevante.toString()}">
	                                        </g:if>
	                                        <g:else>
	                                        	<div class="col_mensajes_2_g"><div class="msj_btn_relevante" title="Marcar este mensaje como irrelevante" onclick="cambiarImportancia('${bandeja.id}', '${bandeja.carpeta.id}')" id="btnAlerta"></div></div>
	                                        	<input type="hidden" id="relevanteInput" value="${bandeja.relevante.toString()}">
	                                        </g:else>
	                                        <g:if test="${bandeja.status == false }">
	                                        	<div class="col_mensajes_2_h"><div class="msj_btn_mensaje" id="div_marcar_como" title="Marcar este mensaje como leído" onclick="marcarComo('${bandeja.id}', '${bandeja.carpeta.id}')"></div></div>
	                                        </g:if>
	                                        <g:else>
	                                        	<div class="col_mensajes_2_h"><div class="msj_btn_mensaje" id="div_marcar_como" title="Marcar este mensaje como no leído" onclick="marcarComo('${bandeja.id}', '${bandeja.carpeta.id}')"></div></div>
	                                        </g:else>
	                                        <div class="col_mensajes_2_i"><a class="msj_btn_borrar" href="/compromisomx/MostrarBandejaAdmin/moverPapelera/${bandeja.id}" title="Eliminar este
	mensaje"></a></div>
	                                    </div>
	                                </div>
	                                </g:each>
                                </g:else>
			                      
                                  <!-- Termina fila de correo -->
                        	</div>
                        	<!-- Termina Listado de Mensajes -->
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
		                                	<div class="pager_primero" onclick="first()" title="Primera página"></div>
		                                	<div class="pager_anterior" onclick="prev_page()" title="Página anterior" id="pag_izq"></div>
		                                </g:else>
		                                <g:if test="${(Integer.parseInt(total.toString()) - Integer.parseInt(num.toString())) <=  5 }">
		                                	<div class="pager_siguiente_inactivo" title="Página siguiente"></div>
		                                	<div class="pager_ultimo_inactivo" title="Última página" id="pag_der"></div>
		                                </g:if>
		                                <g:else>
		                                	<div class="pager_siguiente" onclick="next_page()" title="Página siguiente" id="pag_der"></div>
		                                	<div class="pager_ultimo" title="Última página" onclick="last()"></div>
		                                </g:else>
	                            </div>
                        	</g:else>
                        </div>
                    </div>
                    <!-- Termina paginación -->
                    </div>
                    	</div>
                    	 </div>
                	</div>
                 
                    <div class="row">
                    	<div class="col-md-12">&nbsp;</div>
                	</div>
            	</div>
                <div class="row">
                    <div class="col-md-12">
                        <p>&nbsp;</p>
                    </div>
                </div>
            <!-- Termina Contenido Principal -->
            
            </div>

        <!-- Termina Página Principal -->
        <!-- Termina Página Principal -->

        <!-- Inicia Pie de Página -->
        <div class="row estilo_piepagina">
              <footer>
                <p class="text-center pie_pagina_texto"><br>
                Síguenos en: &nbsp;
                <a href="#"><img src="${request.contextPath}/images/iconografia/social/facebook_48.png" class="pie_pagina_imgredes" /></a>
                <a href="#"><img src="${request.contextPath}/images/iconografia/social/twitter_48.png" class="pie_pagina_imgredes" /></a>
                <a href="#"><img src="${request.contextPath}/images/iconografia/social/youtube_48.png" class="pie_pagina_imgredes" /></a>
                </p>
                <p class="text-center pie_pagina_texto">
                    <small>
                        <a href="#" class="pie_pagina_vinculo">Términos y Condiciones</a> &middot; 
                        <a href="#" class="pie_pagina_vinculo">Aviso de Privacidad</a> &middot; 
                        <a href="#" class="pie_pagina_vinculo">Mapa del Sitio</a> &middot; 
                        <a href="#" class="pie_pagina_vinculo">Contáctanos</a> &middot; &copy; 2014 Red de Acción Comunitaria S.A. de C.V. Derechos Reservados
                    </small>
                </p>
              </footer>
         </div>
        <!-- Termina Pie de Página -->
        
        <!-- /container -->
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
	</body>
</html>