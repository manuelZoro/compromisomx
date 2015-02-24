<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="admin_organizacion_layout"/>
<title>Insert title here</title>
</head>
<body>
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
                        <p class="pull-left"><img src="images/iconografia/datosusuario/imagen_usuario_48.png" hspace="5" vspace="5"></p>
                        <strong><small>Yoshihiko Kikuchi Martínez</small></strong><br>
                        <small>Categoría Platino</small><img src="images/iconografia/categorias/Normal/Bronce_16.png"><br>
                        <p class="datos_emprendedor_mensaje">Faltan 10 días para el reembolso.</p>
                    </div>
                </div>
            <!-- Termina Panel Emprendedor -->
        
            <!-- Inicia Panel Datos de Usuario -->
                <div class="col-md-7">
                    <div class="panel panel-body sombrapanel">
                        <div class="row">
                        	<div class="col-md-12">
                            	<div class="col-md-2 col-md-personalizada_3_izq msj_emprendedores_caja_1">
                                	<div class="msj_emprendedores_txt1">Emprendedores</div>
                                	<div class="msj_emprendedores_txt2">Pendientes por ubicar</div>
                                </div>
                                <!-- Comienza Emprendedor para Acomodar --> 
								<div id="contenedor_19" class="col-md-4 col-md-personalizada_3">
							    	<div class="emprendedor_arrastre" draggable="true">
							            <div class="row">
							                <div class="col-md-8 msj_emprendedores_caja_2">
							                    <div class="msj_emprendedores_txt1">Nombre</div>
							                    <div class="msj_emprendedores_txt2">Ramon Corona Campos</div>
							                </div>
							                <div class="col-md-4" id="contenedor_monito_19">
							                	<div id="19" class="usuario_emprendedor_esi arrastrable"></div>
							                </div>
							            </div>
							        </div>
							    </div>
							    <!-- Termina Emprendedor para Acomodar --> 
							
							    <!-- Comienza Emprendedor para Acomodar --> 
								<div id="contenedor_20" class="col-md-4 col-md-personalizada_3">
							    	<div class="emprendedor_arrastre" draggable="true">
							            <div class="row">
							                <div class="col-md-8 msj_emprendedores_caja_2">
							                    <div class="msj_emprendedores_txt1">Nombre</div>
							                    <div class="msj_emprendedores_txt2">Mario Pérez Reyes</div>
							                </div>
							                <div class="col-md-4" id="contenedor_monito_20">
							                	<div id="20" class="usuario_emprendedor_esi arrastrable"></div>
							                </div>
							            </div>
							        </div>
							    </div>
							<!-- Termina Emprendedor para Acomodar --> 
                                
                               
                                
                                
                                
                                
                                
                                
                                
                               

                            	<div class="col-md-2 col-md-personalizada_3_der">
                                	<div class="row">
                                        <div class="col-md-12"><div class="leyenda_arrastre">Arrastre este emprendendor a un lugar disponible.</div></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <!-- Termina Panel Datos de Usuario -->
        
            <!-- Empieza Panel de Iconos del Sistema -->
                <div class="col-md-2">
                    <div class="panel panel-body sombrapanel">
                        <div class="medida_acciones_menu" onClick="divLogin()"><div class="btn_msjadmin"></div></div>
                        <div class="medida_acciones_menu"><div class="btn_msjemprendedores"></div></div>
                        <div class="medida_acciones_menu"><div class="btn_alertassistema"></div></div>
                        <div class="medida_acciones_menu"><div class="btn_ubicemprend"></div></div>
                        <div class="medida_acciones_menu"><div class="btn_agenda"></div></div>
                    </div>
                    
                    <div id="caja">
                        <div class="row">
                        	<div class="col-md-12">
                            	<!-- <div class="notificacion notif_recordatorio1">Le recordamos que su fecha de autopago es el 25-01-2013.</div>
                            	<div class="notificacion notif_recordatorio2">Hoy es el vencimiento de la fecha de su autopago.</div>
                            	<div class="notificacion notif_pagoprocesado">Su pago fue procesado correctamente.</div>
                            	<div class="notificacion notif_primeravisovencimiento">Primer aviso de vencimiento de la fecha de autopago.</div>
                            	<div class="notificacion notif_segundoavisovencimiento">Segundo aviso de vencimiento de la fecha de autopago.</div>
                            	<div class="notificacion notif_terceravisovencimiento">Tercer aviso de vencimiento de la fecha de autopago.</div>
                            	<div class="notificacion notif_primeravisosuspension">Primer aviso antes de suspender la cuenta.</div>
                            	<div class="notificacion notif_segundoavisosuspension">Segundo aviso antes de suspender la cuenta.</div>
                            	<div class="notificacion notif_terceravisosuspension">Tercer aviso antes de suspender la cuenta.</div>
                            	<div class="notificacion notif_cuentasuspendida">Cuenta suspendida.</div>
                            	<div class="notificacion notif_ultimaoportunidad">Última oportunidad para reactivar su cuenta.</div>
                            	<div class="notificacion notif_orglibrevta">La organización ha quedado libre para su venta.</div>
                            	<div class="notificacion notif_autopagonocompletado">Su autopago no se pudo completar correctamente.</div>
                            	<div class="notificacion notif_creditoinsuficiente">Crédito insuficiente en la tarjeta.</div>
                            	<div class="notificacion notif_cumpleanos">Roberto Lugo y dos personas más cumplen años.</div>
                            	<div class="notificacion notif_aniversarioboda">Aniversario de boda de Paty Carrillo.</div>
                            	<div class="notificacion notif_proximasubirrango">Paty está próxima a subir de rango.</div>
                            	<div class="notificacion notif_alcanzarango">Hiroshi alcanzó el rango oro.</div>
                            	<div class="notificacion notif_bajaproductividad">Yoshihiko Kikuchi bajó su productividad.</div>
                            	<div class="notificacion notif_aumentaproductividad">Roberto Lugo aumentó su productividad.</div>
                            	<div class="notificacion notif_estatusinactivo">El status de Raúl Arjona ha cambiado a inactivo.</div>
                            	<div class="notificacion notif_estatustransferible">El status de Raúl Arjona ha cambiado a transferible.</div>
                            	<div class="notificacion notif_estatussuspendido">El status de Raúl Arjona ha cambiado a suspendido.</div>
                            	<div class="notificacion notif_estatusactivo">El status de Raúl Arjona ha cambiado a activo.</div>
                            	<div class="notificacion notif_regitroorg">Roberto Lugo se ha registrado en tu organización.</div>
                            	<div class="notificacion notif_solicitaubicar">Yamile Yerbez solicita ubicar un emprendedor en tu organización.</div> -->
                            </div>
                        </div>
                    </div>
                
                </div>
            <!-- Termina Panel Iconos del Sistema -->
            </div>
            <!-- Finaliza Sección Datos y Acciones Principales -->
            
            
            
            <!-- Inicia Contenido principal -->
            <div class="row">
                <div class="col-md-3">
                    <h3><strong>Administrar Organización</strong></h3>
                </div>
                <div class="col-md-6">
                <!-- Inicia Sección de Alertas y Mensajes -->
                
                	<!-- Inicia Mensaje Desea Agregar -->
                	<div id="confirmacion_movimiento" class="row" style="display:none;">
                        <div class="col-md-12 adminorg_msjconfirm">
                            <div class="row">
                                <div class="col-md-1">
                                <div class="adminorg_msjconfirm_usuario_esi"></div>
                                <!-- <div class="adminorg_msjconfirm_usuario_esi"></div> --> 		<!-- Usuario ESI -->
                                <!-- <div class="adminorg_msjconfirm_usuario_bronce"></div> --> 	<!-- Usuario Bronce -->
                                <!-- <div class="adminorg_msjconfirm_usuario_plata"></div> --> 		<!-- Usuario Plata -->
                                <!-- <div class="adminorg_msjconfirm_usuario_oro"></div> --> 		<!-- Usuario Oro -->
                                <!-- <div class="adminorg_msjconfirm_usuario_platino></div> --> 	<!-- Usuario Platino -->
                                <!-- <div class="adminorg_msjconfirm_usuario_diamante"></div> --> 	<!-- Usuario Diamante -->
                                </div>
                                <div class="col-md-7"><div class="adminorg_pregunta_txt">¿Desea agregar a Ramon Corona Campos?</div></div>
                                <div class="col-md-2"><button type="button" class="btn btn-gris btn_accion_encabezado adminorg_pregunta_btn" onclick="agregar_nodo();">Aceptar</button></div>
                                <div class="col-md-2"><button type="button" class="btn btn-gris btn_accion_encabezado adminorg_pregunta_btn" onclick="cancelar_agregar_nodo();">Cancelar</button></div>
                            </div>
                        </div>
                    </div>
                	<!-- Termina Mensaje Desea Agregar -->
                    
                	<!-- Inicia Mensaje Emprendedor Ubicado -->
                	<div id="exito_movimiento" class="row" style="display:none;">
                        <div class="col-md-12 adminorg_msjconfirm">
                            <div class="row">
                                <div class="col-md-1">
                                <div class="adminorg_msjconfirm_ok"></div>
                                </div>
                                <div class="col-md-11"><div class="adminorg_pregunta_txt">El emprendedor Ramon Corona Campos ha sido ubicado satisfactoriamente en ese lugar.</div></div>
                            </div>
                        </div>
                    </div>
                	<!-- Termina Mensaje Emprendedor Ubicado -->
                
                	<!-- Inicia Mensaje Desea Enviar Solicitud Cotización -->
                	<div id="confirmacion_cotizacion" class="row" style="display:none;">
                        <div class="col-md-12 adminorg_msjconfirm">
                            <div class="row">
                                <div class="col-md-1">
                                <div class="adminorg_msjconfirm_alerta"></div>
                                </div>
                                <div class="col-md-7"><div class="adminorg_pregunta_txt">¿Desea enviar una solicitud de cotización?</div></div>
                                <div class="col-md-2"><button type="button" class="btn btn-gris btn_accion_encabezado adminorg_pregunta_btn" onclick="enviar_solicitud_cotizacion();">Aceptar</button></div>
                                <div class="col-md-2"><button type="button" class="btn btn-gris btn_accion_encabezado adminorg_pregunta_btn" onclick="cancelar_solicitud_cotizacion();">Cancelar</button></div>
                            </div>
                        </div>
                    </div>
                	<!-- Termina Mensaje Desea Enviar Solicitud Cotización -->
                    
                	<!-- Inicia Mensaje Solicitud Enviada -->
                	<div id="solicitud_enviada" class="row" style="display:none;">
                    	<div class="col-md-3"></div>
                        <div class="col-md-5 adminorg_msjconfirm">
                            <div class="row">
                                <div class="col-md-3">
                                <div class="adminorg_msjconfirm_ok"></div>
                                </div>
                                <div class="col-md-9"><div class="adminorg_pregunta_txt">Su solicitud ha sido enviada.</div></div>
                            </div>
                    	<div class="col-md-4"></div>
                        </div>
                    </div>
                	<!-- Termina Mensaje Solicitud Enviada -->
                    
                	<!-- Inicia Mensaje Nivel Completo -->
                	<div class="row" style="display:none;">
                        <div class="col-md-12 adminorg_msjconfirm">
                            <div class="row">
                                <div class="col-md-1">
                                <div class="adminorg_msjconfirm_ok_2"></div>
                                </div>
                                <div class="col-md-11"><div class="adminorg_pregunta_txt">¡Enhorabuena! el primer nivel de su organización 1 está completo. Con esfuerzo y dedicación usted con sus emprendedores, muy pronto lograrán completar su organización.</div></div>
                            </div>
                        </div>
                    </div>
                	<!-- Termina Mensaje Nivel Completo -->
                
                	<!-- Inicia Mensaje Alcanza Rango -->
                	<div class="row" style="display:none;">
                        <div class="col-md-12 adminorg_msjconfirm">
                            <div class="row">
                                <div class="col-md-1">
                                <div class="adminorg_msjconfirm_ok_2"></div>
                                </div>
                                <div class="col-md-11"><div class="adminorg_pregunta_txt">¡Enhorabuena! Usted ha alcanzado el “Rango plata”. De acuerdo con su productividad actual muy pronto podrá lograr el “Rango oro”.</div></div>
                            </div>
                        </div>
                    </div>
                	<!-- Termina Mensaje Alcanza Rango -->
                
                <!-- Termina Sección de Alertas y Mensajes -->
                </div>
                <div class="col-md-3">
                	<div class="row">
                    	<div class="col-md-4">
                        	<p class="pull-right texto_indicador_reporte texto_indicador_esp1"><strong>Organización:</strong>
                        </div>
                        <div class="col-md-8">
                        	<select class="form-control input-sm texto_indicador_reporte texto_campo_principal espaciado_campo_principal texto_indicador_esp2"  name="" id="">
                                <option value="">Organización 1</option>
                                <option value="">Organización 2</option>
                                <option value="">Organización 3</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            
            
            <!--  INICIA CONTENEDOR Y ARBOL -->
                        
            <div class="row">
                <div class="col-md-12">
                	<div class="contenedor_mapa_principal">
                    	<div class="contenedor_mapa_arbol">
                        
                        	<!-- Inicia Navegación del Mapa -->
                        	<div class="navegacion_mapa">
                            	<div>
                                	<div class="nav_mapa_espacio"></div>
                                    <div class="nav_mapa_arriba"></div>
                                    <div class="nav_mapa_espacio"></div>
                                </div>
                                <div>
                                	<div class="nav_mapa_izquierda"></div>
                                    <div class="nav_mapa_zoom">
                                    	<div class="nav_mapa_aumenta"></div>
                                    	<div class="nav_mapa_reduce"></div>
                                    </div>
                                	<div class="nav_mapa_derecha"></div>
                                </div>
                            	<div>
                                	<div class="nav_mapa_espacio"></div>
                                    <div class="nav_mapa_abajo"></div>
                                    <div class="nav_mapa_espacio"></div>
                                </div>
                            </div>
                        	<!-- Termina Navegación del Mapa -->
                            
                            <!-- Inicia Mensaje Proyección -->
                            <div class="adminorg_caja_proyeccion">
                                <div class="panel panel-body adminorg_mensaje_proyeccion">
                                    <div class="row">
                                        <div class="col-md-8">
                                            <div class="adminorg_msj_proyeccion_emprendedores">116 Emprendedores</div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="adminorg_msj_proyeccion_porcentajeverde">90%</div>
                                            <!-- <div class="adminorg_msj_productividad_porcentajerojo">50%</div> -->
                                            <!-- <div class="adminorg_msj_proyeccion_porcentajenaranja">90%</div> -->
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-8">
                                            <div class="adminorg_msj_proyeccion_grupos">180 Grupos</div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="adminorg_msj_proyeccion_porcentajeverde">90%</div>
                                            <!-- <div class="adminorg_msj_proyeccion_porcentajerojo">50%</div> -->
                                            <!-- <div class="adminorg_msj_proyeccion_porcentajenaranja">90%</div> -->
                                        </div>
                                    </div>
                                    <div class="row">  
                                        <div class="col-md-3"><div class="org_msj_proyeccion_rangoactual"><img src="${request.contextPath}/images/iconografia/categorias/Normal/ESI_24.png"></div>
                                        </div>
                                        <div class="col-md-6"><div class="org_msj_proyeccion_gruposfaltantes">Faltan sólo <br>550 grupos</div>
                                        </div>
                                        <div class="col-md-3"><div class="org_msj_proyeccion_rangosiguiente"><img src="${request.contextPath}/images/iconografia/categorias/Normal/Bronce_24.png"></div>
                                        </div>
                                        <div class="col-md-12 org_msj_proyeccion_nota">De acuerdo a tu productividad actual muy pronto puedes lograr el “rango Plata”.
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="panel panel-body adminorg_mensaje_regaliaactual">
                                        <div class="row">
                                            <div class="col-md-12">$ 75,000 regalía actual</div>
                                        </div>
                                    </div>
                                    <div class="panel panel-body adminorg_mensaje_regaliaposible">
                                        <div class="row">
                                            <div class="col-md-12">$ 75,000 regalía posible</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Termina Mensaje Proyección -->
                            
                            <!-- Inicia Botones tipo de vista -->
                            <div class="btn_celular_mapa" title="Vista celular"></div>
                            <div class="btn_arbol_mapa" title="Vista en árbol"></div>
                            <!-- Termina Botones tipo de Vista -->
                            
                            <!-- Inicia Árbol de Usuarios -->
                            <div class="contenedor_ramificaciones tree">
                            	<ul>
                                    <li>
                                        <img src="${request.contextPath}/images/organizacion/IconosUsuario/Proyeccion/oro_m1.png">
                                        <ul>
                                        	<!-- El estilo "grupo_completo" define el recuadro punteado-->
                                            <li class="grupo_completo">
                                                <img src="images/organizacion/IconosUsuario/Proyeccion/bronce_m2.png">
                                                <ul>
                                                    <li>
                                                        <ul>
                                                            <li>
                                                                <img src="${request.contextPath}/images/organizacion/IconosUsuario/Proyeccion/bronce_m2.png">
                                                            </li>
                                                            <li>
                                                                <img src="${request.contextPath}/images/organizacion/IconosUsuario/Proyeccion/bronce_m2.png">
                                                            </li>
                                                            <li>
                                                                <img src="${request.contextPath}/images/organizacion/IconosUsuario/Proyeccion/bronce_m2.png">
                                                            </li>
                                                            <li>
                                                                <img src="${request.contextPath}/images/organizacion/IconosUsuario/Proyeccion/bronce_m2.png">
                                                            </li>
                                                            <li>
                                                                <img src="${request.contextPath}/images/organizacion/IconosUsuario/Proyeccion/bronce_m2.png">
                                                            </li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                            
                                            <li id="rama_0" class="suelta"> 
                                            	<div class="adminorg_notificacion"><div class="adminorg_notif_agregar"></div><div class="adminorg_notif_texto">Espacio disponible</div></div>
                                                <img src="${request.contextPath}/images/organizacion/IconosUsuario/sincolor_m2.png">
                                            </li>
                                            
                                            <li>
                                            	
                                                <div id="contenedor_alert_notificacion" class="adminorg_notificacion adminorg_notif_texto_2" onMouseOver="overNotificaciones()" onMouseOut="outoverNotificaciones()">
                                                	
                                                	<!-- Notificación Estatus Transferible -->
                                                	<div id="alert_notificacion_transferible" class="row">
                                                    	<div class="col-md-2"><div class="adminorg_notif_transferible"></div></div>
                                                        <div class="col-md-10">La organización 0156788<br>ha quedado transferible</div>
                                                    </div>
                                                    <!-- Notificación Enviar Solicitud Cotización -->
                                                    <div id="alert_notificacion_1" class="row" style="display: none;">
                                                    	<div class="col-md-2"><div class="adminorg_notif_alerta_clic" onclick="confirmacion_solicitud_cotizacion('alert_notificacion_1');" ></div></div>
                                                        <div class="col-md-10">Haga clic para enviar una<br>solicitud de cotización</div>
                                                    </div>
                                                    <!-- Inicia Notificación Cotización Solicitada -->
                                                    <div id="alert_notificacion_cotizacion_solicitada" class="row" style="display: none;">
		                                                <div class="col-md-2"><div class="adminorg_notif_alerta_clic"></div></div>
		                                                <div class="col-md-10">Cotización de Organización solicitada</div>
		                                            </div>
		                                            
		                                            <!-- Notificación Registrar Emprendedor -->
                                                   	<div id="alert_notificacion_registrar_emprendedor" class="row" style="display: none;">
                                                    	<div class="col-md-2"><div class="adminorg_notif_alerta_clic" onclick="registrar_persona();"></div></div>
                                                        <div class="col-md-10">Haga clic para registrar al<br>nuevo emprendedor</div>
                                                    </div>
                                                    <!-- Notificación Adquirido -->
                                                   	<div id="alert_notificacion_persona_agregada" class="row" style="display: none;">
                                                    	<div class="col-md-2"><div class="adminorg_notif_adquirido"></div></div>
                                                        <div class="col-md-10">Liliana_Torres ha adquirido<br>esta organización</div>
                                                    </div>
                                             
                                                </div>
                                    
                                                <!-- Inicia Modal Información -->
		                                        <div class="row panel panel-body modal_social" id="muestrame_detalles_1" style="display:none;"> 
		                                            <div class="row">
		                                                <div class="cerrarmodal" onClick="this.parentNode.parentNode.style.display = 'none';"></div>
		                                                <div class="col-md-12"><strong>ID Organización: </strong>0001SDFG</div>
		                                                <div class="col-md-12"><small><strong>Propietario: </strong>Roberto Lugo Arjona</small></div>
		                                                <div class="col-md-12"><small><strong>Nombre de usuario: </strong>RobertoLugo00007</small></div>
		                                                <div class="col-md-12"><small><strong>Estatus: </strong>Activo</small></div>
		                                                <div class="col-md-2"><div class="modal_btn_telefono" title="Mostrar teléfonos"></div></div>
		                                                <div class="col-md-2"><div class="modal_btn_mensaje" title="Enviar mensaje"></div></div>
		                                                <div class="col-md-2"><div class="modal_btn_facebook" title="Facebook"></div></div>
		                                                <div class="col-md-2"><div class="modal_btn_twitter" title="Twitter"></div></div>
		                                                <div class="col-md-2"><div class="modal_btn_facetime" title="Facetime"></div></div>
		                                                <div class="col-md-2"><div class="modal_btn_skype" title="Mensaje en Skype"></div></div>
		                                            </div>
		                                        </div>
		                                    	<!-- Termina Modal Información -->
                                                <img id="1" src="${request.contextPath}/images/organizacion/IconosUsuario/sincolor_m2.png" onClick="mostrar_detalles_socia('1');">
                                                <ul>
                                                    <li>
                                                        <ul>
                                                            <li>
                                                            	<!-- Inicia Modal Información -->
						                                        <div class="row panel panel-body modal_social" id="muestrame_detalles_101" style="display:none;"> 
						                                            <div class="row">
						                                                <div class="cerrarmodal" onClick="this.parentNode.parentNode.style.display = 'none';"></div>
						                                                <div class="col-md-12"><strong>ID Organización: </strong>0001SDFG</div>
						                                                <div class="col-md-12"><small><strong>Propietario: </strong>Roberto Lugo Arjona</small></div>
						                                                <div class="col-md-12"><small><strong>Nombre de usuario: </strong>RobertoLugo00007</small></div>
						                                                <div class="col-md-12"><small><strong>Estatus: </strong>Activo</small></div>
						                                                <div class="col-md-2"><div class="modal_btn_telefono" title="Mostrar teléfonos"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_mensaje" title="Enviar mensaje"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_facebook" title="Facebook"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_twitter" title="Twitter"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_facetime" title="Facetime"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_skype" title="Mensaje en Skype"></div></div>
						                                            </div>
						                                        </div>
						                                    	<!-- Termina Modal Información -->
                                                                <img id="101" src="${request.contextPath}/images/organizacion/IconosUsuario/Proyeccion/plata_m2.png" onClick="mostrar_detalles_socia('101');">
                                                            </li>
                                                            <li>
                                                            	<!-- Inicia Modal Información -->
						                                        <div class="row panel panel-body modal_social" id="muestrame_detalles_102" style="display:none;"> 
						                                            <div class="row">
						                                                <div class="cerrarmodal" onClick="this.parentNode.parentNode.style.display = 'none';"></div>
						                                                <div class="col-md-12"><strong>ID Organización: </strong>0001SDFG</div>
						                                                <div class="col-md-12"><small><strong>Propietario: </strong>Roberto Lugo Arjona</small></div>
						                                                <div class="col-md-12"><small><strong>Nombre de usuario: </strong>RobertoLugo00007</small></div>
						                                                <div class="col-md-12"><small><strong>Estatus: </strong>Activo</small></div>
						                                                <div class="col-md-2"><div class="modal_btn_telefono" title="Mostrar teléfonos"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_mensaje" title="Enviar mensaje"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_facebook" title="Facebook"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_twitter" title="Twitter"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_facetime" title="Facetime"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_skype" title="Mensaje en Skype"></div></div>
						                                            </div>
						                                        </div>
						                                    	<!-- Termina Modal Información -->
                                                                <img id="102" src="${request.contextPath}/images/organizacion/IconosUsuario/Proyeccion/plata_m2.png" onClick="mostrar_detalles_socia('102');">
                                                            </li>
                                                            <li>
                                                            	<!-- Inicia Modal Información -->
						                                        <div class="row panel panel-body modal_social" id="muestrame_detalles_103" style="display:none;"> 
						                                            <div class="row">
						                                                <div class="cerrarmodal" onClick="this.parentNode.parentNode.style.display = 'none';"></div>
						                                                <div class="col-md-12"><strong>ID Organización: </strong>0001SDFG</div>
						                                                <div class="col-md-12"><small><strong>Propietario: </strong>Roberto Lugo Arjona</small></div>
						                                                <div class="col-md-12"><small><strong>Nombre de usuario: </strong>RobertoLugo00007</small></div>
						                                                <div class="col-md-12"><small><strong>Estatus: </strong>Activo</small></div>
						                                                <div class="col-md-2"><div class="modal_btn_telefono" title="Mostrar teléfonos"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_mensaje" title="Enviar mensaje"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_facebook" title="Facebook"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_twitter" title="Twitter"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_facetime" title="Facetime"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_skype" title="Mensaje en Skype"></div></div>
						                                            </div>
						                                        </div>
						                                    	<!-- Termina Modal Información -->
                                                                <img id="103" src="${request.contextPath}/images/organizacion/IconosUsuario/Proyeccion/plata_m2.png" onClick="mostrar_detalles_socia('103');">
                                                            </li>
                                                            <li>
                                                            	<!-- Inicia Modal Información -->
						                                        <div class="row panel panel-body modal_social" id="muestrame_detalles_104" style="display:none;"> 
						                                            <div class="row">
						                                                <div class="cerrarmodal" onClick="this.parentNode.parentNode.style.display = 'none';"></div>
						                                                <div class="col-md-12"><strong>ID Organización: </strong>0001SDFG</div>
						                                                <div class="col-md-12"><small><strong>Propietario: </strong>Roberto Lugo Arjona</small></div>
						                                                <div class="col-md-12"><small><strong>Nombre de usuario: </strong>RobertoLugo00007</small></div>
						                                                <div class="col-md-12"><small><strong>Estatus: </strong>Activo</small></div>
						                                                <div class="col-md-2"><div class="modal_btn_telefono" title="Mostrar teléfonos"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_mensaje" title="Enviar mensaje"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_facebook" title="Facebook"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_twitter" title="Twitter"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_facetime" title="Facetime"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_skype" title="Mensaje en Skype"></div></div>
						                                            </div>
						                                        </div>
						                                    	<!-- Termina Modal Información -->
                                                                <img id="104" src="${request.contextPath}/images/organizacion/IconosUsuario/Proyeccion/plata_m2.png" onClick="mostrar_detalles_socia('104');">
                                                            </li>
                                                            <li>
                                                            	<!-- Inicia Modal Información -->
						                                        <div class="row panel panel-body modal_social" id="muestrame_detalles_105" style="display:none;"> 
						                                            <div class="row">
						                                                <div class="cerrarmodal" onClick="this.parentNode.parentNode.style.display = 'none';"></div>
						                                                <div class="col-md-12"><strong>ID Organización: </strong>0001SDFG</div>
						                                                <div class="col-md-12"><small><strong>Propietario: </strong>Roberto Lugo Arjona</small></div>
						                                                <div class="col-md-12"><small><strong>Nombre de usuario: </strong>RobertoLugo00007</small></div>
						                                                <div class="col-md-12"><small><strong>Estatus: </strong>Activo</small></div>
						                                                <div class="col-md-2"><div class="modal_btn_telefono" title="Mostrar teléfonos"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_mensaje" title="Enviar mensaje"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_facebook" title="Facebook"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_twitter" title="Twitter"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_facetime" title="Facetime"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_skype" title="Mensaje en Skype"></div></div>
						                                            </div>
						                                        </div>
						                                    	<!-- Termina Modal Información -->
                                                                <img id="105" src="${request.contextPath}/images/organizacion/IconosUsuario/Proyeccion/plata_m2.png" onClick="mostrar_detalles_socia('105');">
                                                            </li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li>
                                            <!-- Inicia Modal Información -->
		                                        <div class="row panel panel-body modal_social" id="muestrame_detalles_2" style="display:none;"> 
		                                            <div class="row">
		                                                <div class="cerrarmodal" onClick="this.parentNode.parentNode.style.display = 'none';"></div>
		                                                <div class="col-md-12"><strong>ID Organización: </strong>0001SDFG</div>
		                                                <div class="col-md-12"><small><strong>Propietario: </strong>Roberto Lugo Arjona</small></div>
		                                                <div class="col-md-12"><small><strong>Nombre de usuario: </strong>RobertoLugo00007</small></div>
		                                                <div class="col-md-12"><small><strong>Estatus: </strong>Activo</small></div>
		                                                <div class="col-md-2"><div class="modal_btn_telefono" title="Mostrar teléfonos"></div></div>
		                                                <div class="col-md-2"><div class="modal_btn_mensaje" title="Enviar mensaje"></div></div>
		                                                <div class="col-md-2"><div class="modal_btn_facebook" title="Facebook"></div></div>
		                                                <div class="col-md-2"><div class="modal_btn_twitter" title="Twitter"></div></div>
		                                                <div class="col-md-2"><div class="modal_btn_facetime" title="Facetime"></div></div>
		                                                <div class="col-md-2"><div class="modal_btn_skype" title="Mensaje en Skype"></div></div>
		                                            </div>
		                                        </div>
		                                    	<!-- Termina Modal Información -->
                                                <img id="2" src="${request.contextPath}/images/organizacion/IconosUsuario/Proyeccion/oro_m2.png" onClick="mostrar_detalles_socia('2');">
                                                <ul>
                                                    <li>
                                                        <ul>
                                                            <li>
                                                            	<!-- Inicia Modal Información -->
						                                        <div class="row panel panel-body modal_social" id="muestrame_detalles_201" style="display:none;"> 
						                                            <div class="row">
						                                                <div class="cerrarmodal" onClick="this.parentNode.parentNode.style.display = 'none';"></div>
						                                                <div class="col-md-12"><strong>ID Organización: </strong>0001SDFG</div>
						                                                <div class="col-md-12"><small><strong>Propietario: </strong>Roberto Lugo Arjona</small></div>
						                                                <div class="col-md-12"><small><strong>Nombre de usuario: </strong>RobertoLugo00007</small></div>
						                                                <div class="col-md-12"><small><strong>Estatus: </strong>Activo</small></div>
						                                                <div class="col-md-2"><div class="modal_btn_telefono" title="Mostrar teléfonos"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_mensaje" title="Enviar mensaje"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_facebook" title="Facebook"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_twitter" title="Twitter"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_facetime" title="Facetime"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_skype" title="Mensaje en Skype"></div></div>
						                                            </div>
						                                        </div>
		                                    					<!-- Termina Modal Información -->
                                                                <img id="201" src="${request.contextPath}/images/organizacion/IconosUsuario/Proyeccion/oro_m2.png" onClick="mostrar_detalles_socia('201');">
                                                            </li>
                                                            <li>
                                                            	<!-- Inicia Modal Información -->
						                                        <div class="row panel panel-body modal_social" id="muestrame_detalles_202" style="display:none;"> 
						                                            <div class="row">
						                                                <div class="cerrarmodal" onClick="this.parentNode.parentNode.style.display = 'none';"></div>
						                                                <div class="col-md-12"><strong>ID Organización: </strong>0001SDFG</div>
						                                                <div class="col-md-12"><small><strong>Propietario: </strong>Roberto Lugo Arjona</small></div>
						                                                <div class="col-md-12"><small><strong>Nombre de usuario: </strong>RobertoLugo00007</small></div>
						                                                <div class="col-md-12"><small><strong>Estatus: </strong>Activo</small></div>
						                                                <div class="col-md-2"><div class="modal_btn_telefono" title="Mostrar teléfonos"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_mensaje" title="Enviar mensaje"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_facebook" title="Facebook"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_twitter" title="Twitter"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_facetime" title="Facetime"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_skype" title="Mensaje en Skype"></div></div>
						                                            </div>
						                                        </div>
		                                    					<!-- Termina Modal Información -->
                                                                <img id="202" src="${request.contextPath}/images/organizacion/IconosUsuario/Proyeccion/oro_m2.png" onClick="mostrar_detalles_socia('202');">
                                                            </li>
                                                            <li>
                                                            	<!-- Inicia Modal Información -->
						                                        <div class="row panel panel-body modal_social" id="muestrame_detalles_203" style="display:none;"> 
						                                            <div class="row">
						                                                <div class="cerrarmodal" onClick="this.parentNode.parentNode.style.display = 'none';"></div>
						                                                <div class="col-md-12"><strong>ID Organización: </strong>0001SDFG</div>
						                                                <div class="col-md-12"><small><strong>Propietario: </strong>Roberto Lugo Arjona</small></div>
						                                                <div class="col-md-12"><small><strong>Nombre de usuario: </strong>RobertoLugo00007</small></div>
						                                                <div class="col-md-12"><small><strong>Estatus: </strong>Activo</small></div>
						                                                <div class="col-md-2"><div class="modal_btn_telefono" title="Mostrar teléfonos"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_mensaje" title="Enviar mensaje"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_facebook" title="Facebook"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_twitter" title="Twitter"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_facetime" title="Facetime"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_skype" title="Mensaje en Skype"></div></div>
						                                            </div>
						                                        </div>
		                                    					<!-- Termina Modal Información -->
                                                                <img id="203" src="${request.contextPath}/images/organizacion/IconosUsuario/Proyeccion/oro_m2.png" onClick="mostrar_detalles_socia('203');">
                                                            </li>
                                                            <li>
                                                            	<!-- Inicia Modal Información -->
						                                        <div class="row panel panel-body modal_social" id="muestrame_detalles_204" style="display:none;"> 
						                                            <div class="row">
						                                                <div class="cerrarmodal" onClick="this.parentNode.parentNode.style.display = 'none';"></div>
						                                                <div class="col-md-12"><strong>ID Organización: </strong>0001SDFG</div>
						                                                <div class="col-md-12"><small><strong>Propietario: </strong>Roberto Lugo Arjona</small></div>
						                                                <div class="col-md-12"><small><strong>Nombre de usuario: </strong>RobertoLugo00007</small></div>
						                                                <div class="col-md-12"><small><strong>Estatus: </strong>Activo</small></div>
						                                                <div class="col-md-2"><div class="modal_btn_telefono" title="Mostrar teléfonos"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_mensaje" title="Enviar mensaje"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_facebook" title="Facebook"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_twitter" title="Twitter"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_facetime" title="Facetime"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_skype" title="Mensaje en Skype"></div></div>
						                                            </div>
						                                        </div>
		                                    					<!-- Termina Modal Información -->
                                                                <img id="204" src="${request.contextPath}/images/organizacion/IconosUsuario/Proyeccion/oro_m2.png" onClick="mostrar_detalles_socia('204');">
                                                            </li>
                                                            <li>
                                                            	<!-- Inicia Modal Información -->
						                                        <div class="row panel panel-body modal_social" id="muestrame_detalles_205" style="display:none;"> 
						                                            <div class="row">
						                                                <div class="cerrarmodal" onClick="this.parentNode.parentNode.style.display = 'none';"></div>
						                                                <div class="col-md-12"><strong>ID Organización: </strong>0001SDFG</div>
						                                                <div class="col-md-12"><small><strong>Propietario: </strong>Roberto Lugo Arjona</small></div>
						                                                <div class="col-md-12"><small><strong>Nombre de usuario: </strong>RobertoLugo00007</small></div>
						                                                <div class="col-md-12"><small><strong>Estatus: </strong>Activo</small></div>
						                                                <div class="col-md-2"><div class="modal_btn_telefono" title="Mostrar teléfonos"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_mensaje" title="Enviar mensaje"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_facebook" title="Facebook"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_twitter" title="Twitter"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_facetime" title="Facetime"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_skype" title="Mensaje en Skype"></div></div>
						                                            </div>
						                                        </div>
		                                    					<!-- Termina Modal Información -->
                                                                <img id="205" src="${request.contextPath}/images/organizacion/IconosUsuario/Proyeccion/oro_m2.png" onClick="mostrar_detalles_socia('205');">
                                                            </li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li>
                                            	<!-- Inicia Modal Información -->
		                                        <div class="row panel panel-body modal_social" id="muestrame_detalles_3" style="display:none;"> 
		                                            <div class="row">
		                                                <div class="cerrarmodal" onClick="this.parentNode.parentNode.style.display = 'none';"></div>
		                                                <div class="col-md-12"><strong>ID Organización: </strong>0001SDFG</div>
		                                                <div class="col-md-12"><small><strong>Propietario: </strong>Roberto Lugo Arjona</small></div>
		                                                <div class="col-md-12"><small><strong>Nombre de usuario: </strong>RobertoLugo00007</small></div>
		                                                <div class="col-md-12"><small><strong>Estatus: </strong>Activo</small></div>
		                                                <div class="col-md-2"><div class="modal_btn_telefono" title="Mostrar teléfonos"></div></div>
		                                                <div class="col-md-2"><div class="modal_btn_mensaje" title="Enviar mensaje"></div></div>
		                                                <div class="col-md-2"><div class="modal_btn_facebook" title="Facebook"></div></div>
		                                                <div class="col-md-2"><div class="modal_btn_twitter" title="Twitter"></div></div>
		                                                <div class="col-md-2"><div class="modal_btn_facetime" title="Facetime"></div></div>
		                                                <div class="col-md-2"><div class="modal_btn_skype" title="Mensaje en Skype"></div></div>
		                                            </div>
		                                        </div>
	                                 			<!-- Termina Modal Información -->
                                                <img id="3" src="${request.contextPath}/images/organizacion/IconosUsuario/Proyeccion/platino_m2.png" onClick="mostrar_detalles_socia('3');">
                                                <ul>
                                                    <li>
                                                        <ul>
                                                            <li>
                                                            	<!-- Inicia Modal Información -->
						                                        <div class="row panel panel-body modal_social" id="muestrame_detalles_301" style="display:none;"> 
						                                            <div class="row">
						                                                <div class="cerrarmodal" onClick="this.parentNode.parentNode.style.display = 'none';"></div>
						                                                <div class="col-md-12"><strong>ID Organización: </strong>0001SDFG</div>
						                                                <div class="col-md-12"><small><strong>Propietario: </strong>Roberto Lugo Arjona</small></div>
						                                                <div class="col-md-12"><small><strong>Nombre de usuario: </strong>RobertoLugo00007</small></div>
						                                                <div class="col-md-12"><small><strong>Estatus: </strong>Activo</small></div>
						                                                <div class="col-md-2"><div class="modal_btn_telefono" title="Mostrar teléfonos"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_mensaje" title="Enviar mensaje"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_facebook" title="Facebook"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_twitter" title="Twitter"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_facetime" title="Facetime"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_skype" title="Mensaje en Skype"></div></div>
						                                            </div>
						                                        </div>
					                                 			<!-- Termina Modal Información -->
                                                                <img id="301" src="${request.contextPath}/images/organizacion/IconosUsuario/Proyeccion/platino_m2.png" onClick="mostrar_detalles_socia('301');">
                                                            </li>
                                                            <li>
                                                            	<!-- Inicia Modal Información -->
						                                        <div class="row panel panel-body modal_social" id="muestrame_detalles_302" style="display:none;"> 
						                                            <div class="row">
						                                                <div class="cerrarmodal" onClick="this.parentNode.parentNode.style.display = 'none';"></div>
						                                                <div class="col-md-12"><strong>ID Organización: </strong>0001SDFG</div>
						                                                <div class="col-md-12"><small><strong>Propietario: </strong>Roberto Lugo Arjona</small></div>
						                                                <div class="col-md-12"><small><strong>Nombre de usuario: </strong>RobertoLugo00007</small></div>
						                                                <div class="col-md-12"><small><strong>Estatus: </strong>Activo</small></div>
						                                                <div class="col-md-2"><div class="modal_btn_telefono" title="Mostrar teléfonos"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_mensaje" title="Enviar mensaje"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_facebook" title="Facebook"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_twitter" title="Twitter"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_facetime" title="Facetime"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_skype" title="Mensaje en Skype"></div></div>
						                                            </div>
						                                        </div>
					                                 			<!-- Termina Modal Información -->
                                                                <img id="302" src="${request.contextPath}/images/organizacion/IconosUsuario/Proyeccion/platino_m2.png" onClick="mostrar_detalles_socia('302');">
                                                            </li>
                                                            <li>
                                                            	<!-- Inicia Modal Información -->
						                                        <div class="row panel panel-body modal_social" id="muestrame_detalles_303" style="display:none;"> 
						                                            <div class="row">
						                                                <div class="cerrarmodal" onClick="this.parentNode.parentNode.style.display = 'none';"></div>
						                                                <div class="col-md-12"><strong>ID Organización: </strong>0001SDFG</div>
						                                                <div class="col-md-12"><small><strong>Propietario: </strong>Roberto Lugo Arjona</small></div>
						                                                <div class="col-md-12"><small><strong>Nombre de usuario: </strong>RobertoLugo00007</small></div>
						                                                <div class="col-md-12"><small><strong>Estatus: </strong>Activo</small></div>
						                                                <div class="col-md-2"><div class="modal_btn_telefono" title="Mostrar teléfonos"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_mensaje" title="Enviar mensaje"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_facebook" title="Facebook"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_twitter" title="Twitter"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_facetime" title="Facetime"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_skype" title="Mensaje en Skype"></div></div>
						                                            </div>
						                                        </div>
					                                 			<!-- Termina Modal Información -->
                                                                <img id="303" src="${request.contextPath}/images/organizacion/IconosUsuario/Proyeccion/platino_m2.png" onClick="mostrar_detalles_socia('303');">
                                                            </li>
                                                            <li>
                                                            	<!-- Inicia Modal Información -->
						                                        <div class="row panel panel-body modal_social" id="muestrame_detalles_304" style="display:none;"> 
						                                            <div class="row">
						                                                <div class="cerrarmodal" onClick="this.parentNode.parentNode.style.display = 'none';"></div>
						                                                <div class="col-md-12"><strong>ID Organización: </strong>0001SDFG</div>
						                                                <div class="col-md-12"><small><strong>Propietario: </strong>Roberto Lugo Arjona</small></div>
						                                                <div class="col-md-12"><small><strong>Nombre de usuario: </strong>RobertoLugo00007</small></div>
						                                                <div class="col-md-12"><small><strong>Estatus: </strong>Activo</small></div>
						                                                <div class="col-md-2"><div class="modal_btn_telefono" title="Mostrar teléfonos"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_mensaje" title="Enviar mensaje"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_facebook" title="Facebook"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_twitter" title="Twitter"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_facetime" title="Facetime"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_skype" title="Mensaje en Skype"></div></div>
						                                            </div>
						                                        </div>
					                                 			<!-- Termina Modal Información -->
                                                               <img id="304" src="${request.contextPath}/images/organizacion/IconosUsuario/Proyeccion/diamante_m2.png" onClick="mostrar_detalles_socia('304');">
                                                            </li>
                                                            <li>
                                                            	<!-- Inicia Modal Información -->
						                                        <div class="row panel panel-body modal_social" id="muestrame_detalles_305" style="display:none;"> 
						                                            <div class="row">
						                                                <div class="cerrarmodal" onClick="this.parentNode.parentNode.style.display = 'none';"></div>
						                                                <div class="col-md-12"><strong>ID Organización: </strong>0001SDFG</div>
						                                                <div class="col-md-12"><small><strong>Propietario: </strong>Roberto Lugo Arjona</small></div>
						                                                <div class="col-md-12"><small><strong>Nombre de usuario: </strong>RobertoLugo00007</small></div>
						                                                <div class="col-md-12"><small><strong>Estatus: </strong>Activo</small></div>
						                                                <div class="col-md-2"><div class="modal_btn_telefono" title="Mostrar teléfonos"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_mensaje" title="Enviar mensaje"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_facebook" title="Facebook"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_twitter" title="Twitter"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_facetime" title="Facetime"></div></div>
						                                                <div class="col-md-2"><div class="modal_btn_skype" title="Mensaje en Skype"></div></div>
						                                            </div>
						                                        </div>
					                                 			<!-- Termina Modal Información -->
                                                                <img id="305" src="${request.contextPath}/images/organizacion/IconosUsuario/Proyeccion/diamante_m2.png" onClick="mostrar_detalles_socia('305');">
                                                            </li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <!-- Termina Árbol de Usuarios -->

                        </div>
                        <div class="contenedor_mapa_detalle">
                        	<div class="row">
                            	<div class="col-md-5">
                                </div>
                                <div class="col-md-7">
                                	<div class="row">
                                    	<div class="col-md-5"></div>
                                        <div class="col-md-7">
                                        	<div class="row">
                                            	<div class="col-md-2"><div class="imagen_categoria"><img src="images/iconografia/categorias/Normal/ESI_48.png"><br>ESI</div></div>
                                            	<div class="col-md-2"><div class="imagen_categoria"><img src="${request.contextPath}/images/iconografia/categorias/Normal/Bronce_48.png"><br>Bronce</div></div>
                                            	<div class="col-md-2"><div class="imagen_categoria"><img src="${request.contextPath}/images/iconografia/categorias/Normal/Plata_48.png"><br>Plata</div></div>
                                            	<div class="col-md-2"><div class="imagen_categoria"><img src="${request.contextPath}/images/iconografia/categorias/Normal/Oro_48.png"><br>Oro</div></div>
                                            	<div class="col-md-2"><div class="imagen_categoria"><img src="${request.contextPath}/images/iconografia/categorias/Normal/Platino_48.png"><br>Platino</div></div>
                                            	<div class="col-md-2"><div class="imagen_categoria"><img src="${request.contextPath}/images/iconografia/categorias/Normal/Diamante_48.png"><br>Diamante</div></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- END CONTENEDOR Y ARBOL -->
            
         <div class="row">
                <div class="col-md-12">
                    <h3><strong>Resumen de la Organización</strong></h3><br>
                </div>
                <div class="col-md-12">
                    <table cellspacing="0" cellpadding="0" class="table">
                        <thead>
                            <tr class="celda_encabezado">
                                <td>Nivel</td>
                                <td>ES Actuales</td>
                                <td>ES faltantes para<br>completar el nivel</td>
                                <td>Grupos actuales</td>
                                <td>Grupos activos</td>
                                <td>Grupos inactivos</td>
                                <td>Grupos necesarios para<br>cambiar de rango</td>
                                <td>Grupos faltantes para<br>cambiar de rango</td>
                                <td>Organizaciones<br>transferibles</td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="fila_striped2">
                                <td class="celda_org_normal">1</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                            </tr>
                            <tr class="fila_striped1">
                                <td class="celda_org_normal">2</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                            </tr>
                            <tr class="fila_striped2">
                                <td class="celda_org_normal">3</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                            </tr>
                            <tr class="fila_striped1">
                                <td class="celda_org_normal">4</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                            </tr>
                            <tr class="fila_striped2">
                                <td class="celda_org_normal">5</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                            </tr>
                            <tr class="fila_striped1">
                                <td class="celda_org_normal">6</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                                <td class="celda_org_normal">5 (100%)</td>
                            </tr>
                            <tr class="fila_striped2">
                                <td class="celda_org_normal">Total</td>
                                <td class="celda_org_normal">&nbsp;</td>
                                <td class="celda_org_normal">&nbsp;</td>
                                <td class="celda_org_normal">&nbsp;</td>
                                <td class="celda_org_normal">&nbsp;</td>
                                <td class="celda_org_normal">&nbsp;</td>
                                <td class="celda_org_normal">&nbsp;</td>
                                <td class="celda_org_normal">&nbsp;</td>
                                <td class="celda_org_normal">&nbsp;</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>


            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-10 adminorg_msjimportante">
                    <p><strong>Importante:</strong></p>
                    <p>Una organización transferible indica que ésta ha quedado libre para su venta y se encuentra en espera para ser adquirida por un nuevo Emprendedor Social. Usted podrá realizar la transferencia sólo si la organización se situa dentro de su nivel 1.</p>
                    <p>Para llevar acabo la transferencia, por favor solicite una cotización para la organización haciendo clic sobre la organización transferible. Usted recibirá la correpondiente cotización para luego continuar con el proceso de registro del nuevo emprendedor quien recibirá dicha organización.</p>
                    <p>* Por favor, permita que transcurra un plazo de 48 horas (excluyendo sábados , domingos y días festivos) para responderle.</p>
                </div>
                <div class="col-md-1"></div>
            </div>
            
            <div class="row">
                <div class="col-md-12">
                	<p>&nbsp;</p>
                </div>
            </div>   

