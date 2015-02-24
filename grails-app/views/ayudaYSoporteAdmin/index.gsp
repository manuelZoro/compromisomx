<!DOCTYPE html>
<html lang="en">
  	<head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Compromiso MX</title>
        <!-- Bootstrap -->
        <link href="${request.contextPath}/css/bootstrap.css" rel="stylesheet">
        <link href="${request.contextPath}/css/navbar.css" rel="stylesheet">
        <link href="${request.contextPath}/css/estilos.css" rel="stylesheet">
        <link href="${request.contextPath}/css/piepag.css" rel="stylesheet">
        <link href="${request.contextPath}/css/botones.css" rel="stylesheet">
        <link href="${request.contextPath}/css/carrusel.css" rel="stylesheet">
        <link href="${request.contextPath}/css/calendario_agenda.css" rel="stylesheet" type="text/css" media="all" />
        <link href="${request.contextPath}/css/mensajes.css" rel="stylesheet">
        <link href="${request.contextPath}/css/mensajeria.css" rel="stylesheet">
        <link href="${request.contextPath}/css/organizacion.css" rel="stylesheet">
        <link href="${request.contextPath}/css/ayudaysoporte.css" rel="stylesheet">      
        <script>		
						
		var clic_redactar_msj = 1;
		function div_redactar_msj(){
		if(clic_redactar_msj==1){
			document.getElementById("redactar_msj").style.display = "block";
			clic_redactar_msj = clic_redactar_msj + 1;
		} else{
			document.getElementById("redactar_msj").style.display = "none";
			clic_redactar_msj = 1;
			}
		}

		function cerrar_div_redactar_msj() {
			document.getElementById("redactar_msj").style.display = "none";
			clic_redactar_msj = 1;
		}
		
		</script>
	</head>    
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
                    <a class="navbar-brand" href="#"><img src="${request.contextPath}/images/institucional/logo_cmx_header.png" border="0"></a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="#">Inicio</a></li>
                        <li><a href="#">Cuenta</a></li>
                        <li><a href="#">Organización</a></li>
                        <li><a href="#">Agenda</a></li>
                        <li><a href="#">Autopago</a></li>            
                        <li><a href="#">Pedidos</a></li>
                        <li><a href="#">Ayuda</a></li>
                        <li><a href="#" id="nav2"><img src="${request.contextPath}/images/iconografia/header/registrar_48.png" alt="Registrar" id="panel_accionesheader"></a></li>
                        <li><a href="#" id="nav2"><img src="${request.contextPath}/images/iconografia/header/tienda_48.png" alt="Tienda Social" id="panel_accionesheader"></a></li>
                        <li><a href="#" id="nav2"><img src="${request.contextPath}/images/iconografia/header/idioma_48.png" alt="Cambiar Idioma" id="panel_accionesheader"></a></li>
                        <li><a href="#" id="nav2"><img src="${request.contextPath}/images/iconografia/header/salir_48.png" alt="Salir" id="panel_accionesheader"></a></li>
                        <li><a href="#" id="nav2"><img src="${request.contextPath}/images/iconografia/header/donar_116_43.png" alt="Donar" id="panel_accionesheader"></a></li>
                    </ul>
                </div>
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
                        <strong><small>Yoshihiko Kikuchi Martínez</small></strong><br>
                        <small>Categoría Platino</small><img src="${request.contextPath}/images/iconografia/categorias/Normal/Bronce_16.png"><br>
                        <p class="datos_emprendedor_mensaje">Faltan 10 días para el reembolso.</p>
                    </div>
                </div>
            <!-- Termina Panel Emprendedor -->
        
            <!-- Inicia Panel Datos de Usuario -->
                <div class="col-md-7">
                    <div class="panel panel-body sombrapanel">
                        <div class="row">
                            <div class="col-md-5 sop_aviso_horario">
                            	<strong>Horario de atención a cliente</strong><br><small>Lunes a viernes de 9:00 am a 5:00 pm (PST)</small>
                            </div>
                            <div class="col-md-7 sop_aviso_info">
                            	<small>Por favor permita que transcurra un plazo de 48 horas<br>(excluyendo sábados, domingos y días festivos) para responderle.</small>
                            </div>
                        </div>
                    </div>
                </div>
            <!-- Termina Panel Datos de Usuario -->
        
            <!-- Empieza Panel de Iconos del Sistema -->
                <div class="col-md-2">
                    <div class="panel panel-body sombrapanel">
                        <div class="medida_acciones_menu"><div class="btn_msjadmin"></div></div>
                        <div class="medida_acciones_menu"><div class="btn_msjemprendedores"></div></div>
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
                    <h2><strong>Solicitud de ayuda</strong></h2>
                </div>
            </div>
            <div id="todoMensajes" class="row">
                <div class="col-md-12 agenda_contenido_fondo">
                    	<div class="col-md-12">
                        <!-- Inician botones superiores -->
                        	<div class="col-md-2">
                                <div class="agenda_espacio_botones_sup txt_cen">                                    
                                </div>
                            </div>
                            <div class="col-md-10">
                            	<div class="row">
                                	<div class="col-md-10 agenda_espacio_botones_sup">
                                        <div class="cajaseleccionatodo" title="Seleccionar todo"></div>
                                        <div class="cajacategoria"><div class="col-md-2"><p><em><big>Categoría:</big></em></p></div></div>
                                        <div class="cajaselcat">
                                       <select class="form-control input-sm texto_campo_principal espaciado_campo_principal" name="Categoria" id="Categoria"
											onchange="subcategoria(this.value)" optionValue="nom_categoria" optionKey="nom_categoria" required>
											<option value="" selected>Seleccionar Movimiento</option>
											<option value="1">Agenda</option>
											<option value="2">Autopago</option>
											<option value="3">Avisos</option>
											<option value="4">Cuenta</option>
											<option value="5">Organización</option>
											<option value="6">Envío</option>
											<option value="7">Regalía</option>
											<option value="8">Varios</option>
										</select>
                                        </div>
                                        <div class="cajasubcategoria"><div class="col-md-2"><p><em><big>Subcategoría:</big></em></p></div></div>  
                                        <div id="tipoSubcategoria" class="cajaselsubcat">
                                        	<select class="form-control input-sm texto_campo_principal espaciado_campo_principal">
                                        		<option>Seleccione una Subcategoria</option>
                                        	</select>
                                        </div>             
                                    </div>                                    
                                </div>
                            </div>
                        <!-- Terminan botones superiores -->
                        </div>
                    <div class="row">
                    	<div class="medida_cont_agenda_ayuda listado_carpetas_ayuda">
                        </div>
                    	<div class="col-md-personalizada_2 medida_cont_agenda_ayuda">
                        	<!-- Comienza Listado de Mensajes -->
                            <div class="contenedor_solicitudesadmin tabla_buscador_ayuda">
                                <!-- Comienza aviso de sin resultados de búsqueda -->
                                <div class="row fila_mensaje_correo msj_nuevo">
                                    <div class="col-md-12 mensaje_busqueda">Solicitudes no respondidas</div>
                                </div>
                                <!--  Termina aviso de sin resultados de búsqueda -->
                                <!-- Comienza fila de correo -->                                
                                <div id="mensajes" class="row fila_mensaje_correo msj_nuevo ">
                                	Selecciona una categoria y subcategoria para mostrar las solicitudes
                                <div class="msj_prev_contenido_ayuda">
                                	
                                </div>
                                </div>
                                <!--  Termina fila de correo -->
                            </div>
                        	<!-- Termina Listado de Mensajes -->                            
                    	</div>
                	</div>
                    <div class="row">
                        <div class="col-md-12">&nbsp;</div>
                    </div>
                </div>  <!-- Termina agenda contenido fondo -->
                <div class="row">
                    <div class="col-md-12">
                        <p>&nbsp;</p>
                    </div>
                </div>
            <!-- Termina Contenido Principal -->
            
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
            <script type="text/javascript">
        	function subcategoria(id) {
		       	var x=id;
		       	if(x=="" || x==3 || x==7){
		    	   	document.getElementById("Subcategoria").options.length=0;
			       	document.getElementById("Subcategoria").disabled=true;
			       	document.getElementById("Subcategoria").options[0]=new Option("Seleccione una Subcategoria","");
			       	var categoria =  x;
			     	var subcategoria = "---";
				 	${remoteFunction( 
		       			controller:'AyudaYSoporteAdmin',
		       			action:'mandarDatos',  
		       			params: '{categoria:categoria, subcategoria:subcategoria}',
						update: 'mensajes'
		    		)}
			   }
			
		       else{
		    	   ${remoteFunction( 
		              	controller:'AyudaYSoporteAdmin',
		              	action:'cargaSubcategoria',  
		           		params:'\'Categoria=\' + x',
						update : 'tipoSubcategoria'
		           )}
			    }
		}
		      
        function mandarDatos(){
        	var categoria =  $("#Categoria").val();
        	var subcategoria =  $("#Subcategoria").val();
		   	${remoteFunction( 
		       	controller:'AyudaYSoporteAdmin',
		       	action:'mandarDatos',  
		       	params: '{categoria:categoria, subcategoria:subcategoria}',
				update: 'mensajes'
				   
		    )}
        }

        function detalleMensaje(id){
            var idMen = id
            ${remoteFunction( 
			       	controller:'AyudaYSoporteAdmin',
			       	action:'detalleMensaje',  
			       	params: '{idMen:idMen}',
					update: 'todoMensajes'		   
			    )}
            }

        function mandarRespuesta(id){
            var id_mensaje = id;
			var texto = document.getElementById("respuesta").value;
			texto = texto.replace(/<[^>]*>/g, '');
			${remoteFunction( 
			       	controller:'AyudaYSoporteAdmin',
			       	action:'insertarRespuesta',  
			       	params: '{id_mensaje:id_mensaje, texto:texto}'			   
			   )}

			window.location.href = '${request.contextPath}/ayudaYSoporteAdmin/index';
            }
        </script>
            <!-- /container -->
            <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
            <!-- Include all compiled plugins (below), or include individual files as needed -->
            <script src="${request.contextPath}/js/bootstrap.min.js"></script>
    	</body>
    </html>