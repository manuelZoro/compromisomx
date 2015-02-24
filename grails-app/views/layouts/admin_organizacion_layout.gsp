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
       
        <link href="${request.contextPath}/font-awesome-4.2.0/css/font-awesome.min.css" rel="stylesheet">
        <link href="${request.contextPath}/css/organizacion.css" rel="stylesheet">   
        <link href="${request.contextPath}/css/adminorganizacion.css" rel="stylesheet"> 
        
        <link href="${request.contextPath}/css/arbol.css" rel="stylesheet">    
        <link href="${request.contextPath}/css/carrusel.css" rel="stylesheet">  
       
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