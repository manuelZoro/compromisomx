<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
	<meta name="layout" content="organizacion_layout"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
   
</head>
<body>

<!-- Inicia Contenido principal -->
            <div class="row">
                <div class="col-md-12">&nbsp;<br></div>
                <div class="col-md-3">
                    <h3><strong>Datos del Envío</strong><button type="button" class="btn btn-gris btn_accion_encabezado" onclick="window.location.href='/compromisomx/envios/'">&lt;&lt;Atrás</button></h3><br>
                </div>
                <div class="col-md-9">
                    <div class="row"><div class="col-md-12">&nbsp;</div></div>
                	<div class="row">
                    	<div class="col-md-6">
                        	<div class="row">
                            	<div class="col-md-3"><strong>Número de envío</strong></div>
                                <div class="col-md-9"><g:formatNumber number="${detalles_v.num_envio}" minIntegerDigits="8" /></div>
                            </div>
                        	<div class="row">
                            	<div class="col-md-3"><strong>ID</strong></div>
                                <div class="col-md-9"><g:formatNumber number="${detalles_v.num_envio}" minIntegerDigits="8" /></div>
                            </div>
                        	<div class="row">
                            	<div class="col-md-3"><strong>Fecha</strong></div>
                                <div class="col-md-9"><g:formatDate format="dd/MM/yyyy" date="${detalles_v.fecha}"/></div>
                            </div>
                        </div>
                    	<div class="col-md-6">
                        	<div class="row">
                            	<div class="col-md-3"><strong>Usuario</strong></div>
                                <div class="col-md-9">${cuenta_v.nombre_usuario}</div>
                            </div>
                        	<div class="row">
                            	<div class="col-md-3"><strong>Estatus</strong></div>
                            	<%switch(detalles_v.estatus){
									case 1:
									 %><div class="col-md-9">Pendiente</div><%
									 break; 
									case 2:
									 %><div class="col-md-9">Procesado</div><%
									 break;
									case 3:
									 %><div class="col-md-9">Enviado</div><%
								     break;
									case 4:
									 %><div class="col-md-9">Completado</div><%
								     break;
									case 5:
									 %><div class="col-md-9">Cancelado</div><%
									 break;
									case 6:
									 %><div class="col-md-9">Devuelto</div><%
									 break;
									} %> 
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">&nbsp;<br></div>
                <div class="col-md-3">
                    <h3><strong>Dirección del Envío</strong></h3><button type="button" class="btn btn-gris btn_accion_encabezado" onclick="window.location.href='/compromisomx/envios/direcciones?env=${detalles_v.num_envio}'">/ Cambiar dirección de envío</button><br>
                </div>
                <div class="col-md-9">
                    <div class="row"><div class="col-md-12">&nbsp;</div></div>
                	<div class="row">
                    	<div class="col-md-6">
                        	<div class="row">
                            	<div class="col-md-3"><strong>Nombre (s)</strong></div>
                                <div class="col-md-9">${detalles_v.direccion.nombres}</div>
                            </div>
                        	<div class="row">
                            	<div class="col-md-3"><strong>Primer apellido</strong></div>
                                <div class="col-md-9">${detalles_v.direccion.p_apellido}</div>
                            </div>
                        	<div class="row">
                            	<div class="col-md-3"><strong>Segundo apellido</strong></div>
                                <div class="col-md-9">${detalles_v.direccion.s_apellido}</div>
                            </div>
                        	<div class="row">
                            	<div class="col-md-3"><strong>País</strong></div>
                                <div class="col-md-9">${detalles_v.direccion.pais}</div>
                            </div>
                        	<div class="row">
                            	<div class="col-md-3"><strong>Estado</strong></div>
                                <div class="col-md-9">${detalles_v.direccion.estado}</div>
                            </div>
                        	<div class="row">
                            	<div class="col-md-3"><strong>Ciudad</strong></div>
                                <div class="col-md-9">${detalles_v.direccion.ciudad}</div>
                            </div>
                        	<div class="row">
                            	<div class="col-md-3"><strong>C.P.</strong></div>
                                <div class="col-md-9">${detalles_v.direccion.cp}</div>
                            </div>
                        </div>
                    	<div class="col-md-6">
                        	<div class="row">
                            	<div class="col-md-3"><strong>Colonia</strong></div>
                                <div class="col-md-9">${detalles_v.direccion.colonia}</div>
                            </div>
                        	<div class="row">
                            	<div class="col-md-3"><strong>Calle</strong></div>
                                <div class="col-md-9">${detalles_v.direccion.calle}</div>
                            </div>
                        	<div class="row">
                            	<div class="col-md-3"><strong>Manzana</strong></div>
                                <div class="col-md-9">${detalles_v.direccion.manzana}</div>
                            </div>
                        	<div class="row">
                            	<div class="col-md-3"><strong>Número Int.</strong></div>
                                <div class="col-md-9">${detalles_v.direccion.numero_int}</div>
                            </div>
                        	<div class="row">
                            	<div class="col-md-3"><strong>Número Ext.</strong></div>
                                <div class="col-md-9">${detalles_v.direccion.numero}</div>
                            </div>
                        	<div class="row">
                            	<div class="col-md-3"><strong>Cruzamientos</strong></div>
                                <div class="col-md-9">${detalles_v.direccion.cruzamientos}</div>
                            </div>
                        	<div class="row">
                            	<div class="col-md-3"><strong>Referencias</strong></div>
                                <div class="col-md-9">${detalles_v.direccion.referencias}</div>
                            </div>
                        	<div class="row">
                            	<div class="col-md-3"><strong>Teléfono</strong></div>
                                <div class="col-md-9">${detalles_v.direccion.telefono}</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">&nbsp;<br></div>
                <div class="col-md-3">
                    <h3><strong>Información de Facturación</strong></h3><button type="button" class="btn btn-gris btn_accion_encabezado" onclick="window.location.href='/compromisomx/envios/formas_de_pago?env=${detalles_v.num_envio}'">/ Cambiar método de pago</button><br>
                </div>
                <div class="col-md-9">
                    <div class="row"><div class="col-md-12">&nbsp;</div></div>
                	<div class="row">
                    	<div class="col-md-6">
                        	<div class="row">
                            	<div class="col-md-3"><strong>Forma de pago</strong></div>
                                <div class="col-md-9">Tarjeta de Crédito/Débito</div>
                            </div>
                        	<div class="row">
                            	<div class="col-md-3"><strong>Titular de la tarjeta</strong></div>
                                <div class="col-md-9">${detalles_v.pago.titular}</div>
                            </div>
                        	<div class="row">
                            	<div class="col-md-3"><strong>Tipo</strong></div>
                                <%switch(detalles_v.pago.tipo_tarjeta){
									case 1:
									 %><div class="col-md-9">Master Card</div><%
									 break; 
									case 2:
									 %><div class="col-md-9">Visa</div><%
									 break;
									} %>
                            </div>
                        	<div class="row">
                            	<div class="col-md-3"><strong>Número de la tarjeta</strong></div>
                                <div class="col-md-9">**** **** **** <g:formatNumber number="${detalles_v.pago.num_tarjeta}" maxIntegerDigits="4"/></div>
                            </div>
                        	<div class="row">
                            	<div class="col-md-3"><strong>Fecha de vencimiento</strong></div>
                                <div class="col-md-9"><g:formatDate format="MM/yyyy" date="${detalles_v.pago.expiracion}"/></div>
                            </div>
                        </div>
                    	<div class="col-md-6">
                        	<div class="row">
                            	<div class="col-md-12"><strong>Dirección de facturación</strong></div>
                            </div>
                        	<div class="row">
                            	<div class="col-md-1"></div>
                            	<div class="col-md-3"><strong>Calle</strong></div>
                                <div class="col-md-8">${detalles_v.pago.calle}</div>
                            </div>
                        	<div class="row">
                            	<div class="col-md-1"></div>
                            	<div class="col-md-3"><strong>Colonia</strong></div>
                                <div class="col-md-8">${detalles_v.pago.colonia}</div>
                            </div>
                        	<div class="row">
                            	<div class="col-md-1"></div>
                            	<div class="col-md-3"><strong>C.P.</strong></div>
                                <div class="col-md-8">${detalles_v.pago.cp}</div>
                            </div>
                        	<div class="row">
                            	<div class="col-md-1"></div>
                            	<div class="col-md-3"><strong>Ciudad</strong></div>
                                <div class="col-md-8">${detalles_v.pago.ciudad}</div>
                            </div>
                        	<div class="row">
                            	<div class="col-md-1"></div>
                            	<div class="col-md-3"><strong>Estado</strong></div>
                                <div class="col-md-8">${detalles_v.pago.estado}</div>
                            </div>
                        	<div class="row">
                            	<div class="col-md-1"></div>
                            	<div class="col-md-3"><strong>País</strong></div>
                                <div class="col-md-8">${detalles_v.pago.pais}</div>
                            </div>
                        	<div class="row">
                            	<div class="col-md-1"></div>
                            	<div class="col-md-3"><strong>Teléfono</strong></div>
                                <div class="col-md-8">${detalles_v.pago.telefono}</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">&nbsp;<br></div>
                <div class="col-md-3">
                    <h3><strong>Descripción del Envío</strong></h3><br>
                </div>
                <div class="col-md-9">
                    <div class="row"><div class="col-md-12">&nbsp;</div></div>
                	<div class="row">
                    	<div class="col-md-12">
                            <table cellspacing="0" cellpadding="0" class="table">
                                <thead>
                                    <tr class="celda_encabezado">
                                        <td>Producto</td>
                                        <td>Estatus</td>
                                        <td>Fecha de envío</td>
                                        <td>Precio Unitario</td>
                                        <td>Cantidad</td>
                                        <td>Precio Total</td>
                                    </tr>
                                </thead>
                                <tbody>
                                <% float subtotal=0; %>
                                <g:each in="${descripcion_v}" var="descripcion" status="i" >
                                <% if(i%2==0){ %>
                                	<tr class="fila_striped2">
                                    	<td class="celda_org_normal">${descripcion.producto}</td>
                                        <%estatus=descripcion.estatus%>
										<%switch(estatus){
										case 1:
										 %><td class="celda_org_normal">Pendiente</td><%
										 break;
										case 2:
										 %><td class="celda_org_normal">Procesado</td><%
										 break;
										case 3:
										 %><td class="celda_org_normal">Enviado</td><%
										 break;
										case 4:
										 %><td class="celda_org_normal">Completado</td><%
										 break;
										case 5:
										 %><td class="celda_org_normal">Cancelado</td><%
										 break;
										case 6:
										 %><td class="celda_org_normal">Devuelto</td><%
										 break;
										} %>
                                        <td class="celda_org_normal"><g:formatDate format="dd/MM/yyyy" date="${descripcion.fecha_env}"/></td>
                                        <td class="celda_org_normal"><g:formatNumber number="${descripcion.p_unit}" type="currency" currencyCode="MXN" /></td>
                                        <td class="celda_org_normal">${descripcion.cantidad}</td>
                                        <td class="celda_org_normal txt_der"><g:formatNumber number="${descripcion.p_unit * descripcion.cantidad}" type="currency" currencyCode="MXN" /></td>
										<% subtotal = subtotal+ (descripcion.p_unit * descripcion.cantidad); %>
									</tr>
								<%}else{  %>
									<tr class="fila_striped1">
                                    	<td class="celda_org_normal">${descripcion.producto}</td>
                                        <%estatus=descripcion.estatus%>
										<%switch(estatus){
										case 1:
										 %><td class="celda_org_normal">Pendiente</td><%
										 break;
										case 2:
										 %><td class="celda_org_normal">Procesado</td><%
										 break;
										case 3:
										 %><td class="celda_org_normal">Enviado</td><%
										 break;
										case 4:
										 %><td class="celda_org_normal">Completado</td><%
										 break;
										case 5:
										 %><td class="celda_org_normal">Cancelado</td><%
										 break;
										case 6:
										 %><td class="celda_org_normal">Devuelto</td><%
										 break;
										} %>
                                        <td class="celda_org_normal"><g:formatDate format="dd/MM/yyyy" date="${descripcion.fecha_env}"/></td>
                                        <td class="celda_org_normal"><g:formatNumber number="${descripcion.p_unit}" type="currency" currencyCode="MXN" /></td>
                                        <td class="celda_org_normal">${descripcion.cantidad}</td>
                                        <td class="celda_org_normal txt_der"><g:formatNumber number="${descripcion.p_unit * descripcion.cantidad}" type="currency" currencyCode="MXN" /></td>
										<% subtotal = subtotal+ (descripcion.p_unit * descripcion.cantidad); %>
									</tr>
								<%} %>
								</g:each>
									<tr class="fila_transparente">
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td class="celda_normal_total_der">Envío</td>
                                        <td class="celda_normal_total_izq">$00.00</td>
                                    </tr>
                                    <tr class="fila_transparente">
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td class="celda_normal_total_der">Manejo</td>
                                        <td class="celda_normal_total_izq">$00.00</td>
                                    </tr>
                                    <tr class="fila_transparente">
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td class="celda_normal_total_der">Flete / aduanal</td>
                                        <td class="celda_normal_total_izq">$00.00</td>
                                    </tr>
                                    <tr class="fila_transparente">
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td class="celda_normal_total_der">Subtotal</td>
                                        <td class="celda_normal_total_izq"><g:formatNumber number="${subtotal}" type="currency" currencyCode="MXN" />
                                    </tr>
                                    <tr class="fila_transparente">
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td class="celda_normal_total_der">I.V.A (16%)</td>
                                        <td class="celda_normal_total_izq"><g:formatNumber number="${(subtotal)*(0.16)}" type="currency" currencyCode="MXN" /></td>
                                    </tr>    
                                     <tr class="fila_transparente">   
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td class="celda_normal_total_der">Total</td>
                                        <td class="celda_normal_total_izq"><g:formatNumber number="${subtotal + (subtotal)*(0.16)}" type="currency" currencyCode="MXN" /></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">&nbsp;<br></div>
                <div class="col-md-3">
                    <h3><strong>Información del Pago</strong></h3><br>
                </div>
                <div class="col-md-9">
                    <div class="row"><div class="col-md-12">&nbsp;</div></div>
                	<div class="row">
                    	<div class="col-md-12">
                            <table cellspacing="0" cellpadding="0" class="table">
                                <thead>
                                    <tr class="celda_encabezado">
                                        <td>ID de transferencia</td>
                                        <td>ID de pago</td>
                                        <td>Número de la tarjeta</td>
                                        <td>Número de autorización</td>
                                        <td>Cantidad</td>
                                        <td>Día de tranferencia</td>
                                        <td>Estatus</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="fila_striped1">
                                        <td class="celda_org_normal">12345</td>
                                        <td class="celda_org_normal">12345</td>
                                        <td class="celda_org_normal">**** **** **** 1234</td>
                                        <td class="celda_org_normal">0000001</td>
                                        <td class="celda_org_normal">$1,000,000</td>
                                        <td class="celda_org_normal">11/02/2013</td>
                                        <td class="celda_org_normal">Aprobada</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">&nbsp;</div>
            </div>
            
            <!-- Termina Contenido Principal -->
</body>
</html>