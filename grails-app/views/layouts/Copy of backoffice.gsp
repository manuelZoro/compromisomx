
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="CompromisoMX" content="">
    <meta name="author" content="">
    <title><g:layoutTitle default="CompromisoMX"/></title>
    
       <asset:stylesheet src="bootstrap.min.css"/>
       <asset:stylesheet src="font-awesome.min.css"/>
       <asset:stylesheet src="ionicons.min.css"/>
       <asset:stylesheet src="AdminLTE.css"/>
       
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
        <asset:javascript src="bootstrap.min.js"/>
        <asset:javascript src="AdminLTE/app.js"/> 
        <asset:javascript src="AdminLTE/demo.js"/>
        <script src="http://code.jquery.com/jquery-latest.js"></script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">
                    <img src="http://placehold.it/150x50&text=Logo" alt="">
                </a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="${request.contextPath}/inicio">Inicio</a>
                    </li>
                    <li>
                        <a href="${request.contextPath}/cuenta">Cuenta</a>
                    </li>
                    <li>
                        <a href="${request.contextPath}/organizacion">Organizacion</a>
                    </li>
                    <li>
                        <a href="${request.contextPath}/agenda">Agenda</a>
                    </li>
                    <li>
                        <a href="${request.contextPath}/autopago">Autopago</a>
                    </li>
                    <li>
                        <a href="${request.contextPath}/pedidos">Pedidos</a>
                    </li>
                    <li>
                        <a href="${request.contextPath}/ayudaYSoporte">Ayuda y Soporte</a>
                    </li>
                    <li>
                        <a href="${request.contextPath}/registrar">Registrar</a>
                    </li>
                    <li>
                        <a href="${request.contextPath}/tiendaSocial">Tienda Social</a>
                    </li>
                    <li>
                        <a href="#">Cambiar Idioma</a>
                    </li>
                    <li>
                        <a href="#">Salir</a>
                    </li>
                    <li>
                        <a href="${request.contextPath}/donativos">Donar</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <g:layoutBody/>       
    <!-- Footer -->
    <br>
    <br>
    <hr>
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <ul class="list-inline text-center">
                        <li>
                            <a href="#">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-github fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                    </ul>
                </div>
                 <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <ul class="list-inline text-center">
                        <li>
						<p class="copyright text-muted">Terminos y Condiciones &copy</p>
                        </li>
                        <li>
						<p class="copyright text-muted">Aviso de Privacidad</p>
                        </li>
                        <li>
						<p class="copyright text-muted">Mapa del Sitio</p>
                        </li>
                        <li>
						<p class="copyright text-muted">Contactanos</p>
                        </li>
                    <p class="copyright text-muted"> &copy; 2013 Red de Acción Comunitaria S.A. de C.V. Derechos Reservados</p>
                    </ul>
                </div>
            </div>
        </div>
    </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery Version 1.11.0 -->
    <script src="js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>