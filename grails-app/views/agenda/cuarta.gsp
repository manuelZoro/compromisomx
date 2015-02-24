System.out.println("=========== PARAMETROS.......   id objeto: "+ <!DOCTYPE html>
<html lang="en">
  	<head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="layout" content="agenda_layout"/>
        <title>Compromiso MX</title>
	</head>
    
<body role="document" id="fondo_body">   
            <!-- Inicia Contenido principal -->
            <div class="row">
                <div class="col-md-9">
                    <h1><strong>Opciones de Configuración</strong><button class="btn btn-gris btn_menu_agenda2" style="margin-left:20px; text-aling:center; width:70px; height:25px;" onclick="back()"> <strong><< Atras</strong></button></h1>
                    <label id="id_label"></label>
                </div>
                <div class="col-md-3">
                </div>
            </div>
        <g:form controller="Agenda" action="conf_guardar" style="background-color:#961255" >
		<g:hiddenField name="id" id="id" value="${dts_configuracion.id}"/>
		
            <div class="row">
                <div class="col-md-12 agenda_contenido_fondo">
                    <div class="row">
                    	<div class="col-md-12">
                        	<div class="row">
                                <div class="col-md-12">
                                	<div class="agenda_espacio_botones_sup">
                                		<div class="btn_config_agenda"></div>
                                  </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                    	<div class="col-md-12" align="center">
                            <div class="row">
                                <div class="col-md-2"></div>
                                <div class="col-md-8">
                                    <p class="txt_cen"><img src="/compromisomx/images/iconografia/agenda/describe.png"></p>
                                    <p>&nbsp;</p>
                                </div>
                                <div class="col-md-2"></div>
                            </div>
                            
                            <div class="row">
                                <div class="col-md-2">
                                </div>
                                <div class="col-md-8">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="row altura_fila">
                                                <div class="col-md-5">
                                                    <p class="txt_der texto_normal">Horario de trabajo*:</p>
                                                </div>
                                                <div class="col-md-5">
                                                	<div class="row">
                                                    	<div class="col-md-5">
                                                        	   <g:select class="form-control input-sm texto_campo_principal espaciado_campo_principal" name="horait" id="horait" optionKey="key" optionValue="value" 
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
                                                        value="${dts_configuracion.horait}"/>
                                                        </div>
                                                    	<div class="col-md-2"><p class="txt_cen texto_normal">a</p></div>
                                                    	<div class="col-md-5">
                                                        	   <g:select class="form-control input-sm texto_campo_principal espaciado_campo_principal" name="horaft" id="horaft" optionKey="key" optionValue="value" 
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
                                                        value="${dts_configuracion.horaft}"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-2"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="row altura_fila">
                                                <div class="col-md-5">
                                                    <p class="txt_der texto_normal">Horario disponible*:</p>
                                                </div>
                                                <div class="col-md-5">
                                                	<div class="row">
                                                    	<div class="col-md-5">
                                                           <g:select class="form-control input-sm texto_campo_principal espaciado_campo_principal" name="horaid" id="horaid" optionKey="key" optionValue="value" 
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
                                                        value="${dts_configuracion.horaid}"/>
                                                        </div>
                                                    	<div class="col-md-2"><p class="txt_cen texto_normal">a</p></div>
                                                    	<div class="col-md-5">
                                                        <g:select class="form-control input-sm texto_campo_principal espaciado_campo_principal" name="horafd" id="horafd" optionKey="key" optionValue="value" 
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
                                                        value="${dts_configuracion.horafd}"/>                                 	
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-2"></div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="row altura_fila">
                                                <div class="col-md-5"><p class="txt_der texto_normal">Profesión*:</p></div>
                                                <div class="col-md-5"><input type="text" required pattern="[a-zA-Z]\s" class="form-control texto_campo_principal" placeholder="" name="profesion" id="profesion" value="${dts_configuracion.profesion}" ></div>
                                                <div class="col-md-2"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="row altura_fila">
                                                <div class="col-md-5"><p class="txt_der texto_normal">Ocupación*:</p></div>
                                                <div class="col-md-5"><input type="text" required pattern="[a-zA-Z]+" class="form-control texto_campo_principal" placeholder="" name="ocupacion" id="ocupacion" value="${dts_configuracion.ocupacion}"></div>
                                                <div class="col-md-2"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="row altura_fila">
                                                <div class="col-md-5"><p class="txt_der texto_normal">Pasatiempo:</p></div>
                                                <div class="col-md-5"><input type="text" pattern="[a-zA-Z]+" class="form-control texto_campo_principal" placeholder="" name="pasatiempo" id="pasatiempo" value="${dts_configuracion.pasatiempo}"></div>
                                                <div class="col-md-2"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="row altura_fila">
                                                <div class="col-md-5"><p class="txt_der texto_normal">Deporte que practica:</p></div>
                                                <div class="col-md-5"><input type="text" pattern="[a-zA-Z]+" class="form-control texto_campo_principal" placeholder="" name="deporte" id="deporte" value="${dts_configuracion.deporte}"></div>
                                                <div class="col-md-2"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="row altura_fila">
                                                <div class="col-md-5"><p class="txt_der texto_normal">Otras actividades:</p></div>
                                                <div class="col-md-5"><textarea class="form-control" pattern="[a-zA-Z]+" rows="6" name="otras" id="otras">${dts_configuracion.otras}</textarea></div>
                                                <div class="col-md-2"></div>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="row">
                                        <div class="col-md-12"><p>&nbsp;</p></div>
                                        <div class="col-md-12">
                                            <div class="row">
                                                <div class="col-md-7"></div>
                                                <div class="col-md-4">
                                                    <p class="txt_cen">
                                                        <button type="submit" class="btn btn-gris btn_menu_agenda2">Guardar</button>
                                                        <button type="button" class="btn btn-gris btn_menu_agenda2" onclick="back()">Cancelar</button>
                                                    </p>
                                                </div>
                                                <div class="col-md-1"></div>
                                            </div>
                                        </div>
                                        <div class="col-md-12"><p>&nbsp;</p></div>
                                    </div>

                                </div>
                                <div class="col-md-2">
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <p>&nbsp;</p>
                </div>
            </div>
            <!-- Termina Contenido Principal -->
        <!-- Termina Página Principal -->         
 </g:form>
 	<script type="text/javascript">
	function back() {
	       location.href='index.gps'}

	(function($){
		//creamos la fecha actual
		var f = new Date();		
		var diasSemana = new Array("Domingo","Lunes","Martes","Miércoles","Jueves","Viernes","Sábado")
		var meses = new Array ("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");
		var fecha = (diasSemana[f.getDay()] + ", " + f.getDate() + " de " + meses[f.getMonth()] + " de " + f.getFullYear());
		$('#id_label').html(fecha);

	}(jQuery));
	</script>
	</body>

</html>