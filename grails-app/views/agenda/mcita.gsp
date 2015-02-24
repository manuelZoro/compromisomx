<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<title>Citas</title>
</head>
<body>
	<g:form controller="Agenda" action="cita_guardar" style="background-color:#961255; border-left:4px solid white;" >
		<g:hiddenField name="id" value="${cita.id}"/>	  	
	            <div>
	                <div class="row mensaje_centro">
	                    <div class="row"><div class="col-md-12"><p>&nbsp;</p></div></div>
	                    <div class="col-md-12"><p class="txt_cen"><img src="/compromisomx/images/iconografia/agenda/logo_mensaje.png"></p></div>
	                    <div class="col-md-12"><div class="mensaje_texto1">Editar Cita</div></div>
	                    <div class="row"><div class="col-md-12"><p>&nbsp;</p></div></div>
	                    <div class="row altura_fila">
	                    	<div class="col-md-3">
	                        	<div class="mensaje_texto2">Cita*:</div>
	                        </div>
	                        <div class="col-md-8">
	                        	<input required type="text" class="form-control texto_campo_principal" placeholder=""  name="nombre" id="" value="${cita.nombre}">
	                        </div>
	                        <div class="col-md-1"></div>
	                    </div>
	                    <div class="row altura_fila">
	                    	<div class="col-md-3">
	                        	<div class="mensaje_texto2">Lugar*:</div>
	                        </div>
	                        <div class="col-md-8">
	                        	<input required type="text" class="form-control texto_campo_principal" placeholder=""  name="lugar" id="" value="${cita.lugar}">
	                        </div>
	                        <div class="col-md-1"></div>
	                    </div>
	                    <div class="row altura_fila">
	                    	<div class="col-md-3">
	                        	<div class="mensaje_texto2">Estado*:</div>
	                        </div>
	                        <div class="col-md-8">
	                        	<select required class="form-control input-sm texto_campo_principal espaciado_campo_principal" onchange="muni(this.value);" name="estado" id="">
								  <option value="0">Seleccione un estado</option>
								  <option value="1">Aguascalientes</option>
								  <option value="2">Baja California </option>
								  <option value="3">Baja California Sur </option>
								  <option value="4">Campeche </option>
								  <option value="5">Coahuila </option>
								  <option value="6">Colima </option>
								  <option value="7">Chiapas </option>
								  <option value="8">Chihuahua </option>
								  <option value="9">Distrito Federal</option>
								  <option value="10">Durango </option>
								  <option value="11">Guanajuato</option>
								  <option value="12">Guerrero </option>
								  <option value="13">Hidalgo </option>
								  <option value="14">Jalisco </option>
								  <option value="15">Mexico </option>
								  <option value="16">Michoacán </option>
								  <option value="17">Morelos </option>
								  <option value="18">Nayarit </option>
								  <option value="19">Nuevo León </option>
								  <option value="20">Oaxaca </option>
								  <option value="21">Puebla </option>
								  <option value="22">Querétaro </option>
								  <option value="23">Quintana Roo </option>
								  <option value="24">San Luis Potosí </option>
								  <option value="25">Sinaloa </option>
								  <option value="26">Sonora </option>
								  <option value="27">Tabasco </option>
								  <option value="28">Tamaulipas </option>
								  <option value="29">Tlaxcala </option>
								  <option value="30">Veracruz </option>
								  <option value="31">Yucatán </option>
								  <option value="32">Zacatecas</option>
								</select>
	                        </div>
	                        <div class="col-md-1"></div>
	                    </div>
	                    <div class="row altura_fila">
	                    	<div class="col-md-3">
	                        	<div class="mensaje_texto2">Municipio*:</div>
	                        </div>
	                        <div class="col-md-8">
	                        	<select class="form-control input-sm texto_campo_principal espaciado_campo_principal" required name="municipio" id="municipio" >
	                        	</select>
	                        </div>
	                        <div class="col-md-1"></div>
	                    </div>
	                    <div class="row altura_fila">
	                    	<div class="col-md-3">
	                        	<div class="mensaje_texto2">Inicio*:</div>
	                        </div>
	                        <div class="col-md-8">
	                            <div class="row">
	                                <div class="col-md-3">
	                   						 <g:select class="form-control input-sm texto_campo_principal espaciado_campo_principal" name="horai" id="horai" optionKey="key" optionValue="value" 
                                                        from="${[[key: '00:00', value: '00:00'],
                                                        [key: '01:00', value: '01:00'],
                                                        [key: '02:00', value: '02:00'],
                                                        [key: '03:00', value: '03:00'],
                                                        [key: '04:00', value: '04:00'],
                                                        [key: '05:00', value: '05:00'],
                                                        [key: '06:00', value: '06:00'],
                                                        [key: '07:00', value: '07:00'],
                                                        [key: '08:00', value: '08:00'],
                                                        [key: '09:00', value: '09:00'],
                                                        [key: '10:00', value: '10:00'],
                                                        [key: '11:00', value: '11:00'],
                                                        [key: '12:00', value: '12:00'],
                                                        [key: '13:00', value: '13:00'],
                                                        [key: '14:00', value: '14:00'],
                                                        [key: '15:00', value: '15:00'],
                                                        [key: '16:00', value: '16:00'],
                                                        [key: '17:00', value: '17:00'],
                                                        [key: '18:00', value: '18:00'],
                                                        [key: '19:00', value: '19:00'],
                                                        [key: '20:00', value: '20:00'],
                                                        [key: '21:00', value: '21:00'],
                                                        [key: '22:00', value: '22:00'],
                                                        [key: '23:00', value: '23:00'],
                                                        [key: '24:00', value: '24:00'],

                                                        ]}" 
                                                        value="${cita.horai}"/>	  
	                                </div>
	                                <div class="col-md-3">	                         
	                                    <input type="text" class="form-control texto_campo_principal" placeholder="DD" name="dia" id="" value="${cita.dia}">
	                                </div>                        
	                                <div class="col-md-3">
	                                    <input type="text" class="form-control texto_campo_principal" placeholder="MM" name="mes" id="" value="${cita.mes}">
	                                </div>                        
	                                <div class="col-md-3">
	                                    <input type="text" class="form-control texto_campo_principal" placeholder="AAAA" name="anio" id="" value="${cita.anio}">
	                                </div>
	                            </div>
	                        </div>
	                        <div class="col-md-1"></div>    
	                    </div>
	                    <div class="row altura_fila">
	                    	<div class="col-md-3">
	                        	<div class="mensaje_texto2">Fin*:</div>
	                        </div>
	                        <div class="col-md-8">
	                            <div class="row">
	                                <div class="col-md-3">
	                                	<g:select class="form-control input-sm texto_campo_principal espaciado_campo_principal" name="horaf" id="horaf" optionKey="key" optionValue="value" 
                                                        from="${[[key: '00:00', value: '00:00'],
                                                        [key: '01:00', value: '01:00'],
                                                        [key: '02:00', value: '02:00'],
                                                        [key: '03:00', value: '03:00'],
                                                        [key: '04:00', value: '04:00'],
                                                        [key: '05:00', value: '05:00'],
                                                        [key: '06:00', value: '06:00'],
                                                        [key: '07:00', value: '07:00'],
                                                        [key: '08:00', value: '08:00'],
                                                        [key: '09:00', value: '09:00'],
                                                        [key: '10:00', value: '10:00'],
                                                        [key: '11:00', value: '11:00'],
                                                        [key: '12:00', value: '12:00'],
                                                        [key: '13:00', value: '13:00'],
                                                        [key: '14:00', value: '14:00'],
                                                        [key: '15:00', value: '15:00'],
                                                        [key: '16:00', value: '16:00'],
                                                        [key: '17:00', value: '17:00'],
                                                        [key: '18:00', value: '18:00'],
                                                        [key: '19:00', value: '19:00'],
                                                        [key: '20:00', value: '20:00'],
                                                        [key: '21:00', value: '21:00'],
                                                        [key: '22:00', value: '22:00'],
                                                        [key: '23:00', value: '23:00'],
                                                        [key: '24:00', value: '24:00'],

                                                        ]}" 
                                                        value="${cita.horaf}"/>	                                    
	                                </div>
	                                <div class="col-md-3">
	                                    <input type="text" class="form-control texto_campo_principal" maxlength="2" placeholder="DD" name="dia1" id="" value="${cita.dia1}">
	                                </div>                        
	                                <div class="col-md-3">
	                                    <input type="text" class="form-control texto_campo_principal" maxlength="2" placeholder="MM" name="mes1" id="" value="${cita.mes1}">
	                                </div>                        
	                                <div class="col-md-3">
	                                    <input type="text" class="form-control texto_campo_principal" maxlength="4" placeholder="AAAA" name="anio1" id="" value="${cita.anio1}">
	                                </div>
	                                <div class="col-md-1"><label><input type="checkbox" id="" name="rep" onClick="" value="${cita.rep}"></label></div>
	                                <div class="col-md-11"><div class="mensaje_texto3">Repetir todo el día</div></div>
	                            </div>
	                        </div>
	                        <div class="col-md-1"></div>    
	                    </div>
	                    <div class="row altura_fila">
	                    	<div class="col-md-3">
	                        	<div class="mensaje_texto2">Repetir*:</div>
	                        </div>
	                        <div class="col-md-8">	
	                        	<g:select class="form-control input-sm texto_campo_principal espaciado_campo_principal" name="repetir" id="repetir" optionKey="key" optionValue="value" 
                                                        from="${[[key: 0, value: 'Nunca'],
                                                        [key: 1, value: 'A diario'],
                                                        [key: 2, value: 'Semanalmente'],
                                                        [key: 3, value: 'De Lunes a Viernes'],
                                                        [key: 4, value: 'Sabados y Domingos'],
                                                        [key: 5, value: 'Lunes, Miércoles y Viernes'],
                                                        [key: 6, value: 'Martes y Jueves'],
                                                        [key: 7, value: 'Mensualmente'],
                                                        [key: 8, value: 'Anualmente'],
                                                        ]}" 
                                                        value="${cita.repetir}"/>
	                        </div>
	                        <div class="col-md-1"></div>
	                    </div>
	                    <div class="row altura_fila">
	                    	<div class="col-md-3">
	                        	<div class="mensaje_texto2">Comentario*:</div>
	                        </div>
	                        <div class="col-md-8">
	                        	<input required type="text" class="form-control texto_campo_principal" placeholder=""  name="comentario" id="" value="${cita.comentario}">
	                        </div>
	                        <div class="col-md-1"></div>
	                    </div>
	                    <div class="row altura_fila">
	                    	<div class="col-md-3"></div>
	                        <div class="col-md-8">
	                            <div class="row">
	                            	<div class="col-md-1"><label><input type="checkbox" id="" name="mensaje" onClick="" value="${cita.mensaje}"></label></div>
	                            	<div class="col-md-6"><div class="mensaje_texto3">Enviar recordatorio</div></div>
	                            	<div class="col-md-5">
	                            	<g:select class="form-control input-sm texto_campo_principal espaciado_campo_principal" name="tiempo" id="tiempo" optionKey="key" optionValue="value" 
                                                        from="${[[key: 0, value: '5 minutos antes'],
                                                        [key: 1, value: '10 minutos antes'],
                                                        [key: 2, value: '15 minutos antes'],
                                                        [key: 3, value: '30 minutos antes'],
                                                        [key: 4, value: '45 minutos antes'],
                                                        [key: 5, value: '1 horas antes'],
                                                        [key: 6, value: '2 horas antes'],
                                                        [key: 7, value: '4 hora antes'],
                                                        [key: 8, value: '6 horas antes'],
                                                        [key: 9, value: '12 horas antes'],
                                                        [key: 10, value: '1 día antes'],
                                                        [key: 11, value: '2 días antes'],
                                                        [key: 12, value: '1 semana  antes'],
                                                        [key: 13, value: '2 semanas antes'],
                                                        ]}" 
                                                        value="${cita.tiempo}"/>	                                	
	                                </div>
	                            </div>
	                        </div>
	                        <div class="col-md-1"></div>
	                    </div>
	                    <div class="row altura_fila">
	                    	<div class="col-md-3"></div>
	                        <div class="col-md-8"><div class="mensaje_texto3">*Campos obligatorios</div></div>
	                        <div class="col-md-1"></div>
	                    </div>
	                    <div class="row"><div class="col-md-12"><p>&nbsp;</p></div></div>
	                    <div class="row" style="align:center;">
	                    	<div class="col-md-3"> </div>
		                    <div class="col-md-2 txt_der"><button type="submit" class="btn btn-gris btn_menu_dialogo"  onClick="location.href='#mensaje_guardarcita'">Aceptar</button></div>
		                    <div class="col-md-2 txt_der"><button type="button" class="btn btn-gris btn_menu_dialogo" data-dismiss="modal" onClick="eliminar('${cita.id}')">Eliminar</button></div>
		                    <div class="col-md-2 txt_izq" style="margin-left: 9px;"><button type="button" class="btn btn-gris btn_menu_dialogo" data-dismiss="modal">Cancelar</button></div>
	                    	<div class="col-md-3"> </div>
	                    </div>
	                    <div class="row"><div class="col-md-12"><p>&nbsp;</p></div></div>
	                </div>
	            </div>
	</g:form>
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
	       new Array("1","9"),
	       new Array("1","10","El Llano"),
	       new Array("1","11","San Francisco de los Romo"),
	       new Array("2","1","Ensenada"),
	       new Array("2","2","Mexicali"),
	       new Array("2","3","Tecate"),
	       new Array("2","4","Tijuana"),
	       new Array("2","5","Playas de Rosarito"),
	       new Array("3","1","Comondu"),
	       new Array("3","2","Mulege"),
	       new Array("3","3","La Paz"),
	       new Array("3","4","Los Cabos"),
	       new Array("3","5","Loreto"),
	       new Array("4","1","Calkini"),
	       new Array("4","2","Campeche"),
	       new Array("4","3","Carmen"),
	       new Array("4","4","Champoton"),
	       new Array("4","5","Helcelchakan"),
	       new Array("4","6","Hopelchen"),
	       new Array("4","7","Palizada"),
	       new Array("4","8","Tenabo"), 
	       new Array("4","9","Escarcega"),
	       new Array("4","10","Calakmul"),
	       new Array("4","11","Candelaria"),
	       new Array("5","1","Abasolo"),
	       new Array("5","2","Acu"),
	       new Array("5","3","Allende"),
	       new Array("5","4","Arteaga"),
	       new Array("5","5","Candela"),
	       new Array("5","6","Casta"),
	       new Array("5","7","Cuatro Cienagas"),
	       new Array("5","8","Escobedo"), 
	       new Array("5","9","Francisco I. Madero"),
	       new Array("5","10","Frontera"),
	       new Array("5","11","General Cepeda"),
	       new Array("5","12","Guerrero"),
	       new Array("5","13","Hidalgo"),
	       new Array("5","14","Jimenez"),
	       new Array("5","15","Juarez"),
	       new Array("5","16","Lamadrid"), 
	       new Array("5","17","Matamoros"),
	       new Array("5","18","Monclova"),
	       new Array("5","19","Morelos"),
	       new Array("5","20","Muzquiz"),
	       new Array("5","21","Nadadores"),
	       new Array("5","22","Nava"),
	       new Array("5","23","Ocampo"),
	       new Array("5","24","Parras"),
	       new Array("5","25","Piedras Negras"),
	       new Array("5","26","Progreso"),
	       new Array("5","27","Ramos Arizpe"), 
	       new Array("5","28","Sabinas"),
	       new Array("5","29","Sacramento"),
	       new Array("5","30","Saltillo"),
	       new Array("5","31","San Buenaventura"),
	       new Array("5","32","San Juan de Sabinas"),
	       new Array("5","33","San Pedro"),
	       new Array("5","34","Sierra Mojada"),
	       new Array("5","35","Torreon"), 
	       new Array("5","36","Viesca"),
	       new Array("5","37","Villa Union"),
	       new Array("5","38","Zaragoza"),
	       new Array("6","1","Armeria"),
	       new Array("6","2","Colima"),
	       new Array("6","3","Comala"),
	       new Array("6","4","Coquimatlan"),
	       new Array("6","5","Cuauhtemoc"),
	       new Array("6","6","Ixtlahuacan"),
	       new Array("6","7","Manzanillo"),
	       new Array("6","8","Minatitlan"), 
	       new Array("6","9","Tecoman"),
	       new Array("6","10","Villa de Alvarez"),
	       new Array("7","1","Abasolo"),
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
	       // eliminamos todos los posibles valores que contenga el select2
	       document.getElementById("municipio").options.length=0;
	       // añadimos los nuevos valores al select2
	       document.getElementById("municipio").options[0]=new Option("Selecciona una opcion", "0");
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
	</script>
</body>
</html>