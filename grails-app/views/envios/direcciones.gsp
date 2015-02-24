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
                <div class="col-md-5">
                	<g:hiddenField name="num_env" value="${detalles_v.num_envio}"/>
                    <h3><strong>Cambiar dirección de envío</strong><button type="button" class="btn btn-gris btn_accion_encabezado" onclick="window.location.href='/compromisomx/envios/envio_detalles?env=${detalles_v.num_envio}'">&lt;&lt;Atrás</button></h3>
                	<h4><strong>Envío No. <g:formatNumber number="${detalles_v.num_envio}" minIntegerDigits="8" /></strong></h4>
                </div>
                <div class="col-md-7">
                	<div class="row hidden">
                    	<div class="col-md-12"><div class="envio_notificacion envio_notif_correcto">La dirección de envío se agregó correctamente.</div></div>
                    	<div class="col-md-12"><div class="envio_notificacion envio_notif_alerta">Favor de completar los campos obligatorios.</div></div>
                    	<div class="col-md-12"><div class="envio_notificacion envio_notif_correcto">El cambio de la dirección de envío se realizó correctamente.</div></div>
                    </div>
                </div>
                <div class="col-md-12">&nbsp;<br></div>
                <div class="col-md-3">
                	<h4><strong>Dirección del envío actual</strong></h4><br>
                </div>
                <div class="col-md-9">
                    <div class="row"><div class="col-md-12">&nbsp;</div></div>
                	
                	<!-- El row con los datos a actualizar que quiero insertar  -->
  					<div class="row" id="seleccionado">
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
                        	<div class="row">
                            	<div class="col-md-8"></div>
                            	<div class="col-md-4"><button type="button" class="btn btn-gris btn_accion_encabezado" onclick="window.location.href='/compromisomx/envios/envio_detalles?env=${detalles_v.num_envio}'">Guardar cambios</button></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">&nbsp;<br></div>
                <div class="col-md-12"><h3><strong>Seleccione una dirección de envío diferente</strong></h3></div>
                <div class="col-md-3">
                </div>
                <div class="col-md-9">
                    <div class="row"><div class="col-md-12">&nbsp;</div></div>
                	<div class="row">
                        <table cellspacing="0" cellpadding="0" class="table">
                            <thead>
                                <tr class="fila_transparente">
                                    <td>&nbsp;</td>
                                    <td><strong>Estado</strong></td>
                                    <td><strong>Ciudad</strong></td>
                                    <td><strong>Codigo Postal</strong></td>
                                    <td><strong>Colonia</strong></td>
                                    <td><strong>Calle</strong></td>
                                    <td><strong>Manzana</strong></td>
                                    <td><strong>Número</strong></td>
                                </tr>
                            </thead>
                            <tbody>
                            <g:each  in="${direcciones_v}" var="direccion" status="i" >
                                <tr class="fila_transparente">
                                    <td><label><input type="radio" name="group1" value="i" onclick="load_dir(${i},${detalles_v.num_envio})"></label></td>
                                    <td>${direccion.estado}</td>
                                    <td>${direccion.ciudad}</td>
                                    <td>${direccion.cp}</td>
                                    <td>${direccion.colonia}</td>
                                    <td>${direccion.calle}</td>
                                    <td>${direccion.manzana}</td>
                                    <td>${direccion.numero}  <g:hiddenField name="id" value="${direccion.id}"/></td>
                                </tr>
                            </g:each>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="col-md-12">&nbsp;<br></div>
                <div class="col-md-12">
                    <h3><strong>O agrega una nueva dirección de envío</strong></h3><br>
                </div>
                <g:form controller="Envios" action ="guardarDireccion">
                <g:hiddenField name="idcliente" value="${detalles_v.cuenta.id}"/>
                <g:hiddenField name="envio" value="${detalles_v.num_envio}"/>
                <div class="col-md-3"></div>
                <div class="col-md-9">
                    <div class="row">
                    	<div class="col-md-6">
                        	<div class="row altura_fila">
                            	<div class="col-md-3">Nombre (s)*</div>
                                <div class="col-md-8"><input required type="text" class="form-control texto_campo_principal" placeholder=""  name="nombres" id="nombres" value=""></div>
                            </div>
                        	<div class="row altura_fila">
                            	<div class="col-md-3">Primer Apellido*</div>
                                <div class="col-md-8"><input required type="text" class="form-control texto_campo_principal" placeholder=""  name="p_apellido" id="p_apellido" value=""></div>
                            </div>
                        	<div class="row altura_fila">
                            	<div class="col-md-3">Seg. Apellido*</div>
                                <div class="col-md-8"><input required type="text" class="form-control texto_campo_principal" placeholder=""  name="s_apellido" id="s_apellido" value=""></div>
                            </div>
                        	<div class="row altura_fila">
                            	<div class="col-md-3">País*</div>
                                <div class="col-md-8">
                                	<select class="form-control input-sm texto_campo_principal espaciado_campo_principal"  name="pais" id="pais" value="${direcciones_v.pais}">
                                        <option value="1">México</option>
                                    </select>
                                </div>
                            </div>
                        	<div class="row altura_fila">
                            	<div class="col-md-3">Estado*</div>
                                <div class="col-md-8">
                                    <!-- Dropdown estados de México -->
									<select name="estado" id="estado" class="form-control input-sm texto_campo_principal espaciado_campo_principal" onchange="muni(this.value);" value="${direcciones_v.estado}">
										<option value="1" selected="selected">Aguascalientes</option>
										<option value="2">Baja California</option>
										<option value="3">Baja California Sur</option>
										<option value="4">Campeche</option>
										<option value="5">Coahuila de Zaragoza</option>
										<option value="6">Colima</option>
										<option value="7">Chiapas</option>
										<option value="8">Chihuahua</option>
										<option value="9">Distrito Federal</option>
										<option value="10">Durango</option>
										<option value="11">Guanajuato</option>
										<option value="12">Guerrero</option>
										<option value="13">Hidalgo</option>
										<option value="14">Jalisco</option>
										<option value="15">México</option>
										<option value="16">Michoacán de Ocampo</option>
										<option value="17">Morelos</option>
										<option value="18">Nayarit</option>
										<option value="19">Nuevo León</option>
										<option value="20">Oaxaca</option>
										<option value="21">Puebla</option>
										<option value="22">Querétaro</option>
										<option value="23">Quintana Roo</option>
										<option value="24">San Luis Potosí</option>
										<option value="25">Sinaloa</option>
										<option value="26">Sonora</option>
										<option value="27">Tabasco</option>
										<option value="28">Tamaulipas</option>
										<option value="29">Tlaxcala</option>
										<option value="30">Veracruz de Ignacio de la Llave</option>
										<option value="31">Yucatán</option>
										<option value="32">Zacatecas</option>
									</select>
                                </div>
                            </div>
                        	<div class="row altura_fila">
                            	<div class="col-md-3">Ciudad*</div>
                                <div class="col-md-8">
                                	<select class="form-control input-sm texto_campo_principal espaciado_campo_principal"  name="ciudad" id="ciudad" value="${direcciones_v.ciudad}">
                                        <option value="1" selected="selected">Aguascalientes</option>
										<option value="2">Asientos</option>
										<option value="3">Calvillo</option>
										<option value="4">Cosio</option>
										<option value="5">Jesus Maria</option>
										<option value="6">Pabellon de Arteaga</option>
										<option value="7">Rincon de Romos</option>
										<option value="8">San Jose de Gracia</option>
										<option value="9">Tepezala</option>
										<option value="10">El Llano</option>
										<option value="11">San Francisco de los Romo</option>
                                    </select>
                                </div>
                            </div>
                        	<div class="row altura_fila">
                            	<div class="col-md-3">C.P.*</div>
                                <div class="col-md-8"><input required type="text" class="form-control texto_campo_principal" placeholder=""  name="cp" id="cp" value=""/></div>
                            </div>
                        </div>
                    	<div class="col-md-6">
                        	<div class="row altura_fila">
                            	<div class="col-md-3">Colonia*</div>
                                <div class="col-md-8"><input required type="text" class="form-control texto_campo_principal" placeholder=""  name="colonia" id="colonia" value=""></div>
                            </div>
                        	<div class="row altura_fila">
                            	<div class="col-md-3">Calle*</div>
                                <div class="col-md-8"><input required type="text" class="form-control texto_campo_principal" placeholder=""  name="calle" id="calle" value=""></div>
                            </div>
                        	<div class="row altura_fila">
                            	<div class="col-md-3">Número Exterior*</div>
                                <div class="col-md-8"><input required type="text" class="form-control texto_campo_principal" placeholder=""  name="numero" id="numero" value=""></div>
                            </div>
                        	<div class="row altura_fila">
                            	<div class="col-md-3">Número Interior</div>
                                <div class="col-md-8"><input type="text" class="form-control texto_campo_principal" placeholder=""  name="numero_int" id="numero_int" value=""></div>
                            </div>
                        	<div class="row altura_fila">
                            	<div class="col-md-3">Cruzamientos</div>
                                <div class="col-md-8"><input type="text" class="form-control texto_campo_principal" placeholder=""  name="cruzamientos" id="cruzamientos" value=""></div>
                            </div>
                        	<div class="row altura_fila">
                            	<div class="col-md-3">Referencias</div>
                                <div class="col-md-8"><input type="text" class="form-control texto_campo_principal" placeholder=""  name="referencias" id="referencias" value=""></div>
                            </div>
                        	<div class="row altura_fila">
                            	<div class="col-md-3">Manzana</div>
                                <div class="col-md-8"><input type="text" class="form-control texto_campo_principal" placeholder=""  name="manzana" id="manzana" value=""></div>
                            </div>
                        	<div class="row altura_fila">
                            	<div class="col-md-3">Teléfono*</div>
                                <div class="col-md-8"><input required type="text" class="form-control texto_campo_principal" placeholder=""   name="telefono" id="telefono" value=""></div>
                            </div>
                        </div>
                    </div>
                    <!-- <a>${direcciones_v.cuenta.id[0]}</a> -->
                    <g:hiddenField name ="idcuenta" value="${direcciones_v.cuenta.id[0]}"/>
                    <div class="row altura_fila">
                    	<div class="col-md-10 alerta_datosobligatorios">* Campos obligatorios.</div>
                    	<div class="col-md-2"><button type="submit" class="btn btn-gris btn_accion_encabezado">Guardar cambios</button></div>
                    </div>
                </div>
                </g:form>
            </div>
            <div class="row">
                <div class="col-md-12">&nbsp;</div>
            </div>
            
            <!-- Termina Contenido Principal -->
            
            <script type="text/javascript">
			function muni(val){		
		 		var arrayValores=new Array(
			       new Array("1","1","Aguascalientes"),
			       new Array("1","2","Asientos"),
			       new Array("1","3","Calvillo"),
			       new Array("1","4","Cosio"),
			       new Array("1","5","Jesus Maria"),
			       new Array("1","6","Pabellon de Arteaga"),
			       new Array("1","7","Rincon de Romos"),
			       new Array("1","8","San Jose de Gracia"),
			       new Array("1","9","Tepezala"),
			       new Array("1","10","El Llano"),
			       new Array("1","11","San Francisco de los Romo"),
			       new Array("Baja California","1","Ensenada"),
			       new Array("Baja California","2","Mexicali"),
			       new Array("Baja California","3","Tecate"),
			       new Array("Baja California","4","Tijuana"),
			       new Array("Baja California","5","Playas de Rosarito"),
			       new Array("Baja California Sur","1","Comondu"),
			       new Array("Baja California Sur","2","Mulege"),
			       new Array("Baja California Sur","3","La Paz"),
			       new Array("Baja California Sur","4","Los Cabos"),
			       new Array("Baja California Sur","5","Loreto"),
			       new Array("Campeche","1","Calkini"),
			       new Array("Campeche","2","Campeche"),
			       new Array("Campeche","3","Carmen"),
			       new Array("Campeche","4","Champoton"),
			       new Array("Campeche","5","Helcelchakan"),
			       new Array("Campeche","6","Hopelchen"),
			       new Array("Campeche","7","Palizada"),
			       new Array("Campeche","8","Tenabo"), 
			       new Array("Campeche","9","Escarcega"),
			       new Array("Campeche","10","Calakmul"),
			       new Array("Campeche","11","Candelaria"),
			       new Array("Coahuila","1","Abasolo"),
			       new Array("Coahuila","2","Acu"),
			       new Array("Coahuila","3","Allende"),
			       new Array("Coahuila","4","Arteaga"),
			       new Array("Coahuila","5","Candela"),
			       new Array("Coahuila","6","Casta"),
			       new Array("Coahuila","7","Cuatro Cienagas"),
			       new Array("Coahuila","8","Escobedo"), 
			       new Array("Coahuila","9","Francisco I. Madero"),
			       new Array("Coahuila","10","Frontera"),
			       new Array("Coahuila","11","General Cepeda"),
			       new Array("Coahuila","12","Guerrero"),
			       new Array("Coahuila","13","Hidalgo"),
			       new Array("Coahuila","14","Jimenez"),
			       new Array("Coahuila","15","Juarez"),
			       new Array("Coahuila","16","Lamadrid"), 
			       new Array("Coahuila","17","Matamoros"),
			       new Array("Coahuila","18","Monclova"),
			       new Array("Coahuila","19","Morelos"),
			       new Array("Coahuila","20","Muzquiz"),
			       new Array("Coahuila","21","Nadadores"),
			       new Array("Coahuila","22","Nava"),
			       new Array("Coahuila","23","Ocampo"),
			       new Array("Coahuila","24","Parras"),
			       new Array("Coahuila","25","Piedras Negras"),
			       new Array("Coahuila","26","Progreso"),
			       new Array("Coahuila","27","Ramos Arizpe"), 
			       new Array("Coahuila","28","Sabinas"),
			       new Array("Coahuila","29","Sacramento"),
			       new Array("Coahuila","30","Saltillo"),
			       new Array("Coahuila","31","San Buenaventura"),
			       new Array("Coahuila","32","San Juan de Sabinas"),
			       new Array("Coahuila","33","San Pedro"),
			       new Array("Coahuila","34","Sierra Mojada"),
			       new Array("Coahuila","35","Torreon"), 
			       new Array("Coahuila","36","Viesca"),
			       new Array("Coahuila","37","Villa Union"),
			       new Array("Coahuila","38","Zaragoza"),
			       new Array("Colima","1","Armeria"),
			       new Array("Colima","2","Colima"),
			       new Array("Colima","3","Comala"),
			       new Array("Colima","4","Coquimatlan"),
			       new Array("Colima","5","Cuauhtemoc"),
			       new Array("Colima","6","Ixtlahuacan"),
			       new Array("Colima","7","Manzanillo"),
			       new Array("Colima","8","Minatitlan"), 
			       new Array("Colima","9","Tecoman"),
			       new Array("Colima","10","Villa de Alvarez"),
			       new Array("Chiapas","1","Abasolo"),
			       new Array("7","2","Acu"),
			       new Array("7","3","Allende"),
			       new Array("7","4","Arteaga"),
			       new Array("7","5","Candela"),
			       new Array("7","6","Casta"),
			       new Array("7","7","Cuatro Cienagas"),
			       new Array("7","8","Escobedo"), 
			       new Array("7","9","Francisco I. Madero"),
			       new Array("7","10","Frontera"),
			       new Array("7","11","General Cepeda"),
			       new Array("7","12","Guerrero"),
			       new Array("7","13","Hidalgo"),
			       new Array("7","14","Jimenez"),
			       new Array("7","15","Juarez"),
			       new Array("7","16","Lamadrid"), 
			       new Array("7","17","Matamoros"),
			       new Array("7","18","Monclova"),
			       new Array("7","19","Morelos"),
			       new Array("7","21","Abasolo"),
			       new Array("7","21","Acu"),
			       new Array("7","22","Allende"),
			       new Array("7","23","Arteaga"),
			       new Array("7","24","Candela"),
			       new Array("7","25","Casta"),
			       new Array("7","26","Cuatro Cienagas"),
			       new Array("7","27","Escobedo"), 
			       new Array("7","28","Francisco I. Madero"),
			       new Array("7","29","Frontera"),
			       new Array("7","30","General Cepeda"),
			       new Array("7","31","Guerrero"),
			       new Array("7","32","Hidalgo"),
			       new Array("7","33","Jimenez"),
			       new Array("7","34","Juarez"),
			       new Array("7","35","Lamadrid"), 
			       new Array("7","36","Matamoros"),
			       new Array("7","37","Monclova"),
			       new Array("7","38","Morelos"),
			       new Array("7","39","Abasolo"),
			       new Array("7","40","Acu"),
			       new Array("7","41","Allende"),
			       new Array("7","42","Arteaga"),
			       new Array("7","43","Candela"),
			       new Array("7","44","Casta"),
			       new Array("7","45","Cuatro Cienagas"),
			       new Array("7","46","Escobedo"), 
			       new Array("7","47","Francisco I. Madero"),
			       new Array("7","48","Frontera"),
			       new Array("7","49","General Cepeda"),
			       new Array("7","50","Guerrero"),
			       new Array("7","51","Hidalgo"),
			       new Array("7","52","Jimenez"),
			       new Array("7","53","Juarez"),
			       new Array("7","54","Lamadrid"), 
			       new Array("7","55","Matamoros"),
			       new Array("7","56","Monclova"),
			       new Array("7","57","Morelos"),
			       new Array("7","58","Abasolo"),
			       new Array("7","59","Acu"),
			       new Array("7","60","Allende"),
			       new Array("7","61","Arteaga"),
			       new Array("7","62","Candela"),
			       new Array("7","63","Casta"),
			       new Array("7","64","Cuatro Cienagas"),
			       new Array("7","65","Escobedo"), 
			       new Array("7","66","Francisco I. Madero"),
			       new Array("7","67","Frontera"),
			       new Array("7","68","General Cepeda"),
			       new Array("7","69","Guerrero"),
			       new Array("7","70","Hidalgo"),
			       new Array("7","71","Jimenez"),
			       new Array("7","72","Juarez"),
			       new Array("7","73","Lamadrid"), 
			       new Array("7","74","Matamoros"),
			       new Array("7","75","Monclova"),
			       new Array("7","76","Morelos"),
			       new Array("7","77","Abasolo"),
			       new Array("7","78","Acu"),
			       new Array("7","79","Allende"),
			       new Array("7","80","Arteaga"),
			       new Array("7","81","Candela"),
			       new Array("7","82","Casta"),
			       new Array("7","83","Cuatro Cienagas"),
			       new Array("7","84","Escobedo"), 
			       new Array("7","85","Francisco I. Madero"),
			       new Array("7","86","Frontera"),
			       new Array("7","87","General Cepeda"),
			       new Array("7","88","Guerrero"),
			       new Array("7","89","Hidalgo"),
			       new Array("7","90","Jimenez"),
			       new Array("7","91","Juarez"),
			       new Array("7","92","Lamadrid"), 
			       new Array("7","93","Tecpatan"),
			       new Array("7","94","Tenejapa"),
			       new Array("7","95","Teopisca"),
			       new Array("7","96","Tila"),
			       new Array("7","97","Tonala"),
			       new Array("7","98","Totoloapa"),
			       new Array("7","99","La Trinitaria"),
			       new Array("7","100","Tumbala"),
			       new Array("7","101","Tuxtla Gutierrez"),
			       new Array("7","102","Tuxtla Chico"),
			       new Array("7","103","Tuzantan"), 
			       new Array("7","104","Tzimol"),
			       new Array("7","105","Union Juarez"),
			       new Array("7","106","Venustiano Carranza"),
			       new Array("7","107","Villa Corza"),
			       new Array("7","108","Vallaflores"),
			       new Array("7","109","Yajalon"),
			       new Array("7","110","San Lucas"),
			       new Array("7","111","Zinacantan"), 
			       new Array("7","112","San Juan Cancuc"),
			       new Array("7","113","Aldama"),
			       new Array("7","114","Benemerito de las Americas"),
			       new Array("7","115","Maravilla Tenejapa"),
			       new Array("7","116","Marques de Comillas"),
			       new Array("7","117","Montecristo de Guerrero"), 
			       new Array("7","118","San Andres Duraznal"),
			       new Array("7","119","Santiago el Pinar"),
			       new Array("8","1","Morelos")
		
			       
			   );

			   if(val==0)
			   {
			       // desactivamos el segundo select
			       document.getElementById("ciudad").disabled=true;
			   }else{
			   	//alert(val);
			       // eliminamos todos los posibles valores que contenga el select2
			       document.getElementById("ciudad").options.length=0;
			       // añadimos los nuevos valores al select2
			       //document.getElementById("ciudad").options[0]=new Option("Selecciona una opcion", "0");
			       for(i=0;i<arrayValores.length;i++)
			       {
			           // unicamente añadimos las opciones que pe
				     if(arrayValores[i][0]==val)
				            {
				                document.getElementById("ciudad").options[document.getElementById("ciudad").options.length]=new Option(arrayValores[i][2], arrayValores[i][1]);
				            }
				     
			       }
			       
			       // habilitamos el segundo select
			       document.getElementById("ciudad").disabled=false;
			   }
			}


			//refrescar dirección por ajax
			
			function load_dir(opc,num){
					$("#seleccionado").html("");
					$("#seleccionado").append('<div class="loader_i row"></div>');
				    $.ajax({
				         url: "/compromisomx/Envios/dir_selec",
				         data: {
					         "dir":opc,
					         "env":num
					     },
				         type: "GET",
				         dataType: "html",
				         success: function (data) {
				             $("#seleccionado").html(data);
				         }
				      })
			}
	
	</script>
            
</body>
</html>