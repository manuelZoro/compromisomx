<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="layout" content="registro_lay" />
<title>Insert title here</title>
</head>

<body>

<div id="pantalla1" style="">
							<g:form action="siguiente5_1">

                    <div class="row">
                        <div class="col-md-2">
                        </div>
                        <div class="col-md-8">
                        	<p>&nbsp;</p>
                            <h3><strong>Paso 5. Información de autopago y envío</strong></h3>
                        	<p>&nbsp;</p>
                        </div>
                        <div class="col-md-2">
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-md-2">
                        </div>
                        <div class="col-md-8">
                            <div class="row">
                            	<div class="col-md-12">
                                	<div class="txt_izq"><div class="checkbox pull-left"><label><input type="checkbox" id="checkinfo" name="checkinfo"
											onClick="recommendSausage()" value="true"></label><strong><small>Utilizar mi información de contacto para mi direccion de envío.</small></strong></div></div>
                                </div>
                            	<div class="col-md-6">
                                	<div class="row altura_fila">
                                        <div class="col-md-5"><p class="pull-right texto_normal">Nombre(s)*:</p></div>
                                        <div class="col-md-7"><input required type="text" class="form-control texto_campo_principal" placeholder=""  name="nombre_aut" id="nombre_aut"></div>
                                	</div>
                                	<div class="row altura_fila">
                                        <div class="col-md-5"><p class="pull-right texto_normal">Primer Apellido*:</p></div>
                                        <div class="col-md-7"><input required type="text" class="form-control texto_campo_principal" placeholder="" name="priemrapellidoaut"
											id="priemrapellidoaut"></div>
                                	</div>
                                	<div class="row altura_fila">
                                    	<div class="col-md-5"><p class="pull-right texto_normal">Segundo Apellido*:</p></div>
                                    	<div class="col-md-7"><input required type="text" class="form-control texto_campo_principal" placeholder="" name="segunoapellidoaut"
											id="segunoapellidoaut"></div>
                                    </div>
                                	<div class="row altura_fila">
                                    	<div class="col-md-5"><p class="pull-right texto_normal">País*:</p></div>
                                    	<div class="col-md-7">
                                            <select class="form-control input-sm texto_campo_principal espaciado_campo_principal"  name="paisaut" id="paisaut">
                                            	<g:each
												in="${todospaises}" var="paises" status="i">
												<option value="${paises.id}">
													${paises.nombre}
												</option>
												</g:each>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row altura_fila">
                                		<div class="col-md-5"><p class="pull-right texto_normal">Estado*:</p></div>
                                    	<div class="col-md-7">
                                            <select class="form-control input-sm texto_campo_principal espaciado_campo_principal" name="estadoaut" id="estadoaut">
                                            	<g:each
												in="${todosestados}" var="estados" status="i">
												<option value="${estados.id}">
													${estados.nombre}
												</option>
												</g:each>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row altura_fila">
                                		<div class="col-md-5"><p class="pull-right texto_normal">Ciudad*:</p></div>
                                    	<div class="col-md-7">
                                            <select class="form-control input-sm texto_campo_principal espaciado_campo_principal" name="cuidadaut" id="cuidadaut">
                                            	<option value="1">Default</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row altura_fila">
                                		<div class="col-md-5"><p class="pull-right texto_normal">Código Postal*:</p></div>
                                    	<div class="col-md-7"><input required type="text" class="form-control texto_campo_principal" placeholder="" name="cpaut" id="cpaut"></div>
                                    </div>
                                    <div class="row altura_fila">
                                		<div class="col-md-5"><p class="pull-right texto_normal">Colonia*:</p></div>
                                        <div class="col-md-7"><input required type="text" class="form-control texto_campo_principal" placeholder="" name="coloniaaut" id="coloniaaut"></div> 
                                    </div>
                                </div>
                            	<div class="col-md-6">
                                    <div class="row altura_fila">
                                		<div class="col-md-5"><p class="pull-right texto_normal">Calle*:</p></div>
                                    	<div class="col-md-7"><input type="text" class="form-control texto_campo_principal" placeholder="" name="calleaut" id="calleaut"></div>
                                    </div>
                                    <div class="row altura_fila">
                                		<div class="col-md-5"><p class="pull-right texto_normal">Número exterior*:</p></div>
                                    	<div class="col-md-3"><input required type="text" class="form-control texto_campo_principal" placeholder="" name="numextaut" id="numextaut"></div>
                                    </div>
                                    <div class="row altura_fila">
                                		<div class="col-md-5"><p class="pull-right texto_normal">Número interior:</p></div>
                                    	<div class="col-md-3"><input type="text" class="form-control texto_campo_principal" placeholder="" name="numintaut" id="numintaut"></div>
                                    </div>
                                    <div class="row altura_fila">
                                		<div class="col-md-5"><p class="pull-right texto_normal">Manzana:</p></div>
                                    	<div class="col-md-7"><input type="text" class="form-control texto_campo_principal" placeholder="" name="manzanaaut" id="manzanaaut"></div>
                                    </div>
                                    <div class="row altura_fila">
                                		<div class="col-md-5"><p class="pull-right texto_normal">Cruzamientos:</p></div>
                                    	<div class="col-md-7"><input type="text" class="form-control texto_campo_principal" placeholder="" name="cruzamientosaut" id="cruzamientosaut"></div>
                                    </div>
                                    <div class="row altura_fila">
                                		<div class="col-md-5"><p class="pull-right texto_normal">Referencias:</p></div>
                                    	<div class="col-md-7"><input type="text" class="form-control texto_campo_principal" placeholder=""  name="referenciasaut" id="referenciasaut"></div>
                                    </div>
                                    <div class="row altura_fila">
                                		<div class="col-md-5"><p class="pull-right texto_normal">Teléfono*:</p></div>
                                    	<div class="col-md-7"><input type="text" class="form-control texto_campo_principal" placeholder="" name="telefono" id="telefono"></div>
                                    </div>
                                    <div class="row altura_fila">
                                		<div class="col-md-5"><p class="pull-right texto_normal">Correo electrónico*:</p></div>
                                    	<div class="col-md-7"><input type="text" class="form-control texto_campo_principal" placeholder=""  name="correoaut" id="correoaut"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2">
                        </div>
                    </div>


								<!--
				<button type="submit" class="btn btn-default" value="Submit"
					name="sigui" id="sigui">Siguiente</button>-->
							</g:form>
						</div>

</body>

</html>