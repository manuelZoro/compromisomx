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
                    <h3><strong>Cambiar Método de Pago</strong><button type="button" class="btn btn-gris btn_accion_encabezado" onclick="window.location.href='/compromisomx/envios/envio_detalles?env=${detalles_v.num_envio}'">&lt;&lt;Atrás</button></h3>
                	<h4><strong>Envío No. <g:formatNumber number="${detalles_v.num_envio}" minIntegerDigits="8" /></strong></h4>
                </div>
                <div class="col-md-7">
                	<div class="row hidden">
                    	<div class="col-md-12"><div class="envio_notificacion envio_notif_correcto">El método de pago se agregó correctamente.</div></div>
                        <div class="col-md-12"><div class="envio_notificacion envio_notif_alerta">Favor de completar los campos obligatorios.</div></div>
                    	<div class="col-md-12"><div class="envio_notificacion envio_notif_correcto">El cambio de método de pago se realizó correctamente.</div></div>
                        <div class="col-md-12"><div class="envio_notificacion envio_notif_alerta">No se ha conseguido editar el metodo de pago. Verique que la información sea correcta.</div></div>
                    	<div class="col-md-12"><div class="envio_notificacion envio_notif_correcto">Se ha conseguido actualizar el método de pago.</div></div>
                        <div class="col-md-12"><div class="envio_notificacion envio_notif_alerta">No se ha podido comprobar los datos de la tarjeta. verique que la información sea correcta.</div></div>
                    </div>
                </div>
                <div class="col-md-12">&nbsp;<br></div>
                <div class="col-md-3">
                	<h4><strong>Método de pago actual</strong></h4><br>
                </div>
                <div class="col-md-9" id="seleccionado">
                    <div class="row"><div class="col-md-12">&nbsp;</div></div>
                	<div class="row">
                    	<div class="col-md-8">
                        	<div class="row">
                            	<div class="col-md-3"><strong>Forma de pago</strong></div>
                                <div class="col-md-9">Tarjeta de crédito/débito</div>
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
                        	<div class="row">
                            	<div class="col-md-3"><strong>Titular de la tarjeta</strong></div>
                                <div class="col-md-9">${detalles_v.pago.titular}</div>
                            </div>
                        	<div class="row">
                            	<div class="col-md-3"><strong>Dirección de facturación</strong></div>
                                <div class="col-md-9">Calle ${detalles_v.pago.calle} # ${detalles_v.pago.numero}<br>Colonia ${detalles_v.pago.colonia}<br>${detalles_v.pago.ciudad} ${detalles_v.pago.estado} , ${detalles_v.pago.pais}, C.P. ${detalles_v.pago.cp}</div>
                            </div>
                        	<div class="row">
                            	<div class="col-md-3"><strong>Teléfono</strong></div>
                                <div class="col-md-9">${detalles_v.pago.telefono}</div>
                            </div>
                        </div>
                    	<div class="col-md-4"></div>
                    </div>
                    <div class="row">
                    	<div class="col-md-10"></div>
                        <div class="col-md-2"><button type="button" class="btn btn-gris btn_accion_encabezado" onclick="window.location.href='/compromisomx/envios/envio_detalles?env=${detalles_v.num_envio}'">Guardar canbios</button></div>
                    </div>
                </div>
                <div class="col-md-12">&nbsp;<br></div>
                <div class="col-md-12"><h3><strong>Seleccione un método de pago diferente</strong></h3></div>
                <div class="col-md-3">
                </div>
                <div class="col-md-9">
                    <div class="row"><div class="col-md-12">&nbsp;</div></div>
                    <div class="row"><div class="col-md-12"><h4><strong>Tarjeta de Crédito / Débito</strong></h4></div></div>
                    <div class="row"><div class="col-md-12">&nbsp;</div></div>
                	<div class="row">
                        <table cellspacing="0" cellpadding="0" class="table">
                            <thead>
                                <tr class="fila_transparente">
                                    <td>&nbsp;</td>
                                    <td><strong>Tipo</strong></td>
                                    <td><strong>Número de la tarjeta</strong></td>
                                    <td><strong>Fecha de vencimiento</strong></td>
                                    <td><strong>Titular de la tarjeta</strong></td>
                                </tr>
                            </thead>
                            <tbody>
                            <g:each  in="${pagos_v}" var="pago" status="i" >
                                <tr class="fila_transparente">
                                    <td><label><input type="radio" name="group1" value="i" onclick="load_pago(${i},${detalles_v.num_envio})"></label></td>
                                    <%switch(pago.tipo_tarjeta){
									case 1:
									 %><td>Visa</td><%
									 break; 
									case 2:
									 %><td>Master Card</td><%
									 break;
									} %>
                                    <td>**** **** **** <g:formatNumber number="${pago.num_tarjeta}" maxIntegerDigits="4"/></td>
                                    <td><g:formatDate format="MM/yyyy" date="${pago.expiracion}"/></td>
                                    <td>${pago.titular} <g:hiddenField name="id" value="${pago.id}"/></td>
                                </tr>
                            </g:each>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="col-md-12">&nbsp;<br></div>
                <div class="col-md-12">
                    <h3><strong>O agrege otro método de pago</strong></h3><br>
                </div>
                <div class="col-md-3"></div>
                <div class="col-md-9">
                <g:form controller="envios" action="guardarForma_pago">
                <g:hiddenField name="idcliente" value="${detalles_v.cuenta.id}"/>
                <g:hiddenField name="envio" value="${detalles_v.num_envio}"/>
                    <div class="row">
                    	<div class="col-md-8">
                        	<div class="row altura_fila">
                            	<div class="col-md-4"><strong>Seleccionar forma de pago*</strong></div>
                                <div class="col-md-6">
                                	<select class="form-control input-sm texto_campo_principal espaciado_campo_principal"  name="" id="">
                                        <option value="1">Tarjeta de Crédito/Débito</option>
                                    </select>
                                </div>
                            </div>
                        	<div class="row altura_fila">
                            	<div class="col-md-4">Tipo*</div>
                                <div class="col-md-6">
                                	<select class="form-control input-sm texto_campo_principal espaciado_campo_principal"  name="tipo_tarjeta" id="tipo_tarjeta">
                                        <option value="1">Visa</option>
                                        <option value="2">Master Card</option>
                                    </select>
                                </div>
                            </div>
                        	<div class="row altura_fila">
                            	<div class="col-md-4">Titular de la tarjeta*</div>
                                <div class="col-md-6"><input required type="text" class="form-control texto_campo_principal" placeholder=""  name="titular" id="titular"></div>
                            </div>
                        	<div class="row altura_fila">
                            	<div class="col-md-4">Número de la tarjeta*</div>
                                <div class="col-md-6"><input required type="text" class="form-control texto_campo_principal" placeholder=""  maxlength="16" name="num_tarjeta" id="num_tarjeta"></div>
                            </div>
                        	<div class="row altura_fila">
                            	<div class="col-md-4">Expiración de la tarjeta*</div>
                                <div class="col-md-3">
                                	<select class="form-control input-sm texto_campo_principal espaciado_campo_principal"  name="mes" id="mes">
                                        <option value="" selected="selected">DD</option>
                                        <option value="01" >01</option>
                                        <option value="02" >02</option>
                                        <option value="03" >03</option>
                                        <option value="04" >04</option>
                                        <option value="05" >05</option>
                                        <option value="06" >06</option>
                                        <option value="07" >07</option>
                                        <option value="08" >08</option>
                                        <option value="09" >09</option>
                                        <option value="10" >10</option>
                                        <option value="11" >11</option>
                                        <option value="12" >12</option>
                                    </select>
                                </div>
                                <div class="col-md-3">
                                	<select class="form-control input-sm texto_campo_principal espaciado_campo_principal"  name="year" id="year">
                                        <option value="">AAAA</option>
                                        <option value="2013" >2013</option>
                                        <option value="2014" >2014</option>
                                        <option value="2015" >2015</option>
                                        <option value="2016" >2016</option>
                                        <option value="2017" >2017</option>
                                        <option value="2018" >2018</option>
                                        <option value="2019" >2019</option>
                                        <option value="2020" >2020</option>
                                        <option value="2021" >2021</option>
                                        <option value="2022" >2022</option>
                                        <option value="2023" >2023</option>
                                        <option value="2024" >2024</option>
                                        <option value="2025" >2025</option>
                                        <option value="2026" >2026</option>
                                        <option value="2027" >2027</option>
                                        <option value="2028" >2028</option>
                                        <option value="2029" >2029</option>
                                        <option value="2030" >2030</option>
                                    </select>
                                </div>
                            </div>
                        	<div class="row altura_fila">
                            	<div class="col-md-4">Código de Seguridad*</div>
                                <div class="col-md-6"><input required type="password" maxlength="4" class="form-control texto_campo_principal" placeholder=""  name="codigo" id="codigo"></div>
                            </div>
                        	<div class="row altura_fila">
                            	<div class="col-md-12"><br><strong>Dirección de Facturación<br>&nbsp;</strong></div>
                            </div>
                        	<div class="row altura_fila">
                            	<div class="col-md-4">Calle*</div>
                                <div class="col-md-6"><input required type="text" class="form-control texto_campo_principal" placeholder=""  name="calle" id="calle"></div>
                            </div>
                            <div class="row altura_fila">
                            	<div class="col-md-4">Número*</div>
                                <div class="col-md-3"><input required type="text" class="form-control texto_campo_principal" placeholder="Exterior*"  name="numero" id="numero"></div>
                                <div class="col-md-3"><input type="text" class="form-control texto_campo_principal" placeholder="Interior"  name="num_int" id="num_int"></div>
                            </div>
                        	<div class="row altura_fila">
                            	<div class="col-md-4">Colonia*</div>
                                <div class="col-md-6"><input required type="text" class="form-control texto_campo_principal" placeholder=""  name="colonia" id="colonia"></div>
                            </div>
                        	<div class="row altura_fila">
                            	<div class="col-md-4">País*</div>
                                <div class="col-md-6"><input required type="text" class="form-control texto_campo_principal" placeholder=""  name="pais" id="pais"></div>
                            </div>
                        	<div class="row altura_fila">
                            	<div class="col-md-4">Estado*</div>
                                <div class="col-md-6"><input required type="text" class="form-control texto_campo_principal" placeholder=""  name="estado" id="estado"></div>
                            </div>
                        	<div class="row altura_fila">
                            	<div class="col-md-4">Ciudad*</div>
                                <div class="col-md-6"><input required type="text" class="form-control texto_campo_principal" placeholder=""  name="ciudad" id="ciudad"></div>
                            </div>
                        	<div class="row altura_fila">
                            	<div class="col-md-4">C.P.*</div>
                                <div class="col-md-6"><input required type="text" class="form-control texto_campo_principal" placeholder=""  name="cp" id="cp"></div>
                            </div>
                        	<div class="row altura_fila">
                            	<div class="col-md-4">Teléfono*</div>
                                <div class="col-md-6"><input required type="text" class="form-control texto_campo_principal" placeholder=""  name="telefono" id="telefono"></div>
                            </div>
                        	<div class="row altura_fila">
                            	<div class="col-md-12">&nbsp;</div>
                            	<div class="col-md-8 alerta_datosobligatorios">* Campos obligatorios.</div>
                                <div class="col-md-4"><button type="submit" class="btn btn-gris btn_accion_encabezado"><big>&nbsp;Agregar&nbsp;</big></button></div>
                            </div>
                        </div>
                        <div class="col-md-4">
                        </div>
                    </div>
            </g:form>
                </div> 
            </div>
            <div class="row">
                <div class="col-md-12">&nbsp;</div>
            </div>
            <div class="row">
                <div class="col-md-12">&nbsp;</div>
            </div>
            
            <!-- Termina Contenido Principal -->
            
            <script type="text/javascript">
	function muni(val){		
		 var arrayValores=new Array(
	       new Array("Aguascalientes","1","Aguascalientes"),
	       new Array("Aguascalientes","2","Asientos"),
	       new Array("Aguascalientes","3","Calvillo"),
	       new Array("Aguascalientes","4","Cosio"),
	       new Array("Aguascalientes","5","Jesus Maria"),
	       new Array("Aguascalientes","6","Pabellon de Arteaga"),
	       new Array("Aguascalientes","7","Rincon de Romos"),
	       new Array("Aguascalientes","8","San Jose de Gracia"),
	       new Array("Aguascalientes","9","Tepezala"),
	       new Array("Aguascalientes","10","El Llano"),
	       new Array("Aguascalientes","11","San Francisco de los Romo"),
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
	       document.getElementById("municipio").disabled=true;
	   }else{
	   	//alert(val);
	       // eliminamos todos los posibles valores que contenga el select2
	       document.getElementById("municipio").options.length=0;
	       // añadimos los nuevos valores al select2
	       //document.getElementById("municipio").options[0]=new Option("Selecciona una opcion", "0");
	       for(i=0;i<arrayValores.length;i++)
	       {
	           // unicamente añadimos las opciones que pe
		     if(arrayValores[i][0]==val)
		            {
		                document.getElementById("municipio").options[document.getElementById("municipio").options.length]=new Option(arrayValores[i][2], arrayValores[i][1]);
		            }
		     
	       }
	       
	       // habilitamos el segundo select
	       document.getElementById("municipio").disabled=false;
	   }
	}
	
	
	//refrescar pago por ajax
	function load_pago(opc,num){
					$("#seleccionado").html("");
					$("#seleccionado").append('<div class="loader_i row"></div>');
				    $.ajax({
				         url: "/compromisomx/Envios/pago_selec",
				         data: {
					         "pago":opc,
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