<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>

<script>
var id_persona = 0;
var rama_remove_class ="";
var persona_moviendo ="";
$(document).ready(function() {
	
	$(".arrastrable").draggable();
	$(".arrastrable").data("id_integrante", 0);
	
	
	$(".suelta").droppable(
			{ 
				   drop: function( event, ui ) { 
				      
				         var draggable = ui.draggable;
				         var elem = $(this); 

				         elem.html('<div class="adminorg_notificacion adminorg_notif_texto_2">'+
                                       	'<div class="row">'+
                                            	'<div class="col-md-2"><div class="adminorg_notif_agregado"></div></div>'+
                                                '<div class="col-md-10">Ramon se ha<br>agregado</div>'+
                                         '</div>'+
                                     '</div>'+
                                     '<img src="images/organizacion/IconosUsuario/Proyeccion/esi_m2.png">');
				         
				         id_persona = draggable.attr('id');
				         rama_remove_class = elem.attr('id');
                         persona_moviendo = id_persona;
				         
				         ui.draggable.data("id_integrante", id_persona);
				         
				         
				         $("#"+id_persona).remove();
				         $("#confirmacion_movimiento").show(1200);
				      
				   }, 
				   out: function( event, ui ) { 
				      if (ui.draggable.data("soltado")){ 
				         ui.draggable.data("soltado", false); 
				         var elem = $(this); 
				         elem.data("numsoltar", elem.data("numsoltar") - 1); 
				         elem.html("Llevo " + elem.data("numsoltar") + " elementos soltados"); 
				      } 
				   } 
				}
			);

	//mous over mostrar mensaje de "click para enviar solicitud."
	//$('#contenedor_alert_notificacion').hover( function() { 
		//$('#alert_notificacion_transferible').hide(400); 
		//$('#alert_notificacion_1').show(400); 
	//} );
	

	
	

	
		
		var clic = 1;
		function divLogin(){
		if(clic==1){
			document.getElementById("caja").style.height = "245px";
			clic = clic + 1;
		} else{
			document.getElementById("caja").style.height = "0px";
			clic = 1;
			}
		}
});


