
<!DOCTYPE html>
<html lang="en">
  	<head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="Bootstrap datetimepicker : Date/time picker widget for Twitter Bootstrap v3">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Compromiso MX</title>
    
        <!-- Bootstrap -->
        <link href="${request.contextPath}/css/jsDatePick_ltr.min.css" rel="stylesheet">
        <link href="${request.contextPath}/css/bootstrap.css" rel="stylesheet">
        <link href="${request.contextPath}/css/navbar.css" rel="stylesheet">
        <link href="${request.contextPath}/css/estilos.css" rel="stylesheet">
        <link href="${request.contextPath}/css/piepag.css" rel="stylesheet">
        <link href="${request.contextPath}/css/botones.css" rel="stylesheet">
       
        <link href="${request.contextPath}/css/calendario.css" rel="stylesheet" type="text/css" media="all" />
        <link href="${request.contextPath}/font-awesome-4.2.0/css/font-awesome.min.css" rel="stylesheet">
        <link href="${request.contextPath}/css/envios.css" rel="stylesheet">
               
       
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script> 
        
        <script src="${request.contextPath}/js/bootstrap.min.js"></script>
        <script src="${request.contextPath}/js/bootstrap-datetimepicker.min.js"></script>
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
                        <li><a href="${request.contextPath}/envios">Envíos</a></li>
                        <li><a href="${request.contextPath}/ayudaYSoporte">Ayuda</a></li>
                        <li><a href="${request.contextPath}/registrar" id="nav2"><img src="${request.contextPath}/images/iconografia/header/registrar_48.png" alt="Registrar" id="panel_accionesheader"></a></li>
                        <li><a href="#" id="nav2"><img src="${request.contextPath}/images/iconografia/header/tienda_48.png" alt="Tienda Social" id="panel_accionesheader"></a></li>
                        <li><a href="#" id="nav2"><img src="${request.contextPath}/images/iconografia/header/idioma_48.png" alt="Cambiar Idioma" id="panel_accionesheader"></a></li>
                        <li><a href="#" id="nav2"><img src="${request.contextPath}/images/iconografia/header/salir_48.png" alt="Salir" id="panel_accionesheader"></a></li>
                        <li><a href="#" id="nav2"><img src="${request.contextPath}/images/iconografia/header/donar_116_43.png" alt="Donar" id="panel_accionesheader"></a></li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </div>
    
        <!-- Termina Barra Navegación -->
    
        <div class="container theme-showcase" role="main">
            <div class="page-header">
            </div>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            
            <!-- Inicia Sección Datos y Acciones Principales -->
            <div class="row">
        
            <!-- Comienza Panel Emprendedor -->
                <div class="col-md-3">
                    <div class="panel panel-body sombrapanel">
                        <p class="pull-left"><img src="${request.contextPath}/images/iconografia/datosusuario/imagen_usuario_48.png" hspace="5" vspace="5"></p>
                        <strong><small>Nombre Emprendedor</small></strong><br>
                        <small>Categoría Platino</small><img src="${request.contextPath}/images/iconografia/categorias/Normal/Bronce_16.png"><br>
                        <p class="datos_emprendedor_mensaje">Mensaje</p>
                    </div>
                </div>
            <!-- Termina Panel Emprendedor -->
            
             <div class="col-md-7">
                    <div class="panel panel-body sombrapanel">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="col-md-personalizada_1_izq medida_menu_agenda_1"><p class="txt_cen"><small><strong>Nombre</strong><br>YoshihikoKikuchi007</small></p></div>
                                <div class="col-md-personalizada_1 medida_menu_agenda_2"><p class="txt_cen"><small><strong>Mentor</strong><br>Ana MarthaNosMuevesTú</small></p></div>
                                <div class="col-md-personalizada_1 medida_menu_agenda_3"><p class="txt_cen"><small><strong>Rango</strong><br>Bronce</small></p></div>
                                <div class="col-md-personalizada_1 medida_menu_agenda_4"><p class="txt_cen"><small><strong>Equipo</strong><br>Fuego</small></p></div>
                                <div class="col-md-personalizada_1 medida_menu_agenda_5"><p class="txt_cen"><small><strong>Fecha de Autopago</strong><br>28 Diciembre 2014</small></p></div>
                                <div class="col-md-personalizada_1_der medida_menu_agenda_6"><p class="txt_cen"><small><strong>Estatus</strong><br>Activo</small></p></div>
                            </div>
                        </div>
                    </div>
                </div>
            
            
            
        
            <!-- Inicia Panel Datos de Usuario 
                <div class="col-md-7">
                    <div class="panel panel-body sombrapanel">
                    	<div class="row">
                        	<div class="col-md-12">
                            	<div class="col-md-personalizada_1_izq medida_menu_reg_1"><a href="${request.contextPath}/cuenta/index.gsp"><small>Información de<br>la Cuenta</small></a></div>
                            	<div class="col-md-personalizada_1 medida_menu_reg_2"><a href="${request.contextPath}/cuenta/informacionlegal.gsp"><small>Información<br>Legal</small></a></div>
                            	<div class="col-md-personalizada_1 medida_menu_reg_3"><a href="${request.contextPath}/cuenta/perfil.gsp"><small>Perfil</small></a></div>
                            	<div class="col-md-personalizada_1 medida_menu_reg_4"><a href="${request.contextPath}/cuenta/contraseña.gsp"><small>Contraseña</small></a></div>
                            	<div class="col-md-personalizada_1 medida_menu_reg_5"><a href="${request.contextPath}/cuenta/direccion.gsp"><small>Dirección</small></a></div>
                            	<div class="col-md-personalizada_1 medida_menu_reg_6"><a href="${request.contextPath}/cuenta/nuestromovimiento.gsp"><small>Nuestro<br>Movimiento</small></a></div>
                            	<div class="col-md-personalizada_1 medida_menu_reg_7"><small>Notificaciones</small></div>
                            	<div class="col-md-personalizada_1 medida_menu_reg_8"><a href="${request.contextPath}/cuenta/infocoaplicable.gsp"><small>Información<br>Coaplicante</small></a></div>
                            	<div class="col-md-personalizada_1_der medida_menu_reg_9"><a href="${request.contextPath}/cuenta/redesociales.gsp"><small>Redes<br>Sociales</small></a></div>
                          </div>
                        </div>
                    </div>
                </div>
            Termina Panel Datos de Usuario -->
        
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


<g:layoutBody />
</div>
          
        
        
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
        
        </div>
        <!-- /container -->
    
       
       
  	</body>
</html>