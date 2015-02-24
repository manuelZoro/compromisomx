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
	var listaId = [];
	$(document).ready(function(){
		v = false;
	});

	$(document).ready(function(){
		  $("#desplegador_organizar2").click(function(){
		    $("#despliega_organizar2").slideToggle("fast");
			  $("#despliega_mostrar2").hide();
			  $("#despliega_marcarcomo2").hide();
			  $("#despliega_movera2").hide();
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
			document.getElementById("nombreModificado").value = nombre;
		}else{
			window.open("/compromisomx/MostrarBandejaAdmin/index/" + id +"?offset=0&max=5&abierta=true", "_self");
			abierta = true;
		}
	}

	function marcarLeidos(combo){
		var carpeta = ${carpeta.id};
		if(combo.checked && listaId.length > 0)
			window.open("/compromisomx/MostrarBandejaAdmin/marcarMensajes?lista="+listaId.toString()+"&idCarpeta="+carpeta,"_self")
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
		    $("#btnAlerta").addClass("btn_msjalerta");
		    window.open("/compromisomx/MostrarBandejaAdmin/cambiarPrioridad?id="+id+"&idMensaje="+idMensaje,"_self");
		}else{
			document.getElementById("relevanteInput").value = "false";
			$("#imgR").prop('title', 'irrelevante');
			$("#btnAlerta").removeClass("btn_msjalerta");
		    $("#btnAlerta").addClass("msj_btn_alerta");
		    window.open("/compromisomx/MostrarBandejaAdmin/cambiarPrioridad?id="+id+"&idMensaje="+idMensaje,"_self");
		}
	}

	function descartarMensaje(){
		location.href =  "${request.contextPath}/mostrarBandeja/index";
	}
	function setTexto(){
		var contenido = document.getElementById('cuerpo').innerHTML;                
		document.getElementById('cuerpoHTML').value = contenido;
	}
	$(document).ready(function (){
		document.getElementById("cuerpo").innerHTML = "Escribe aqui tu mensaje";
		document.getElementById("cuerpoHTML").value = "Escribe aqui tu mensaje";
});

	function mostrarMensaje(id){
		$("#contenido_mensaje").show();
		$("#lista_mensajes").hide();
		$("#contenido_mensaje").load("/compromisomx/MostrarBandejaAdmin/contenidoMensaje?idMensaje="+id);
	}

	function eliminarCarpeta(nombre) {
		$("#mensajeEliminar").show();
		var label = "Está seguro de eliminar la carpeta '" +  nombre + "'? (todos los mensajes que contiene se enviarán a la papelera)'";
		document.getElementById("lblEliminar").innerHTML = label;
		document.getElementById("entradaCarpeta").value = nombre;
	}

	function modificarNombre(id, i) {
		var nombre = document.getElementById("nombreModificado").value;
		var nombreCarpeta = document.getElementById("carpeta").value;

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