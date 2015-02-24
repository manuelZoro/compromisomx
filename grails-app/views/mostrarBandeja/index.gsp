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
		if(carpeta == 3){
			if(confirmacion)
				window.open("/compromisomx/MostrarBandeja/eliminarMensajes?lista="+listaId.toString()+"&idCarpeta="+carpeta+"&tipo="+'${tipoOrdenacion}'+"&orden="+'${modo}'+"&max=5&offset="+${num},"_self");
			else
				$("#eliminarVarios").show();
		} else {
			if(listaId.length > 0)
				window.open("/compromisomx/MostrarBandeja/eliminarMensajes?lista="+listaId.toString()+"&idCarpeta="+carpeta+"&tipo="+'${tipoOrdenacion}'+"&orden="+'${modo}'+"&max=5&offset="+${num},"_self");
		}
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
			listaId.splice(listaId.indexOf(idMensaje), 1);
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
					$(document).ready(function() {$("#btnEliminar").show();});	
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
	
	var v = false;
	var abierta;
	var contenido;
	var listaId = [];
	var contactos = [];
	var listaMarcados = [];
	
	$(document).ready(function(){
		v = false;
	});

	$(document).ready(function(){
		  $("#btnOrdenar").click(function(){
		    $("#opcionesOrdenar").slideToggle("slow");
		  });
			
		  $("#desplegador_mostrar").click(function(){
			  $("#despliega_mostrar").slideToggle("fast");
		  });
		  $("#desplegador_movera").click(function(){
			  $("#despliega_movera").slideToggle("fast");
		  });
		  $("#desplegador_marcarcomo").click(function(){
			  $("#despliega_marcarcomo").slideToggle("fast");
		  });
		  $("#desplegador_mens_nuevo").click(function(){
			  $("#despliega_mens_nuevo").slideToggle("fast");
		  });
		  $("#desplegador_organizar").click(function(){
			  $("#despliega_organizar").slideToggle("fast");
		  });
		  $("#desplegador_movera_opcion").click(function(){
			  $("#despliega_movera_opcion").slideToggle("fast");
		  });
		  $("#cerrar_redactar_msj").click(function(){
			  $("#despliega_mens_nuevo").hide();
		  });
		  $("#desplegador_movera").click(function(){
			  $("#despliega_mostrar").hide();
			  $("#despliega_marcarcomo").hide();
		  });
		  $("#desplegador_mostrar").click(function(){
			  $("#despliega_movera").hide();
			  $("#despliega_marcarcomo").hide();
		  });
		  $("#desplegador_marcarcomo").click(function(){
			  $("#despliega_mostrar").hide();
			  $("#despliega_movera").hide();
		  });
		  $("#escoje_contacto_menuventana_cerrar").click(function(){
			  $("#escoje_contacto").show();
		  });
		  $("#desplegador_carpetas").click(function(){
			  $("#despliega_carpetas").slideToggle("fast");
			  $("#img_carpetas").attr("src","${request.contextPath}/images/iconografia/agenda/bullet_rosa_arriba.png");
		  });
		  $("#desplegador_contactos").click(function(){
			  $("#despliega_contactos").slideToggle("fast");
			  $("#img_contacto").attr("src","${request.contextPath}/images/iconografia/agenda/bullet_rosa_arriba.png");
		  });
		  $("#desplegador_nueva_carpeta").click(function(){
			  $("#despliega_nueva_carpeta").slideToggle("fast");			  
			  $("#img_contacto").attr("src","${request.contextPath}/images/iconografia/agenda/bullet_rosa_arriba.png");
		  });

		  $("#btn_minimizar").click(function(){
			    $('#despliega_mens_nuevo').hide();
	  			$('#barra_min').show(); 
		  });

		  $("#btn_maximizar").click(function(){
			    $('#despliega_mens_nuevo').show(); 
			    $('#barra_min').hide();
		  });

		  $("#div_ckecador").click(function(){
			  	$("#despliega_mostrar").hide();
				$("#despliega_movera").hide();
				$("#despliega_organizar").hide();
				$("#despliega_marcarcomo").hide();
		  });

	});
	

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
		window.open("/compromisomx/MostrarBandeja/index/"+carpeta+"?tipo="+tipo+"&orden="+orden+"&tipo="+"&max=5&offset="+${num}, "_self");
	}

	function cambiarNombre(id, i, nombre){		
		if(${ab} && (id == ${carpeta.id})){
			var id1 = "#"+i;
			var id2 = "#div"+i;
			$(id1).hide();
			$(id2).show();
			document.getElementById("nombreModificado"+i).value = nombre;
		}else{
			window.open("/compromisomx/MostrarBandeja/index/" + id +"?offset=0&max=5&abierta=true"+"&tipo="+'${tipoOrdenacion}'+"&orden="+'${modo}', "_self");
			abierta = true;
		}
	}

	function marcarLeidos(){
		var carpeta = ${carpeta.id};
		if(listaId.length > 0)
			window.open("/compromisomx/MostrarBandeja/marcarMensajes?lista="+listaId.toString()+"&idCarpeta="+carpeta+"&tipo="+'${tipoOrdenacion}'+"&orden="+'${modo}'+"&max=5&offset="+${num},"_self")
	}

	function mostrar_infromacion_contacto(id) {
		var div = "#"+id;
		$(div).show();
	}

	function ocultar_informacion(id) {
		var div = "#"+id;
		$(div).hide();
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
				if(nombreCarpeta != "" && nombreCarpeta != null ){
					if(nombreCarpeta.length <= 30)
						window.open("/compromisomx/MostrarBandeja/guardarCarpeta?nombreCarpeta="+nombreCarpeta+"&cuentaId="+idUsuario+"&tipo="+'${tipoOrdenacion}'+"&orden="+'${modo}'+"&max=5&offset="+${num}, "_self");
					else
						$("#mensaje_nombre_carpeta").show();
				}
				//break;
			}
		//}
	}

	function crearCarpeta2(){
		var nombreCarpeta = document.getElementById("nombreCarpeta2").value.toLowerCase();
		var lista = '${listaCarpetas}';
		lista = lista.substring(1, lista.length -1).toLowerCase();

		//for (i = 0; i < lista.split(",").length; i++) { 
			if(lista.split(", ").indexOf(nombreCarpeta) != -1) {
				$("#mensaje_carpeta2").show();
				//break;
			} else {
				var idUsuario = ${cuenta.id.toString()};
				$("#mensaje_carpeta2").hide();
				if(nombreCarpeta != "" && nombreCarpeta != null ){
					if(nombreCarpeta.length <= 30)
						window.open("/compromisomx/MostrarBandeja/guardarCarpeta?nombreCarpeta="+nombreCarpeta+"&cuentaId="+idUsuario+"&tipo="+'${tipoOrdenacion}'+"&orden="+'${modo}'+"&max=5&offset="+${num}, "_self");
					else
						$("#mensaje_nombre_carpeta_2").show();
				}
				//break;
			}
		//}
	}
	function cambiarImportancia(id, carpeta) {
		var valor = document.getElementById("relevanteInput").value;
		var idCarpeta = carpeta;
		if(valor == "false"){
			document.getElementById("relevanteInput").value = "true";
		    $("#btnAlerta").prop('title', 'Marcar este mensaje como importante');
		    $("#btnAlerta").removeClass("msj_btn_alerta");
		    $("#btnAlerta").addClass("msj_btn_relevante");
		    window.open("/compromisomx/MostrarBandeja/cambiarPrioridad?id="+id+"&idCarpeta="+idCarpeta+"&tipo="+'${tipoOrdenacion}'+"&orden="+'${modo}'+"&max=5&offset="+${num},"_self");
		}else{
			document.getElementById("relevanteInput").value = "false";
			$("#imgR").prop('title', 'Marcar este mensaje como irrelevante');
			$("#btnAlerta").removeClass("msj_btn_relevante");
		    $("#btnAlerta").addClass("msj_btn_alerta");
		    window.open("/compromisomx/MostrarBandeja/cambiarPrioridad?id="+id+"&idCarpeta="+idCarpeta+"&tipo="+'${tipoOrdenacion}'+"&orden="+'${modo}'+"&max=5&offset="+${num},"_self");
		}
	}

	function cambiarImportancia2() {
		var valor = document.getElementById('nvo_msj_importante').value.toString();
		if(valor == "false"){
			document.getElementById("nvo_msj_importante").value = "true";
			$("#nvo_msj_div").removeClass("msj_btn_alerta");
		    $("#nvo_msj_div").addClass("msj_btn_relevante");
		}else{
			document.getElementById("nvo_msj_importante").value = "false";
			$("#nvo_msj_div").removeClass("msj_btn_relevante");
		    $("#nvo_msj_div").addClass("msj_btn_alerta");
		}
	}

	function descartarMensaje(){
		location.href =  "${request.contextPath}/mostrarBandeja/index";
	}
	function setTexto(){
		var contenido = document.getElementById('cuerpoMensaje').innerHTML;                
		document.getElementById('contenidoMensaje').value = contenido;
	}
	$(document).ready(function (){
		document.getElementById("cuerpoMensaje").innerHTML = "Escribe aqui tu mensaje";
		document.getElementById("contenidoMensaje").value = "Escribe aqui tu mensaje";
});

	function mostrarMensaje(id){
		$("#contenido_mensaje").show();
		$("#lista_mensajes").hide();
		$("#contenido_mensaje").load("/compromisomx/MostrarBandeja/contenidoMensaje?idMensaje="+id+"&tipo="+'${tipoOrdenacion}'+"&orden="+'${modo}'+"&max=5&offset="+${num});
		$("#btnEliminar_mensaje").show();
		$("#desplegador_marcarcomo").show();
		$("#btn_responder").show(); 
		$("#div_mostrarTodo").hide(); 
		$("#desplegador_mostrar").hide();
		$("#div_ckecador").hide();
		//alert(document.getElementById("mensaje_eliminar_id").value);
	}
	function filtrarMensaje(i, carpeta){
		$("#lista_mensajes").hide();
		$("#div_paginacion").hide();
		$("#despliega_mostrar").hide();
		$("#despliega_movera").hide();
		$("#despliega_organizar").hide();
		$("#contenido_mensaje").load("/compromisomx/MostrarBandeja/filtroMensaje?nums="+i+"&carpeta="+carpeta+"&offset=0&max=5");
		$("#contenido_mensaje").show();
	}
	function busqueda(){
    	var cadena = document.getElementById('texto').value;
    	if(cadena == "") {
        }
    	else {
			$("#lista_mensajes").hide();
			$("#div_paginacion").hide();
			$("#contenido_mensaje").show();
			$("#despliega_mostrar").hide();
			$("#despliega_movera").hide();
			$("#despliega_organizar").hide();
			$("#contenido_mensaje").load("/compromisomx/MostrarBandeja/busquedaMensaje?cad="+cadena+"&offset=0&max=5");
    	}
	}

	function responder() {
		$('#despliega_mens_nuevo').show();

		var id = document.getElementById("id_remitente").value;
		var contacto = "#Contacto"+id;
		var destinos = document.getElementById("destinos");	
		contactos.unshift(id.toString());
		destinos.value = destinos.value + "," + id;
		$(contacto).show();
	}

	function sleep(milliseconds) {
	    var start = new Date().getTime();
	    for (var i = 0; i < 1e7; i++) {
	    	if ((new Date().getTime() - start) > milliseconds){
	      		break;
	    	}
	  	}
	}

	function mostrarMensajeEnvio() {
		var asunto = document.getElementById("i_asunto").value.toString();
		var destino = document.getElementById("destinos").value.toString();
		var cuerpo = document.getElementById("contenidoMensaje").value;
		var relevante = document.getElementById("nvo_msj_importante").value;
		var val = false;

		if(asunto == null || asunto == "" || destino == null || destino == "") {
			val = false;
		} else {
			val = true;
			$('#despliega_mens_nuevo').hide();
			$("#mensajeCorreoEnviado").show();
			sleep(parseInt(4000));
			window.open("/compromisomx/MostrarBandeja/enviarMensaje?destinatario="+destino+"&asunto="+asunto+"&cuerpoHTML="+cuerpo+"&relevante="+relevante,"_self");
		}
		
	}

	function borrarMensaje() {
		var id = document.getElementById("mensaje_eliminar_id").value;
		window.open("/compromisomx/MostrarBandeja/moverPapelera/"+id,"_self");
	}

	function prev_page() {
		var n = "/compromisomx/MostrarBandeja/index/"+${carpeta.id}+"?max=5&offset="+ (parseInt(${num}) - parseInt("5")+"&tipo="+'${tipoOrdenacion}'+"&orden="+'${modo}');		
		window.open(n,"_self");
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
	
	function modificarNombre(id, i, carpeta) {
		var nombre = document.getElementById("nombreModificado"+i).value;
		var nombreCarpeta = document.getElementById("carpeta"+i).value;

		if(nombre != "" && nombre != null ){
			if(nombre.length <= 30)
				window.open("/compromisomx/MostrarBandeja/cambiarNombreCarpeta?nombreModificado="+nombre+"&cuentaId="+id+"&carpetaNombre="+nombreCarpeta+"&tipo="+'${tipoOrdenacion}'+"&orden="+'${modo}'+"&max=5&offset="+${num}, "_self");
			else
				$("#mensaje_nombre_carpeta").show();
		} else {
			var id1 = "#"+i;
			var id2 = "#div"+i;
			$(id1).show();
			$(id2).hide();
		}
	}


	function next_page() {
		var n = "/compromisomx/MostrarBandeja/index/"+${carpeta.id}+"?max=5&offset="+ (parseInt(${num}) + parseInt("5"))+"&tipo="+'${tipoOrdenacion}'+"&orden="+'${modo}';
		window.open(n,"_self");
	}
	
	function first() {
		var n = "/compromisomx/MostrarBandeja/index/"+${carpeta.id}+"?max=5&offset=0&tipo="+'${tipoOrdenacion}'+"&orden="+'${modo}';
		window.open(n,"_self");
	}
	
	function last() {
		var n = "/compromisomx/MostrarBandeja/index/"+${carpeta.id}+"?max=5&offset="+ parseInt(${(paginas - 1) * 5}) +"&tipo="+'${tipoOrdenacion}'+"&orden="+'${modo}';
		window.open(n,"_self");
	}
	
	function eliminarCarpeta(nombre) {
		$("#mensajeEliminar").show();
		var label = "Está seguro de eliminar la carpeta '" +  nombre + "'? (todos los mensajes que contiene se enviarán a la papelera)'";
		document.getElementById("lblEliminar").innerHTML = label;
		document.getElementById("entradaCarpeta").value = nombre;
	}
	
	function eliminarCarpeta_2() {
		var carpeta = document.getElementById("entradaCarpeta").value;
		window.open("/compromisomx/MostrarBandeja/eliminarCarpeta?carpeta="+carpeta, "_self");
	}
	
	function ocultar(i) {
		var id1 = "#"+i;
		var id2 = "#div"+i;
		$(id1).show();
		$(id2).hide();
	}

	function bold(){
		contenido = "";
		document.execCommand('bold',false,'');
		contenido = document.getElementById("cuerpoMensaje").innerHTML;                
		document.getElementById("contenidoMensaje").value = contenido;
	}

	function italic(){
		contenido = "";
		document.execCommand('italic',false,'');
		contenido = document.getElementById("cuerpoMensaje").innerHTML;                
		document.getElementById("contenidoMensaje").value = contenido;
	}

	function underline(){
		contenido = "";
		document.execCommand('underline',false,'');
		contenido = document.getElementById("cuerpoMensaje").innerHTML;                
		document.getElementById("contenidoMensaje").value = contenido;
	}

	function cambiarColor(color){
		contenido = "";
		document.execCommand('forecolor',false, color);
		contenido = document.getElementById("cuerpoMensaje").innerHTML;                
		document.getElementById("contenidoMensaje").value = contenido;
	}

	function listaNumerica(){
		contenido = "";
		document.execCommand('insertOrderedList',false, '');
		contenido = document.getElementById("cuerpoMensaje").innerHTML;                
		document.getElementById("contenidoMensaje").value = contenido;
	}

	function listaVineta(){
		contenido = "";
		document.execCommand('insertUnorderedList',false, '');
		contenido = document.getElementById("cuerpoMensaje").innerHTML;                
		document.getElementById("contenidoMensaje").value = contenido;
	}

	function cambiarLetra(tipo){
		contenido = "";
		document.execCommand('fontName',false, tipo);
		contenido = document.getElementById("cuerpoMensaje").innerHTML;             
		document.getElementById("contenidoMensaje").value = contenido;
	}

	function cambiarTamaño(tamaño){
		document.execCommand('fontSize',false,tamaño);
		contenido = document.getElementById("cuerpoMensaje").innerHTML;                
		document.getElementById("contenidoMensaje").value = contenido;
	}

	function identar(valor){
		contenido = "";
		document.execCommand(valor, false, '');
		contenido = document.getElementById("cuerpoMensaje").innerHTML;                
		document.getElementById("contenidoMensaje").value = contenido;
	}

	function reset(){
		contenido = "";
		document.execCommand('removeFormat', false, '');
		contenido = document.getElementById("cuerpoMensaje").innerHTML;                
		document.getElementById("cuerpoMensaje").value = contenido;
	}

	function marcarComo(id, carpeta) {	
		window.open("/compromisomx/MostrarBandeja/marcarComo/"+id+"?carpeta="+parseInt(carpeta)+"&tipo="+'${tipoOrdenacion}'+"&orden="+'${modo}'+"&max=5&offset="+${num}, "_self");
	}

	function agregarContacto(combo, id) {
		var contacto = "#Contacto"+id;
		var destinos = document.getElementById("destinos");	
		if(combo.checked) {
			contactos.unshift(id.toString());
			destinos.value = destinos.value + "," + id;
			$(contacto).show();
		} else {
			contactos.splice(contactos.indexOf(id.toString()), 1);
			destinos.value = destinos.value.toString().replace(","+id, "");
			$(contacto).hide();
		}
	}

	function agregarContacto2(id) {
		var destinos = document.getElementById("destinos");	
		var contacto = "#Contacto"+id;
		if(contactos.indexOf(id.toString) == -1){
			contactos.unshift(id.toString());
			destinos.value = destinos.value + "," + id;
			$(contacto).show();
		}
	}
	
	function m_emprendedor() {
		window.open("/compromisomx/MostrarBandeja/index","_self");
	}

	function m_admin() {
		window.open("/compromisomx/MostrarBandejaAdmin/index","_self");
	}
	

	function eliminarContacto(id) {
		var contacto = "#Contacto"+id;
		var combo = "combo_contacto"+id;
		var destinos = document.getElementById("destinos");	
		contactos.splice(contactos.indexOf(id.toString()), 1);
		document.getElementById(combo).checked = false;
		destinos.value = destinos.value.toString().replace(","+id, "");
		$(contacto).hide();
	}

	function agregarTodos(combo) {
		var lista = '${misContactos.id}';
		var destinos = document.getElementById("destinos");	
		contactos = lista.substring(1, lista.length -1);
		
		if(combo.checked) {					
			for (i = 0; i < contactos.split(",").length; i++) { 
				var id = "#Contacto"+contactos.split(", ")[i];
				var check = "combo_contacto"+contactos.split(", ")[i];
				$(id).show();
				document.getElementById(check).checked = true;
				destinos.value = destinos.value + "," + contactos.split(", ")[i];
			}
				
		}
	}
	
	function mover(nombreCarpeta) {
		var carpeta = ${carpeta.id};
		if(listaId.length > 0)
			window.open("/compromisomx/MostrarBandeja/moverMensajes?lista="+listaId.toString()+"&idCarpeta="+carpeta+"&nombreCarpeta="+nombreCarpeta+"&tipo="+'${tipoOrdenacion}'+"&orden="+'${modo}'+"&max=5&offset="+${num},"_self");
	}

	function anadirLista(status, relevante, source) {
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
			if(listaMarcados.indexOf(estado) == parseInt(-1))
				listaMarcados.unshift(estado);

			if(listaMarcados.indexOf(importancia) == parseInt(-1))
				listaMarcados.unshift(importancia);
		} else {
			if(listaMarcados.indexOf(estado) != parseInt(-1))
				listaMarcados.splice(listaMarcados.indexOf(estado), 1);

			if(listaMarcados.indexOf(importancia) != parseInt(-1))
				listaMarcados.splice(listaMarcados.indexOf(importancia), 1);
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
	
	function marcarMensajesComo(valor) {
		window.open("/compromisomx/MostrarBandeja/marcarMensajesComo?lista="+listaId.toString()+"&idCarpeta="+${carpeta.id}+"&val="+valor+"&tipo="+'${tipoOrdenacion}'+"&orden="+'${modo}'+"&max=5&offset="+${num}, "_self");
	}
	
	function buscarContactos(valor) {
		var lista = '${misContactos.nombreCompleto}';
		var listaID = '${misContactos.id}';

		lista = lista.substring(1, lista.length -1).toLowerCase();
		listaID = listaID.substring(1, listaID.length -1);
		
		if(valor.length > 0 && valor != "" && valor.match("\s*")) {
			for (i = 0; i < lista.split(",").length; i++) { 
				var nombre = lista.split(", ")[i];
				var div = document.getElementById("escoge_dest_emprendedor");
				var id = "#C" + listaID.split(", ")[i].toString();
				
				var r = '${request.contextPath.toString()}';
				if(nombre.match(valor.toLowerCase()) != null && nombre.match(valor.toLowerCase()) != "") {
					$("#escoge_dest_emprendedor").show();
					$(id).show();
				}else{
					$(id).hide();
				}
			}
		} else {
			$("#escoge_dest_emprendedor").hide();
		}
	}
	
		var clic_msj_opcionesformatotexto = 1;
		function div_msj_opcionesformatotexto(){
		if(clic_msj_opcionesformatotexto==1){
			document.getElementById("msj_opcionesformatotexto").style.display = "block";
			clic_msj_opcionesformatotexto = clic_msj_opcionesformatotexto + 1;
		} else{
			document.getElementById("msj_opcionesformatotexto").style.display = "none";
			clic_msj_opcionesformatotexto = 1;
			}
		}

		var clic_despliega_listado_fuentes = 1;
		function div_despliega_listado_fuentes(){
		if(clic_despliega_listado_fuentes==1){
			document.getElementById("despliega_listado_fuentes").style.display = "block";
			clic_despliega_listado_fuentes = clic_despliega_listado_fuentes + 1;
		} else{
			document.getElementById("despliega_listado_fuentes").style.display = "none";
			clic_despliega_listado_fuentes = 1;
			}
		}

		var clic_despliega_tamano_fuentes = 1;
		function div_despliega_tamano_fuentes(){
		if(clic_despliega_tamano_fuentes==1){
			document.getElementById("despliega_tamano_fuentes").style.display = "block";
			clic_despliega_tamano_fuentes = clic_despliega_tamano_fuentes + 1;
		} else{
			document.getElementById("despliega_tamano_fuentes").style.display = "none";
			clic_despliega_tamano_fuentes = 1;
			}
		}

		var clic_despliega_colortextofuente = 1;
		function div_despliega_colortextofuente(){
		if(clic_despliega_colortextofuente==1){
			document.getElementById("despliega_colortextofuente").style.display = "block";
			clic_despliega_colortextofuente = clic_despliega_colortextofuente + 1;
		} else{
			document.getElementById("despliega_colortextofuente").style.display = "none";
			clic_despliega_colortextofuente = 1;
			}
		}

		var clic_despliega_alineaciontexto = 1;
		function div_despliega_alineaciontexto(){
		if(clic_despliega_alineaciontexto==1){
			document.getElementById("despliega_alineaciontexto").style.display = "block";
			clic_despliega_alineaciontexto = clic_despliega_alineaciontexto + 1;
		} else{
			document.getElementById("despliega_alineaciontexto").style.display = "none";
			clic_despliega_alineaciontexto = 1;
			}
		}
		
		var clic_escoge_dest_emprendedor = 1;
		function div_escoge_dest_emprendedor(){
		if(clic_escoge_dest_emprendedor==1){
			document.getElementById("escoge_dest_emprendedor").style.display = "block";
			clic_escoge_dest_emprendedor = escoge_dest_emprendedor + 1;
		} else{
			document.getElementById("escoge_dest_emprendedor").style.display = "none";
			clic_escoge_dest_emprendedor = 1;
			}
		}
		
		function cerrar_div_escoge_contacto() {
			document.getElementById("escoge_contacto").style.display = "none";
			clic_escoge_contacto = 1;
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
                </div>
                <!--/.nav-collapse -->
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
                                <div class="col-md-personalizada_1_izq medida_menu_agenda_1"><p class="txt_cen"><small><strong>Nombre</strong><br>${cuenta.nombre_usuario}</small></p></div>
                                <div class="col-md-personalizada_1 medida_menu_agenda_2"><p class="txt_cen"><small><strong>Mentor</strong><br>${cuenta.mentor.nombreCompleto}</small></p></div>
                                <div class="col-md-personalizada_1 medida_menu_agenda_3"><p class="txt_cen"><small><strong>Rango</strong><br>Bronce</small></p></div>
                                <div class="col-md-personalizada_1 medida_menu_agenda_4"><p class="txt_cen"><small><strong>Equipo</strong><br>${detalleCuenta.equipo}</small></p></div>
                                <div class="col-md-personalizada_1 medida_menu_agenda_5"><p class="txt_cen"><small><strong>Fecha de Autopago</strong><br>${detalleCuenta.fecha_autopago.toString()}</small></p></div>
                                <g:if test="${detalleCuenta.estatus == true}">
                                	<div class="col-md-personalizada_1_der medida_menu_agenda_6"><p class="txt_cen"><small><strong>Estatus</strong><br>Activo</small></p></div>
                                </g:if>
                                <g:else>
                                	<div class="col-md-personalizada_1_der medida_menu_agenda_6"><p class="txt_cen"><small><strong>Estatus</strong><br>Inactivo</small></p></div>
                                </g:else>
                            </div>
                        </div>
                    </div>
                </div>
            <!-- Termina Panel Datos de Usuario -->
        
	            <!-- Empieza Panel de Iconos del Sistema -->
	                <div class="col-md-2">
	                    <div class="panel panel-body sombrapanel">
	                        <div class="medida_acciones_menu"><a href="${request.contextPath}/mostrarBandejaAdmin"><div class="btn_msjadmin_inactivo" title="Mensajes Administrador"></a></div></div>
	                        
	                        <g:if test="${Bandeja.executeQuery("from Bandeja as b where b.nuevo = true and (b.remitente = '"+ cuenta.nombreCompleto +"' or b.destinatario like '%"+ cuenta.nombreCompleto +"%') and b.carpeta = 1").size()> 0}">
	                        	<div class="medida_acciones_menu"><a href="${request.contextPath}/mostrarBandeja"><div class="btn_msjemprendedores_nuevo" title="Mensajes Emprendedor"></a></div></div>
	                        </g:if>
	                        <g:else>
	                        	<div class="medida_acciones_menu"><a href="${request.contextPath}/mostrarBandeja"><div class="btn_msjemprendedores_activo" title="Mensajes Emprendedor"></a></div></div>
	                        </g:else>
	                    
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
                    <h2><strong>Mensajes Emprendedores</strong></h2>
                </div>
                <div class="col-md-3">
                </div>
            </div>
			<!-- Comienza mensaje Correo enviado  -->
	            <div id="mensajeCorreoEnviado" style="display: none; width: auto; position: absolute; margin-left: 32%; margin-top: -4%; z-index: 0; padding: 10px; text-align: center; background-color: lightyellow;">
					<img src="${request.contextPath}/images/iconografia/Notificaciones/pago_procesado_32.png">
					<label id="lblEnviar" style="display:inline; ">Su mensaje se ha enviado con exito!!!</label>
				</div>
			<!-- Termina mensaje Correo enviado  -->
			
            <div class="row">
                <div class="col-md-12 agenda_contenido_fondo">
                	<div class="row" >
                    	<div class="col-md-12">
                        <!-- Inician botones superiores -->
                        	<div class="col-md-2">
                                <div class="agenda_espacio_botones_sup txt_cen">
                                    <button type="button" class="btn btn-gris btn_menu_agenda2 btn_nvocorreo" id="desplegador_mens_nuevo"><strong>Escribir nuevo</strong></button>
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
                                        <div class="cajaseleccionatodo" title="Seleccionar todo" id="div_ckecador"><label class="selecciona_elemento_contacto"><input type="checkbox" id="checador"  onclick="marcar(this);marcarColor();marcar_2(this)" value="false"></label></div>
                                        <div class="cajaboton_1" style="padding-right: 107px;"><button type="button" class="btn btn-gris_peq btn_menu_agenda" id="btn_responder" onclick="responder()" style="display: none;">Responder&nbsp;</button></div>
                                        <div class="cajaboton_1"><button type="button" class="btn btn-gris_peq btn_menu_agenda" id="desplegador_mostrar">Mostrar&nbsp;<img src="${request.contextPath}/images/iconografia/agenda/bullet_rosa2.png"></button></div>
                                        <div id="despliega_mostrar" id="despliega_mostrar" style="display :none">
                                            <div class="row">
                                                <div class="col-md-12"><div class="despliega_mostrar_opcion" onclick="filtrarMensaje(1, '${carpeta.id}')">Todos</div></div>
                                                <div class="col-md-12"><div class="despliega_mostrar_opcion" onclick="filtrarMensaje(2, '${carpeta.id}')">Leídos</div></div>
                                                <div class="col-md-12"><div class="despliega_mostrar_opcion" onclick="filtrarMensaje(3, '${carpeta.id}')">No leídos</div></div>
                                                <div class="col-md-12"><div class="despliega_mostrar_opcion" onclick="filtrarMensaje(4, '${carpeta.id}')">Importantes</div></div>
                                                <div class="col-md-12"><div class="despliega_mostrar_opcion" onclick="filtrarMensaje(5, '${carpeta.id}')">Irrelevantes</div></div>
                                                <div class="col-md-12"><div class="despliega_mostrar_opcion" onclick="filtrarMensaje(6, '${carpeta.id}')">Mentor</div></div>
                                                <div class="col-md-12"><div class="despliega_mostrar_opcion" onclick="filtrarMensaje(7, '${carpeta.id}')">Emprendedores directos</div></div>
                                            </div>
                                        </div>
                                        <div class="cajaboton_2" id="div_mostrarTodo"><button type="button" class="btn btn-gris_peq btn_menu_agenda2" onclick="marcarLeidos()">Mostrar todo como leído</button></div>
                                        <div class="cajaboton_3"><button type="button" class="btn btn-gris_peq btn_menu_agenda btn_menu_agenda_3" style="display: none" id="desplegador_movera">Mover a&nbsp;<img src="${request.contextPath}/images/iconografia/agenda/bullet_rosa2.png"></button></div>
                                        <div id="despliega_movera" style="display :none">
                                            <div class="row">
                                                        <!-- Inicia carpetas de usuario -->
				                                        <g:each var="c" in="${carpetas}" status="i">
															<g:if test="${c.usuario == cuenta.nombreCompleto || c.usuario == '*' && !c.nombre.equals(carpeta.nombre) }">
																<div class="col-md-12"><div class="despliega_movera_opcion" onclick="mover('${c.nombre}');">${c.nombre}</div></div>
															</g:if>
														</g:each>
				                                        <!-- Termina carpetas de usaurio -->
                                                        														
                                                        <div class="col-md-12"><div class="despliega_movera_opcion"><div id="desplegador_movera_opcion" class="crear_nva_carpeta">Nueva carpeta</div></div></div>
                                                        <div class="col-md-12"><div class="linea_menu"></div></div>
                                                        <div class="col-md-12">
                                                        	<div class="despliega_movera_opcion" id="despliega_movera_opcion" style="display: none">
                                                            	<div class="col-md-10"><input type="text" class="form-control texto_campo_desplieguelista" placeholder="Nueva carpeta" name="nombreCarpeta2" id="nombreCarpeta2"></div>
                                                                <div class="col-md-2"><div class="btn_ok_peq" onclick="crearCarpeta2();"></div></div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-2"></div>
	                                        			<div class="col-md-10" id="mensaje_carpeta2" style="display: none;"><div class="msj_carp"><div class="carpeta_error">El nombre de la carpeta ya existe, indica otro nombre.</div></div></div>
	                                        			<div class="col-md-10" id="mensaje_nombre_carpeta_2" style="display: none;"><div class="msj_carp"><div class="carpeta_error">El nombre de la carpeta debe ser de maximo 30 caracteres.</div></div></div>
                                            </div>
                                        </div>
                                        <div class="cajaboton_4"><button type="button" class="btn btn-gris_peq btn_menu_agenda btn_menu_agenda_3" style="display: none" id="desplegador_marcarcomo">Marcar como&nbsp;<img src="${request.contextPath}/images/iconografia/agenda/bullet_rosa2.png"></button></div>
                                        <div id="despliega_marcarcomo" style="display :none">
                                            <div class="row">
                                                <div class="col-md-12"><div class="despliega_marcarcomo_opcion" id="div_leido" style="display: none;" onclick="marcarMensajesComo('l')">Leído</div></div>
                                                <div class="col-md-12"><div class="despliega_marcarcomo_opcion" id="div_no_leido" style="display: none;" onclick="marcarMensajesComo('nl')">No leído</div></div>
                                                <div class="col-md-12"><div class="despliega_marcarcomo_opcion" id="div_importante" style="display: none;" onclick="marcarMensajesComo('i')">Importante</div></div>
                                                <div class="col-md-12"><div class="despliega_marcarcomo_opcion" id="div_no_importante" style="display: none;" onclick="marcarMensajesComo('ni')">Irrelevante</div></div>
                                            </div>
                                        </div>
                                        <g:if test="${carpeta.id == 3}">
                                        	<div class="cajaboton_5"><button type="button" class="btn btn-gris_peq btn_menu_agenda2" id="btnEliminar" onclick="borrar(true)" style="display: none">Eliminar</button></div>
                                        </g:if>
                                        <g:else>
                                        	<div class="cajaboton_5"><button type="button" class="btn btn-gris_peq btn_menu_agenda2" id="btnEliminar" onclick="borrar(false)" style="display: none">Eliminar</button></div>
                                        </g:else>
                                        <div class="cajaboton_5"><button type="button" class="btn btn-gris_peq btn_menu_agenda2" id="btnEliminar_mensaje" onclick="borrarMensaje()" style="display: none">Eliminar</button></div>
                                        <div class="cajaboton_6">
                                            <div class="buscar">
                                                <input required type="text" class="form-control texto_campo_principal campo_buscar" placeholder="Buscar" name="texto" id="texto"><div class="btn_buscarmsj" onclick="busqueda();"> </div>
                                            </div>
                                        </div> 
                                    </div>
                                    <div class="col-md-2">
                                        <div class="agenda_espacio_botones_sup pull-right">
                                            <button type="button" class="btn btn-gris_peq btn_menu_agenda" id="desplegador_organizar">Organizar&nbsp;<img src="${request.contextPath}/images/iconografia/agenda/bullet_rosa2.png"></button>
                                            <div id="despliega_organizar" style="display :none">
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
                                        <div class="col-md-12"><div class="msj_carp_actual"><a href="/compromisomx/MostrarBandeja/index/1?offset=0&max=5">Recibidos (#${Bandeja.executeQuery("from Bandeja as b where (b.destinatario like '%"+ cuenta.nombreCompleto + "%' OR b.remitente = '" +cuenta.nombreCompleto + "') and b.carpeta = ? ", [Carpetas.get(1)]).size()})</a></div></div>
                                        <div class="col-md-12"><div class="msj_carp"><a href="/compromisomx/MostrarBandeja/index/4?offset=0&max=5">Borradores (#${Bandeja.countByRemitenteLikeAndCarpeta(cuenta.nombreCompleto, Carpetas.get(4));})</a></div></div>
                                        <div class="col-md-12"><div class="msj_carp"><a href="/compromisomx/MostrarBandeja/index/2?offset=0&max=5">Enviados (#${Bandeja.countByRemitenteLikeAndCarpeta(cuenta.nombreCompleto, Carpetas.get(2));})</a></div></div>
                                        <div class="col-md-12"><div class="msj_carp"><a href="/compromisomx/MostrarBandeja/index/3?offset=0&max=5">Papelera (#${Bandeja.countByRemitenteLikeAndCarpeta(cuenta.nombreCompleto, Carpetas.get(3));})</a></div></div>
                                        <div class="col-md-12"><div class="msj_carp"><a style="cursor: pointer;" id="desplegador_carpetas" >Carpetas&nbsp;<img src="${request.contextPath}/images/iconografia/agenda/bullet_rosa2.png" id="img_carpetas"></a></div></div>
                                       
                                      	<div id="despliega_carpetas" style="display: none;">
                                      	<div class="col-md-12"><div class="linea_menu"></div></div>
                                      		<!-- Inicia carpetas de usuario -->
	                                        <g:each var="carpeta" in="${carpetas}" status="i">
												<g:if test="${carpeta.usuario == cuenta.nombreCompleto}">
													<div class="col-md-12">
													<div class="col-md-10" onmouseover="mostrarOpEliminar(${carpeta.id})" onmouseout="ocultarImagen(${carpeta.id})" id="${i}">
														<div class="msj_carp">
															<a onclick="cambiarNombre('${carpeta.id}', '${i}', '${carpeta.nombre}')" style="cursor: pointer;">${carpeta.nombre} (#${Bandeja.countByRemitenteLikeAndCarpeta(cuenta.nombreCompleto, Carpetas.get(carpeta.id));})</a>
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
	                                        <div class="col-md-10" id="mensaje_nombre_carpeta" style="display: none;"><div class="msj_carp"><div class="carpeta_error">El nombre de la carpeta debe ser de maximo 30 caracteres.</div></div></div>
	                                        <div class="col-md-12"><div class="linea_menu"></div></div>
                                      	</div>
                                        
                                        <div class="col-md-12"><div class="msj_carp_actual"><a style="cursor: pointer;" id="desplegador_contactos">Contactos&nbsp;<img src="${request.contextPath}/images/iconografia/agenda/bullet_rosa2.png" id="img_contactos"></a></div></div>
                                        <div class="col-md-12" id="despliega_contactos" style="display: none;">
                                        <div class="col-md-12"><div class="linea_menu"></div></div>
	                                        <!-- Empieza contactos de usuario -->
	                                         <g:each in="${misContactos}" var="contacto">
	                                        	<div class="col-md-12" id="contacto" onmouseenter="mostrar_infromacion_contacto(${contacto.id})" onmouseleave="ocultar_informacion(${contacto.id})">
	                                        		<div class="msj_carp_contacto" ><a style="cursor: pointer;" >${contacto.nombreCompleto}</a></div>
													<g:if test="${contacto.mentor instanceof Cuenta }">
														<div class="modal_contacto" style="display: none;" id="${contacto.id}">
			                                            	<div class="row">
				                                            	<g:if test="${contacto.id == cuenta.mentor.id}">
				                                            		<div class="col-md-12"><small><strong>${contacto.nombreCompleto}</strong><small> (${contacto.nombre_usuario})</small><br><strong>Mentor</strong></small></div>
				                                                	<div class="col-md-12"><div class="btn_mensajecontacto" onclick="$('#despliega_mens_nuevo').show();"></div></div>
				                                            	</g:if>
				                                            	<g:else>
				                                            		<div class="col-md-12"><small><strong>${contacto.nombreCompleto}</strong><small> (${contacto.nombre_usuario})</small><br><strong>Emprendedor</strong></small></div>
				                                                	<div class="col-md-12"><div class="btn_mensajecontacto" onclick="$('#despliega_mens_nuevo').show();"></div></div>
				                                            	</g:else>
			                                                </div>
			                                            </div>
													</g:if>
													<g:else>
														<div class="modal_contacto" style="display: none;" id="${contacto.id}">
			                                            	<div class="row">
				                                            	<g:if test="${contacto.id.toString().equals(cuenta.mentor.id.toString())}">
				                                            		<div class="col-md-12"><small><strong>${contacto.nombreCompleto}</strong><small> (${contacto.nombre_usuario})</small><br><strong>Mentor</strong></small></div>
				                                                	<div class="col-md-12"><div class="btn_mensajecontacto" onclick="$('#despliega_mens_nuevo').show();"></div></div>
				                                            	</g:if>
				                                            	<g:else>
				                                            		<div class="col-md-12"><small><strong>${contacto.nombreCompleto}</strong><small> (${contacto.nombre_usuario})</small><br><strong>Emprendedor</strong></small></div>
				                                                	<div class="col-md-12"><div class="btn_mensajecontacto" onclick="$('#despliega_mens_nuevo').show();"></div></div>
				                                            	</g:else>
			                                                </div>
			                                            </div>
													</g:else>
												</div>
											</g:each>
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
                        	
                            <div class="contenedor_mensajes tabla_buscador_1" id="lista_mensajes">
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
	                                        <div class="col_mensajes_2_a"><label><input  id="check${i}" name="${bandeja.id}" type="checkbox" onclick="marcar2(this, ${i}, ${bandeja.id}); anadirLista(${bandeja.status.toString()}, ${bandeja.relevante.toString()}, this)"/></label></div>
	                                        <g:if  test="${bandeja.status == false }">
	                                        	<div class="col_mensajes_2_b"><img src="${request.contextPath}/images/iconografia/agenda/bullet_rosa.png"></div>
	                                        </g:if>
	                                        <g:else>
	                                        	<div class="col_mensajes_2_b"><img id="estado_mensaje" src="${request.contextPath}/images/iconografia/agenda/bullet_gris.png"></div>
	                                        </g:else>
	                                        <g:if test="${carpeta.id.toString().equals("2")}">
	                                        	<g:if test="${bandeja.remitente.length() > 17}">
		                                        	<div class="col_mensajes_2_c"  onclick="mostrarMensaje('${bandeja.id}');"><a href="#">${bandeja.destinatario.substring(0, 14)}...</a></div>
		                                        </g:if>
		                                        <g:else>
		                                        	<div class="col_mensajes_2_c"  onclick="mostrarMensaje('${bandeja.id}')"><a href="#">${bandeja.destinatario}</a></div>
		                                        </g:else>
	                                        </g:if>
	                                        <g:else>
	                                        	<g:if test="${bandeja.remitente.length() > 17}">
		                                        	<div class="col_mensajes_2_c"  onclick="mostrarMensaje('${bandeja.id}')"><a href="#">${bandeja.remitente.substring(0, 14)}...</a></div>
		                                        </g:if>
		                                        <g:else>
		                                        	<div class="col_mensajes_2_c"  onclick="mostrarMensaje('${bandeja.id}')"><a href="#">${bandeja.remitente}</a></div>
		                                        </g:else>
	                                        </g:else>
	                                        <div class="col_mensajes_2_d"  onclick="mostrarMensaje('${bandeja.id}')">
	                                            <div class="msj_prev_asunto">${bandeja.asunto}</div>
	                                            <g:if test="${(bandeja.asunto.length() + bandeja.cuerpo.replaceAll('\\<.*?\\>', '').length()) < 50}">
	                                            	<div class="msj_prev_contenido">&nbsp; &lt;${bandeja.cuerpo.replaceAll('\\<.*?\\>', '')}&gt;</div>
	                                            </g:if>
	                                            <g:else>
	                                            	<div class="msj_prev_contenido">&nbsp; &lt;${bandeja.cuerpo.replaceAll('\\<.*?\\>', '').substring(0, (50 - bandeja.asunto.length()))}&gt;</div>
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
	                                        <div class="col_mensajes_2_i"><a class="msj_btn_borrar" href="/compromisomx/MostrarBandeja/moverPapelera/${bandeja.id}" title="Eliminar este mensaje"></a></div>
	                                    </div>
	                                </div>
	                                </g:each>
                                </g:else>
			                     
                                  <!-- Termina fila de correo -->
                        	</div>
                        	<!-- Termina Listado de Mensajes -->
                        	
                        	<div class="row">
	                        	<div class="col-md-12">
	                        		<div>
	                        			<div class="row">
	                        				<div class="col-md-12" id="barra_min" style="display: none;">
				                                <div class="rdcta_msj_tit"><label id="div_mensajenuevo">Redactar mensaje</label>
				                                    <div class="rdcta_msj_menuventana_cerrar pull-right"></div>
				                                    <div class="rdcta_msj_menuventana_minimizar pull-right" id="btn_maximizar" title="Maximizar"></div>
				                                </div>
				                            </div>
				                        </div>
				                    </div>
	                            </div>
	                        </div>
                        	
                        	<!-- Comienza Redactar Mensaje -->
                            <div class="row" id="despliega_mens_nuevo" style="display: none;">
                                <div class="col-md-12">
                                	<!-- Comienzan Listado de Emprendedores -->
                                    <div id="escoge_dest_emprendedor" style="display: none;">
                                        <!-- Empieza elemento de listado de Destinatarios Emprendedores -->
                                        <g:each in="${misContactos}" var="contacto">
                                        	<g:if test="${contacto instanceof Cuenta}">
                                        		<div class="row elemento_dest_emprendedor" onclick="agregarContacto2('${contacto.id}')" id="C${contacto.id}">
													<div class="col-md-3"><img src="${request.contextPath}/images/iconografia/datosusuario/imagen_usuario_48.png" class="img_emprendedor"></div>
													<div class="col-md-9"><strong><small> ${contacto.nombreCompleto} </small></strong><br><small>Categoría Platino</small><img src="${request.contextPath}/images/iconografia/categorias/Normal/Bronce_16.png"></div>
												</div>
                                        	</g:if>
                                        </g:each>
                                        <!-- Termina elemento de listado de Destinatarios Emprendedores -->
                                    </div>
                                	<!-- Terminan Listado de Emprendedores-->
                                     	
                                    <div id="redactar_msj">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="rdcta_msj_tit"><label id="div_mensajeprin">Redactar mensaje</label>
                                                    <div class="rdcta_msj_menuventana_cerrar pull-right" onClick="$('#despliega_mens_nuevo').hide()"></div>
                                                    <div class="rdcta_msj_menuventana_minimizar pull-right" id="btn_minimizar" title="Minimizar"></div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <!-- Comienza ventana de contactos -->
                                                    <div id="escoge_contacto">
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="escoge_contacto_tit">
                                                                    Escoger contacto
                                                                    <div class="escoge_contacto_menuventana_cerrar" onclick="cerrar_div_escoge_contacto()"></div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-12">
                                                                <div class="row selecciona_todos_contactos">
                                                                    <div class="col-md-1"><label><input type="checkbox" id="contactos_todos" name="" onChange="agregarTodos(this)" value="false"></label></div>
                                                                    <div class="col-md-11">Seleccionar todos los contactos</div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-12 lista_contactos">
                                                                <!-- Comienza Elemento de Contacto -->
                              									<g:each in="${misContactos}" var="contacto">
	                                                                    <g:if test="${contacto.mentor instanceof Cuenta }">
	                                                                    	<div class="row elemento_contacto">
	                                                                    		<g:if test="${contacto.id == cuenta.mentor.id}">
	                                                                    			<div class="col-md-1"><div class="txt_izq"><label class="selecciona_elemento_contacto"><input type="checkbox" id="combo_contacto${contacto.id}" name="" onChange="agregarContacto(this, '${contacto.id}')" value="false"></label></div></div>
			                                                                    	<div class="col-md-11"><strong>${contacto.nombreCompleto}</strong><em> ${contacto.nombre_usuario} <small>Mentor</small></em></div>
								                                            	</g:if>
								                                            	<g:else>
								                                            		<div class="col-md-1"><div class="txt_izq"><label class="selecciona_elemento_contacto"><input type="checkbox" id="combo_contacto${contacto.id}" name="" onChange="agregarContacto(this, '${contacto.id}')" value="false"></label></div></div>
			                                                                    	<div class="col-md-11"><strong>${contacto.nombreCompleto}</strong><em> ${contacto.nombre_usuario} <small>Emprendedor directo</small></em></div>
								                                            	</g:else>
			                                                                </div>
	                                                                   	</g:if>
	                                                                   	<g:else>
	                                                                   		<div class="row elemento_contacto">
			                                                                    <g:if test="${contacto.id == cuenta.mentor.id}">
	                                                                    			<div class="col-md-1"><div class="txt_izq"><label class="selecciona_elemento_contacto"><input type="checkbox" id="combo_contacto${contacto.id}" name="" onChange="agregarContacto(this, '${contacto.id}')" value="false"></label></div></div>
			                                                                    	<div class="col-md-11"><strong>${contacto.nombreCompleto}</strong><em> ${contacto.nombre_usuario} <small>Mentor</small></em></div>
								                                            	</g:if>
								                                            	<g:else>
								                                            		<div class="col-md-1"><div class="txt_izq"><label class="selecciona_elemento_contacto"><input type="checkbox" id="combo_contacto${contacto.id}" name="" onChange="agregarContacto(this, '${contacto.id}')" value="false"></label></div></div>
			                                                                    	<div class="col-md-11"><strong>${contacto.nombreCompleto}</strong><em> ${contacto.nombre_usuario} <small>Emprendedor directo</small></em></div>
								                                            	</g:else>
			                                                                </div>
	                                                                   	</g:else>
	                                                            </g:each>
                                                                <!-- Termina Elemento de Contacto -->
                                                            </div>
                                                        </div>
                                                    </div>
                                                <!-- Termina ventana de contactos -->
                                                <div class="rdcta_msj_menuventana_para">
                                                    <div class="col-md-1 clic_para" onClick="div_escoge_dest_emprendedor()">Para</div>
                                                    <div class="col-md-10">
                                                    <input type="text" class="ingresa_asunto" placeholder=""  name="" id="destinatario" onfocus="$('#escoge_contacto').hide(); $('#escoge_dest_emprendedor').hide();" onkeyup="buscarContactos(this.value)">
                                     		        <input type="hidden" name="destinatario" id="destinos" value=""/>
                                                        <g:each in="${misContactos}" var="contacto">
                                                        	<div class="destcorreo" id="Contacto${contacto.id}" style="display: none;">${contacto.nombreCompleto}<div class="cerrardestcorreo" onclick="eliminarContacto('${contacto.id}')"></div></div>
                                                        </g:each>
                                                    </div>
                                                    <div class="col-md-1">
                                                        <div class="rdcta_msj_agregar" id="desplegador_contactos" onclick="$('#escoge_contacto').slideToggle('fast');"></div>
                                                    </div>
                                                </div>
                                                <div class="rdcta_msj_menuventana_asunto">
                                                    <div class="col-md-1">Asunto</div>
                                                    <div class="col-md-11"><input type="text" class="ingresa_asunto" placeholder="" name="asunto" id="i_asunto" required onfocus="$('#escoge_contacto').hide(); $('#escoge_dest_emprendedor').hide();"></div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <section class="redacta_mensaje" id="cuerpoMensaje" onkeyup="setTexto()" name="cuerpo" contentEditable="true" onfocus="$('#escoge_contacto').hide(); $('#escoge_dest_emprendedor').hide();">Esto es el mensaje</section>
                                                <textarea rows="10" cols="100" name="cuerpoHTML" id="contenidoMensaje" style="display: none;">
												</textarea>
                                                <g:hiddenField value="${cuenta.nombreCompleto}" name="remitente" required="required" readonly="readonly"/>	
                                            </div>
                                            <!-- Comienza controles del mensaje -->
                                            <div class="col-md-12">
                                                <div class="rdcta_msj_controles">
                                                    <div class="row">
                                                        <div class="col-md-2">
                                                            	<input type="submit" value="Enviar" class="btn btn_enviarmensaje" onclick="return mostrarMensajeEnvio()"/>
                                                        </div>
                                                        <div class="col-md-7">
                                                            <div id="msj_opcionesformatotexto">
                                                                <div class="formatotextofuente" onmouseover="$('#tipoLetra').prop('title', 'Fuente');">Sans Serif</div>
                                                                <div class="btn_despliegalista" onClick="div_despliega_listado_fuentes()" onmouseover="$('#msj_opcionesformatotexto').prop('title', 'Fuente');"></div>
                                                                <div id="despliega_listado_fuentes">
                                                                	<input type="button" class="listado_fuentes_opcion" onclick="cambiarLetra('Sans Serif');" value="Sans Serif" style="border: none;"/>
                                                                    <input type="button" class="listado_fuentes_opcion" onclick="cambiarLetra('Serif');" value="Serif" style="border: none;"/>
                                                                    <input type="button" class="listado_fuentes_opcion" onclick="cambiarLetra('Wide')" value="Wide" style="border: none;"/>
                                                                    <input type="button" class="listado_fuentes_opcion" onclick="cambiarLetra('Narrow')" value="Narrow" style="border: none;"/>
                                                                    <input type="button" class="listado_fuentes_opcion" onclick="cambiarLetra('Comic Sans MS')" value="Comic Sans MS" style="border: none;"/>
                                                                    <input type="button" class="listado_fuentes_opcion" onclick="cambiarLetra('Courier New')" value="Courier New" style="border: none;"/>
                                                                    <input type="button" class="listado_fuentes_opcion" onclick="cambiarLetra('Garamond')" value="Garamond" style="border: none;"/>
                                                                    <input type="button" class="listado_fuentes_opcion" onclick="cambiarLetra('Georgia')" value="Georgia" style="border: none;"/>
                                                                    <input type="button" class="listado_fuentes_opcion" onclick="cambiarLetra('Tahoma')" value="Tahoma" style="border: none;"/>
                                                                    <input type="button" class="listado_fuentes_opcion" onclick="cambiarLetra('Trebuchet MS')" value="Trebuchet MS" style="border: none;"/>
                                                                    <input type="button" class="listado_fuentes_opcion" onclick="cambiarLetra('Verdana')" value="Verdana" style="border: none;"/>
                                                                </div>
                                                                <div class="tamanotextofuente"></div>
                                                                <div class="btn_despliegalista" onClick="div_despliega_tamano_fuentes()"></div>
                                                                <div id="despliega_tamano_fuentes" name="tamañoLetra" >
                                                                    <input type="button" class="tamano_fuentes_opcion" onclick="cambiarTamaño(1)" value="Pequeña" style="border: none;"/>
                                                                    <input type="button" class="tamano_fuentes_opcion" onclick="cambiarTamaño(2)"value="Normal" style="border: none;"/>
                                                                    <input type="button" class="tamano_fuentes_opcion" onclick="cambiarTamaño(5)"value="Grande" style="border: none;"/>
                                                                    <input type="button" class="tamano_fuentes_opcion" onclick="cambiarTamaño(7)"value="Extragrande" style="border: none;"/>
                                                                </div>
                                                                <div class="separador1"></div>
                                                                <input type="button" class="btn_textobold" onclick="bold()" style="border: none;" />
                                                                <input type="button" class="btn_textoitalica" onclick="italic()" style="border: none;" />
                                                                <input type="button" class="btn_textounderline" onclick="underline()" style="border: none;" />
                                                                <div class="colortextofuente"></div>
                                                                <div class="btn_despliegalista" onClick="div_despliega_colortextofuente()"></div>
                                                                <div id="despliega_colortextofuente">
                                                                	<input type="button" class="opcion_color opcion_color_navy" onclick="cambiarColor('navy')">
                                                                	<input type="button" class="opcion_color opcion_color_blue" onclick="cambiarColor('blue')">
                                                                	<input type="button" class="opcion_color opcion_color_teal" onclick="cambiarColor('teal')">
                                                                	<input type="button" class="opcion_color opcion_color_aqua" onclick="cambiarColor('aqua')">
                                                                	<input type="button" class="opcion_color opcion_color_olive" onclick="cambiarColor('olive')">
                                                                	<input type="button" class="opcion_color opcion_color_green" onclick="cambiarColor('green')">
                                                                	<input type="button" class="opcion_color opcion_color_lime" onclick="cambiarColor('lime')">
                                                                	<input type="button" class="opcion_color opcion_color_yellow" onclick="cambiarColor('yellow')">
                                                                	<input type="button" class="opcion_color opcion_color_red" onclick="cambiarColor('red')">
                                                                	<input type="button" class="opcion_color opcion_color_maroon" onclick="cambiarColor('maroon')">
                                                                	<input type="button" class="opcion_color opcion_color_purple" onclick="cambiarColor('purple')">
                                                                	<input type="button" class="opcion_color opcion_color_fuchsia" onclick="cambiarColor('fuchsia')">
                                                                	<input type="button" class="opcion_color opcion_color_white" onclick="cambiarColor('white')">
                                                                	<input type="button" class="opcion_color opcion_color_silver" onclick="cambiarColor('silver')">
                                                                	<input type="button" class="opcion_color opcion_color_gray" onclick="cambiarColor('gray')">
                                                                	<input type="button" class="opcion_color opcion_color_black" onclick="cambiarColor('black')">
                                                                </div>
                                                                <input type="button" class="btn_textolista" onclick="listaNumerica()" style="border: none;">
                                                                <input type="button" class="btn_textobullet" onclick="listaVineta()" style="border: none;">
                                                                <div class="separador1"></div>
                                                                <div class="alineaciontextofuente"></div>
                                                                <div class="btn_despliegalista" onClick="div_despliega_alineaciontexto()"></div>
                                                                <div id="despliega_alineaciontexto">
                                                                	<input type="button" class="alineaciontextoder" onclick="identar('justifyRight')">
                                                                	<input type="button" class="alineaciontextocen" onclick="identar('justifyCenter')">
                                                                	<input type="button" class="alineaciontextoizq" onclick="identar('justifyLeft')">
                                                                </div>
                                                                <div class="separador1"></div>
                                                                <div class="btn_subindice"></div>
                                                            </div>
                                                            <div class="btn_formatotexto" onClick="div_msj_opcionesformatotexto()"></div>
                                                            <div class="msj_btn_alerta" onclick="cambiarImportancia2()" id="nvo_msj_div"></div>
                                                            <input type="hidden" value="false" id="nvo_msj_importante" name="relevante">
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="msj_estado_borrar" onclick="descartarMensaje()"></div>
                                                            <div class="msj_estado" style="display: none;">Guardado</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Termina controles del mensaje -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Termina Redactar Mensaje -->

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
	                            	<div class="col-md-6">
	                            		<g:if test="${num == 0}">
		                            		<div class="pager_primero_inactivo" title="Primera página"></div>
		                                	<div class="pager_anterior_inactivo" title="Página anterior" id="pag_izq"></div>
		                                </g:if>
		                                <g:else>
		                                	<div class="pager_primero" onclick="first()" title="Primera página"></div>
		                                	<div class="pager_anterior" onclick="prev_page()" title="Página anterior" id="pag_izq"></div>
		                                </g:else>
		                                <g:if test="${(Integer.parseInt(total.toString()) - Integer.parseInt(num.toString())) <=  5}">
		                                	<div class="pager_siguiente_inactivo" title="Página siguiente"></div>
		                                	<div class="pager_ultimo_inactivo" title="Última página" id="pag_der"></div>
		                                </g:if>
		                                <g:else>
		                                	<div class="pager_siguiente" onclick="next_page()" title="Página siguiente" id="pag_der"></div>
		                                	<div class="pager_ultimo" title="Última página" onclick="last()"></div>
		                                </g:else>
	                            	</div>
	                            </div>
                        	</g:else>
                        </div>
                    </div>
                    <!-- Termina paginación -->
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
            </div>
            </div>
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
        <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> -->
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="${request.contextPath}/js/bootstrap.min.js"></script>
	</body>
</html>