//mous over mostrar mensaje de "click para enviar solicitud."
function overNotificaciones() { 
	console.log('over');
	document.getElementById("alert_notificacion_transferible").style.display = "none";
	document.getElementById("alert_notificacion_1").style.display = "block";
	//$('#alert_notificacion_transferible').hide(400); 
	//$('#alert_notificacion_1').show(400); 
} 

function outoverNotificaciones() { 
	console.log('outover');
	document.getElementById("alert_notificacion_transferible").style.display = "block";
	document.getElementById("alert_notificacion_1").style.display = "none";
	//$('#alert_notificacion_transferible').show(400); 
	//$('#alert_notificacion_1').hide(400); 
}


//funcion btn aceptar agregar a persona a red
function agregar_nodo(){

	console.log("remover clase " + rama_remove_class);
	
	$("#contenedor_"+id_persona).remove();
	$("#confirmacion_movimiento").hide(1500);
	$("#exito_movimiento").show(1500);
	//remover clase para qe ya no puedan arrastrar mas ahi.
	$("#"+ rama_remove_class).removeClass("ui-droppable");
	$("#"+ rama_remove_class).removeClass("suelta");
	
	//Volver a ocultar el mensaje de exito. 
	setTimeout(function() {
		$("#exito_movimiento").hide(1800);
		
	}, 7000);
	
}

