<!DOCTYPE html>
<html lang="en">
  	<head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="layout" content="agenda_layout"/>
        <title>Compromiso MX</title>	    
	</head>
    
	<body role="document" id="fondo_body">

    <!-- Inicia Sección de Diálogos -->
    
    	<!-- Mensaje Guardar Cita -->
        <div id="mensaje_guardarcita" class="modalDialog">
            <div>
                <div class="row mensaje_centro">
                    <div class="row"><div class="col-md-12"><p>&nbsp;</p></div></div>
                    <div class="col-md-12"><p class="txt_cen"><img src="/compromisomx/images/iconografia/agenda/logo_mensaje.png"></p></div>
                    <div class="col-md-12"><div class="mensaje_texto1">¿Desea guardar los cambios en esta cita?</div></div>
                    <div class="row"><div class="col-md-12"><p>&nbsp;</p></div></div>
                    <div class="col-md-6 txt_der"><button type="button" class="btn btn-gris btn_menu_dialogo" data-dismiss="modal">Aceptar</button></div>
                    <div class="col-md-6 txt_izq"><button type="button" class="btn btn-gris btn_menu_dialogo" onClick="location.href='/compromisomx/agenda/index'">Cancelar</button></div>
                    <div class="row"><div class="col-md-12"><p>&nbsp;</p></div></div>
                </div>
            </div>
        </div>
        
        <!--ventana modal para el calendario-->
        <div class="modal fade" id="events-modal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h1 class="modal-title">Nombre del evento</h1>
                    </div>
                    <div style="height: 400px">
                         

                        <!--<iframe 
                          src="/compromisomx/tmpls/month-day.html"> //cargar paguina html dentro de una seccion
                        </iframe>-->


                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
        
       	<!-- Mensaje Detalle Cita -->
        <div id="mensaje_detalle_cita" class="modalDialog_dia">
            <div>
                <a href="#close" title="Cerrar" class="close">X</a>
                <div class="row mensaje_centro_dia">
                    <div>                        
                        <h1 class="modal-title"><span id="<%= data_day %>" class="pull-right" data-cal-date="<%= data_day %>" data-cal-view="day"><%= day %></span></h1>
                    </div>
                    <tr>
                    <div id="contenido">
                       <iframe 
                          src="/compromisomx/tmpls/month-day.html">
                        </iframe>
                    </div>                    
                </div>
            </div>
        </div> 


            <!-- Inicia Contenido principal -->
            <div class="row">
                <div class="col-md-9">
                    <h2><strong>Agenda</strong></h2>
                    <label id="id_label"></label>
                </div>
                <div class="col-md-3">
	                <p class="txt_der">
                        <a href="#"><img src="/compromisomx/images/iconografia/agenda/msj_cita.png" title="Cita"></a>
                        <a href="#"><img src="/compromisomx/images/iconografia/agenda/msj_evento.png" title="Evento"></a>
                        <a href="#"><img src="/compromisomx/images/iconografia/agenda/msj_actividadesugeridas.png" title="Actividad Sugerida"></a>
                    </p>
                </div>                
            </div>
            
            <div class="row">
                <div class="col-md-12 agenda_contenido_fondo">
                    <div class="row">
                    	<div class="col-md-12">
                        	<div class="row">
                            	<div class="col-md-2" align="center">
                                	<div class="agenda_espacio_botones_sup">
                                    	<button type="button" class="btn btn-gris btn_nvacita" onClick="add();"><strong>Nueva cita</strong></button>
                                    </div>
                                </div>
                                <div class="col-md-9">
                                	<div class="agenda_espacio_botones_sup">
                                    	<select class=" btn btn-gris btn_menu_agenda2"  style="margin-left:20px; width:80px; height:35px;"name="" id="ver">
                							<option value="0">Ver...</option>
                                            <option value="1">Citas</option>
                                            <option value="2">Eventos</option>
                                            <option value="3">Actividades Sugeridas</option>
                                        </select>
                                    	<div class="btn-group">
                                    		<button type="button" id="dia"class="btn btn-gris btn_menu_agenda2" data-calendar-view="day" title="Día" onclick="mostrar_d(4);">Día</button>
                                    	</div>
                                    	<div class="btn-group">
                                    	<button type="button" id="semana"  class="btn btn-gris btn_menu_agenda2" title="Semana" data-calendar-view="week" onclick="mostrar_d(3);">Semana</button>
                                    	</div>
                                    	<div class="btn-group">
                                    	<button type="button" id="mes"  class="btn btn-gris btn_menu_agenda2" title="Mes" data-calendar-view="month" onclick="mostrar_d(1);">Mes</button>
                                    	</div>
                                    	<button type="button" class="btn btn-gris btn_menu_agenda2" title="Agenda" id="agenda_" onclick="mostrar_d(2);" >Agenda</button>
                                    </div>
                                </div>
                                <div class="col-md-1">
                                	<div class="agenda_espacio_botones_sup">
                                		<div class="btn_config_agenda" title="Configuración" onclick="window.location.href='/compromisomx/agenda/cuarta'"></div>
                                  </div>
                                </div>
                            </div>
                        </div>
                    </div>
         <div class="row"><!-- Minicalenario -->
           <div class="col-md-3" style="width:20% !important;">      
                <div class="row">
					<div class="col-md-12" style="padding-left:0px;"><div class="calendar small" data-role="calendar" ></div></div>
				</div>
           </div><!-- fin minicalendario -->
                        
                        
       <!-- agenda -->                  
         <div class="col-md-9">
        	<div class="col-md-personalizada_2 medida_cont_agenda_2" id="agenda">
                     <!-- Comienza tabla de eventos -->
                    
                    <div class="table-responsive tabla_buscador_1">
                     <div id="grid_datos">				 			
		 			<table class="table">
					   <tr>
					   	  <th style="text-align:center;"><img src="/compromisomx/images/iconografia/agenda/bullet_rosa.png"><strong>Fecha</strong></th>
						  <th style="text-align:center;"><img src="/compromisomx/images/iconografia/agenda/bullet_amarillo.png"><strong>Hora </strong> </th>
						  <th style="text-align:center;"><img src="/compromisomx/images/iconografia/agenda/bullet_verde.png"><strong>Titulo</strong></th>
						  <th style="text-align:center;"><img src="/compromisomx/images/iconografia/agenda/bullet_verde.png"><strong>Duracion</strong></th>
						  <th style="text-align:center;"></th>
						</tr> 
						<g:each in="${citas}" var="cita" status="i">
					 		<tr>
					 			<td style="text-align:center;"><g:formatDate format="EEEE d MMMM" date="${cita.inicio}" /></td>
					 			<td style="text-align:center;">${cita.horai}</td>
					 			<td style="text-align:center;">${cita.nombre}</td>
					 			<td style="text-align:center;">${cita.horai} - ${cita.horaf}</td>
					 			<td style="text-align:center;"><div class="btn_agenda_eliminar" title="Eliminar" onClick="eliminar('${cita.id}')"></div><div class="btn_agenda_editar"  onClick="editar('${cita.id}')" title="Editar"></div></td>
					 		</tr>
				 		</g:each> 		
			  		</table>
			  		</div>	
			  		<div class="col-md-12 altura_fila">
                        		 	<div class="texto_leyenda_01"><em>Se muestran los eventos programados hasta el </em></div>
                    			</div>
                     </div>						  
		  </div>     
       
          <!-- calendario --> 
          <!-- mess header --> 
          <div id="mess">
		   	  <div class="row ">
		        <div class="col-md-4"></div>
			        <div class="col-md-1"> 
			        	<div class="btn-group">
			            <button type="button"  data-calendar-nav="prev" title="Periodo Anterior" class="agenda_sem_anterior" ></button>
			            </div> 
			        	<div class="btn-group">                               	
			            <button type="button" data-calendar-nav="next" title="Periodo Siguiente" class="agenda_sem_siguiente" ></button>
			            </div>		                                               
			        </div>
		        	<div class="col-md-4 page-header" style="margin-top:-12px;"><h3></h3></div>
		      		<div class="col-md-3"></div>
		    	</div>
		   </div>
		   <!-- diaa header --> 
		     <div id="diaa">
		   	  <div class="row">
		        <div class="col-md-4"></div>
			        <div class="col-md-1"> 
			        	<div class="btn-group">
			            <button type="button"  data-calendar-nav="prev" title="Periodo Anterior" class="agenda_sem_anterior" ></button>
			            </div> 
			        	<div class="btn-group">                               	
			            <button type="button" data-calendar-nav="next" title="Periodo Siguiente" class="agenda_sem_siguiente" ></button>
			            </div>		                                               
			        </div>
		        	<div class="col-md-4 page-header" style="margin-top:-12px;"><h3></h3></div>
		      		<div class="col-md-3"></div>
		    	</div>
		   </div>
		   <!-- semanaa header --> 
		      <div id="semanaa">
		   	  <div class="row">
		        <div class="col-md-4"></div>
			        <div class="col-md-1"> 
			        	<div class="btn-group">
			            <button type="button"  data-calendar-nav="prev" title="Periodo Anterior" class="agenda_sem_anterior" ></button>
			            </div> 
			        	<div class="btn-group">                               	
			            <button type="button" data-calendar-nav="next" title="Periodo Siguiente" class="agenda_sem_siguiente" ></button>
			            </div>
			            	                                               
			        </div>
		        	<div class="col-md-4 page-header" style="margin-top:-12px;"><h3></h3></div>
		      		<div class="col-md-3"></div>
		    	</div>
		   </div>		       
		    <div class="col-md-12 " id="calemx">
				<div class="col-md-12"><div id="calendar"></div></div>
		    </div>
		    
           <!-- fin calendario -->  
       </div>  
       <!-- fin agenda -->	                	
                  
            <div class="row">
                <div class="col-md-12">
                    <p>&nbsp;</p>
                </div>
            </div>
            <!-- Termina Contenido Principal -->
            
        </div>
        	</div>
        <!-- Termina Página Principal --> 
        
        <!-- /container -->

     <div class="modal fade" id="myModal_">
	  <div class="modal-dialog" style="width:480px;">
	    <div class="modal-content" id="contenido_modal" style="border:8px solid white;">
	  		<div class="modalDialog_cita">
	  		
	  		</div>
	      
	    </div>
	  </div>
	</div>  


     <div class="modal fade" id="myModa_">
      <div class="modal-dialog">
        <div class="modal-content" id="contenido_modal_detalle" style="width:500px !important; border:8px solid white;">
            <div class="modalDialog_cita" style="width:500px !important;">
            
            </div>
          
        </div>
      </div>
    </div>  
	
	 