function cancelar_agregar_nodo(){
 //console.log( persona_moviendo +   "      #contenedor_monito_" + persona_moviendo);
 $("#confirmacion_movimiento").hide(1200);
 $("#contenedor_monito_"+persona_moviendo).html('<div id="'+persona_moviendo+'" class="usuario_emprendedor_esi arrastrable"></div>'); 
 
 $("#"+rama_remove_class).html('<div class="adminorg_notificacion"><div class="adminorg_notif_agregar"></div><div class="adminorg_notif_texto">Espacio disponible</div></div>'+
 '<img src="${request.contextPath}/images/organizacion/IconosUsuario/sincolor_m2.png">');
 
 $(".arrastrable").draggable();
}

//mostrar mensaje de confirmacion de enviar solicitud
function confirmacion_solicitud_cotizacion(){
	$("#confirmacion_cotizacion").show(1500);
}

//funcion enviar solicitud "btn aceptar"
function enviar_solicitud_cotizacion(){
	$("#confirmacion_cotizacion").hide(1500);
	$("#solicitud_enviada").show(2000);
	
	//Volver a ocultar el mensaje de exito. 
	setTimeout(function() {
		$("#solicitud_enviada").hide(1300);
		$('#alert_notificacion_1').hide(300); 
		$('#alert_notificacion_1').remove();
		$('#alert_notificacion_transferible').remove();
		$("#alert_notificacion_cotizacion_solicitada").show(300);

		setTimeout(function() {
			$("#alert_notificacion_cotizacion_solicitada").hide(300);
			$("#alert_notificacion_registrar_emprendedor").show(300);
			}, 15000);
		
	}, 6000);
	
	
}

//funcion cancelar solicitud, "btn cancelar"
function cancelar_solicitud_cotizacion(){
	$("#confirmacion_cotizacion").hide(2000);
}

function registrar_persona(){
	window.open('/compromisomx/registrar','_blank');
	setTimeout(function() {
	
			$("#alert_notificacion_registrar_emprendedor").hide(500);
			$("#alert_notificacion_persona_agregada").show(500);
			
			}, 20000);
}

//funcion generica para mostrar modal, de datos persona
function mostrar_detalles_socia(id){
	console.log(id);
	$('#muestrame_detalles_' + id).show(500);
}

</script>            

            
</body>
</html>