<div class="modal fade bs-example-modal-sm" id="myModal_delete" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content" style="border:6px solid white;">
    	<g:form controller="Agenda" action="eliminar" style="background-color:#961255;">
	    <div class="modal-body" style="text-align: center;">
	      <div class="row"><div class="col-md-12"><p>&nbsp;</p></div></div>
	      <div class="col-md-12"><p class="txt_cen"><img src="/compromisomx/images/iconografia/agenda/logo_mensaje.png"></p></div>
	      <div class="col-md-12"><div class="mensaje_texto1">Desea eliminar la cita de su agenda?</div></div>
	      <div class="row"><div class="col-md-12"><p>&nbsp;</p></div></div>
	      <input id="id_eliminar" name="id_eliminar" type="text" value="" style="display: none;"/>
	      <button type="submit" class="btn btn-gris btn_menu_dialogo">Aceptar</button>
	      <button type="button" class="btn btn-gris btn_menu_dialogo" data-dismiss="modal">Cancelar</button>
	 	</div>
	 	</g:form>
 	</div>
  </div>
</div>

<script type="text/javascript">


$(document).ready(function(){
	$('#calemx').hide();
	$('#mess').hide();
	$('#diaa').hide();
	$('#semanaa').hide();
    $('#agenda').show();
    $('.btn-group button').removeClass('active');
	$('#agenda_').addClass('active');

        $('#datosmod').click(function() {
        $("#contenido").html("");
        $('#mensaje_detalle_cita').modal('show');
    $.ajax({
        // la URL para la petición
        url : '/compromisomx/tmpls/month.html',    
 
        // especifica si será una petición POST o GET
        type : 'GET',
 
        // el tipo de información que se espera de respuesta
        dataType : 'html',
 
        // código a ejecutar si la petición es satisfactoria;
        success : function(respuesta) {
            $('#contenido').html(respuesta);
        },
 
        // código a ejecutar si la petición falla;
        error : function(xhr, status) {
            alert('Disculpe, existió un problema');
        },
    });
  });    
});

function mostrar_d(valor)
{
console.log(valor);
	switch(valor) {
    case 1:
    	$('#mess').show();
        $('#calemx').show();
        $('#diaa').hide();
        $('#semanaa').hide();
        $('#agenda').hide();
        $('#agenda_').removeClass('active');
        break;
    case 2:
        $('#calemx').hide();
        $('#agenda').show();
        $('#diaa').hide();
        $('#semanaa').hide();
        $('#mess').hide();
        $('.btn-group button').removeClass('active');
		$('#agenda_').addClass('active');
        break;
    case 3:
    	$('#semanaa').show();
        $('#calemx').show();
        $('#diaa').hide();
        $('#mess').hide();
        $('#agenda').hide();
        $('#agenda_').removeClass('active');
        break;
    case 4:
    	$('#diaa').show();
        $('#calemx').show();
        $('#agenda').hide();
        $('#mess').hide();
        $('#semanaa').hide();
        $('#agenda_').removeClass('active');
        break;
    default:
    	console.log("nada");
        
		}
}


//AGREGAR NUEVA CITA
    function add(){
  	  $("#contenido_modal").html("");
        $('#myModal_').modal('show');
        $.ajax({
            url: '/compromisomx/agenda/ncita/0',
            type: "GET",
            dataType: "html",
            success: function (data) {
                $("#contenido_modal").html(data);
            }
         });
  	}

  //EDITAR NUEVO REGISTRO
    function editar(id){
  	  $("#contenido_modal").html("");
        $('#myModal_').modal('show');
        $.ajax({
            url: '/compromisomx/agenda/mcita/'+id,
            type: "GET",
            dataType: "html",
            success: function (data) {
                $("#contenido_modal").html(data);
            }
         });
  	}

    //DETALLES DE LA CITA

    function detalles(id){
      $("#contenido_modal_detalle").html("");
        $('#myModa_').modal('show');
        $.ajax({
            url: '/compromisomx/agenda/detalle/'+id,
            type: "GET",
            dataType: "html",
            success: function (data) {
                $("#contenido_modal_detalle").html(data);
            }
         });
    }

  //ELIMINAR REGISTRO
  	function eliminar(id){
  		$("#id_eliminar").val(id);
  		$('#myModal_delete').modal('show');
  	}
	       
	       
	(function($){
		//creamos la fecha actual
		var date = new Date();
		var yyyy = date.getFullYear().toString();
		var mm = (date.getMonth()+1).toString().length == 1 ? "0"+(date.getMonth()+1).toString() : (date.getMonth()+1).toString();
		var dd  = (date.getDate()).toString().length == 1 ? "0"+(date.getDate()).toString() : (date.getDate()).toString();

		var f = new Date();		
		var diasSemana = new Array("Domingo","Lunes","Martes","Miércoles","Jueves","Viernes","Sábado")
		var meses = new Array ("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");
		var fecha = (diasSemana[f.getDay()] + ", " + f.getDate() + " de " + meses[f.getMonth()] + " de " + f.getFullYear());
		$('#id_label').html(fecha);
		var mes=("MES: " +  meses[f.getMonth()] + " de " + f.getFullYear());
		$('#mes_label').html(mes);
		var sem=("SEMANA: "  + f.getDate() + " de " + meses[f.getMonth()] + " de " + f.getFullYear());
		$('#sem_label').html(sem);
		var dia=("DIA: "  + diasSemana[f.getDay()] + " " + f.getDate() + " de " + meses[f.getMonth()] + " de " + f.getFullYear());
		$('#dia_label').html(dia);

		//establecemos los valores del calendario
		var options = {
			events_source: 'getAll/',
			//events_source: '/compromisomx/js/events.json',
			view: 'month',
			language: 'es-MX',
			tmpl_path: '/compromisomx/tmpls/',
			tmpl_cache: false,
			day: yyyy+"-"+mm+"-"+dd,
			time_start: '00:00',
			time_end: '24:00',
			time_split: '30',
			width: '100%',
			onAfterEventsLoad: function(events) 
			{
				if(!events) 
				{
					return;
				}
				var list = $('#eventlist');
				list.html('');

				$.each(events, function(key, val) 
				{
					$(document.createElement('li'))
						.html('<a href="' + val.url + '">' + val.title + '</a>')
						.appendTo(list);
				});
			},
			onAfterViewLoad: function(view) 
			{
				$('.page-header h3').text(this.getTitle());
				$('.btn-group button').removeClass('active');
				$('button[data-calendar-view="' + view + '"]').addClass('active');
			},
			classes: {
				months: {
					general: 'label'
				}
			}
		};

		var calendar = $('#calendar').calendar(options);

		$('.btn-group button[data-calendar-nav]').each(function() 
		{
			var $this = $(this);
			$this.click(function() 
			{
				calendar.navigate($this.data('calendar-nav'));
			});
		});

		$('.btn-group button[data-calendar-view]').each(function() 
		{
			var $this = $(this);
			$this.click(function() 
			{
				calendar.view($this.data('calendar-view'));
			});
		});

		$('#first_day').change(function()
		{
			var value = $(this).val();
			value = value.length ? parseInt(value) : null;
			calendar.setOptions({first_day: value});
			calendar.view();
		});

        $('#events-in-modal').change(function(){
        var val = $(this).is(':checked') ? $(this).val() : null;
        calendar.setOptions({modal: val});
        });
        $('#events-modal .modal-header, #events-modal .modal-footer').click(function(e){
            //e.preventDefault();
            //e.stopPropagation();
        });
	}(jQuery));
	
</script>
</body>
</html>