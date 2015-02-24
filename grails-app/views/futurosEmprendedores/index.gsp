<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="organizacion_layout"/>
<title>Futuros Emprendedores</title>


</head>
<body>
<style type="text/css">

.popover-title{
background-color: #555;
}


	.oculta{display:block;}
	.popover {
		background-color: #555;
	}
	.popover-content
	{
		background-color: #555;
	}
	
.iconos_centrales{
	font-size: 18px;
	color:#fff;
	background: #bcbcbc;
	width:35px;
	height:35px;
	text-align:center;
	padding:8px;
	-webkit-border-radius: 20px;
       -moz-border-radius: 20px;
            border-radius: 20px;
    
    margin-right: 5px;
    
    cursor: pointer;
}
.iconos_centrales:HOVER {
	background: #961255;
}



.btn_org_grafica {
	background-image:url(../images/organizacion/grafica_normal.png);
	background-repeat:no-repeat;
	background-position:center bottom;
	background-color:none;
	width:36px;
	height:40px;
	cursor: pointer;
	margin-top:8px;
	position:relative;
	float:inherit;
}

.btn_org_grafica:hover,
.btn_org_grafica:active,
.btn_org_grafica:focus {
	background-image:url(../images/organizacion/grafica_hover.png);
}

.btn_org_reporte {
	background-image:url(../images/organizacion/reporte_normal.png);
	background-repeat:no-repeat;
	background-position:center bottom;
	background-color:none;
	width:36px;
	height:40px;
	cursor: pointer;
	margin-top:8px;
	position:relative;
	float:inherit;
}

.btn_org_reporte:hover,
.btn_org_reporte:active,
.btn_org_reporte:focus {
	background-image:url(../images/organizacion/reporte_hover.png);
}

.btn_org_futurosemp {
	background-image:url(../images/organizacion/futuros_emprendedores_normal.png);
	background-repeat:no-repeat;
	background-position:center bottom;
	background-color:none;
	width:36px;
	height:40px;
	cursor: pointer;
	margin-top:8px;
	position:relative;
	float:inherit;
}

.btn_org_futurosemp:hover,
.btn_org_futurosemp:active,
.btn_org_futurosemp:focus {
	background-image:url(../images/organizacion/futuros_emprendedores_hover.png);
}

.btn_espacio {
	width:36px;
	height:40px;
	margin-top:8px;
	position:relative;
	margin:0 auto;
	float:inherit;
}
	
</style>
 <div class="form-group row">
 	<div class="col-xs-5 text-left">
 	<h3 id="txt_report" style="font-weight: 700;"><strong>Visión General</strong></h3>
 		
 	</div>
 	<div class="col-xs-2 text-center">
 		<!--  <i class="glyphicon glyphicon-stats iconos_centrales"></i>
 		<i class="glyphicon glyphicon-list-alt iconos_centrales"></i>
 		<i class="glyphicon glyphicon-edit iconos_centrales"></i>-->
 		
 		<div class="btn_espacio"></div>
        <div class="btn_org_grafica" title="Gráfica"></div>
        <div class="btn_org_reporte" title="Gráfica"></div>
        <div class="btn_org_futurosemp" title="Futuros Emprendedores"></div>
        <div class="btn_espacio"></div>
 	</div>
 	<div class="col-xs-5 text-right">
	 	<div class="form-group">
	    	<label for="inputEmail3" class="col-sm-6 control-label">Reporte</label>
		    <div class="col-sm-6">
		      <select id="tipo_reporte" class="form-control">
				<option value="1">Reporte Visión General</option>
				<option value="2">Reporte Proyeccón</option>
				<option value="3">Reporte Emprendedores</option>
				<option value="4">Reporte Festejados de Mes</option>
				<option value="5">Reporte Emprendedores por Rango</option>
				<option value="6">Reporte Productividad</option>
				<option value="7">Reporte Estatus AutoPago</option>
			</select>
		    </div>
	  </div>
  	</div> 	
 </div>
 <div class="fixed" ></div>
 <!-- ARBOL GRAFICA -->
  <div class="form-group row" id="contenido_arbol" style="border-bottom:2px solid #555;">
  
  </div>
  
  <!-- Reporte Vision General  -->
  <div class="form-group row" id="vision_general">
  
  </div>
  
   <% int modeloCount =0;  %>
  
<div class="row">
	<div class="col-xs-6">
		<h2>Lista de futuros emprendedores</h2>
	</div>
</div>
		<div class="row">
		   <div class="table-responsive">
				<table class="table table-hover" style="border: solid 2px #808080;" id="tabla">
		     	<thead>
			       <tr style="color:white;background-color:#961255;">
			     	 <th>#</th>
			         <th>Nombre</th>
			         <th>Telefono</th>
			         <th>Correo Electrónico</th>
			         <th>Facebook</th>
			         <th>Twitter</th>
			         <th>Skype</th>
			         <th>Facetime</th>
			         <th style="width: 140px;">Controles</th>
			       </tr>
			     </thead>
			     <tbody>			  					    
					<g:each in="${emprendedores}" var="modelo" status="i">	
					<% modeloCount++;  %>			
					<% if (modeloCount < 6) {%>		    
					<tr style="background-color: #e9cadc;">
					<% } else { %>
					<tr >
					<% }%>
						<td>${modeloCount}</td>
						<td>${modelo.nombre}</td>
						<td>
						<div class="popover-markup">
			         		<button style="padding:0; background-color:transparent; border:none;" id="phone${modeloCount}" type="button" class="btn btn-default trigger" data-toggle="tooltip" data-placement="top" onclick="" >
			         			<i class="glyphicon glyphicon-edit" style="color:#428bca"></i>
			         		</button>
			         		<div class="content hide">
				         		<div class="row form-group">			         			
				         			<div class="col-xs-6">
									  	 <label>Telefono de Celular:</label>
									 </div>
									 <div class="col-xs-6"> 
									     <input type="text" class="form-control" id="telcelular" name="telcelular" placeholder="000 000 000" value="${modelo.telcelular}">
									 </div>	
								</div>
								<div class="row form-group">							 
									 <div class="col-xs-6">
									  	 <label>Telefono de Casa:</label>
									  </div>
									  <div class="col-xs-6">
									     <input type="text" class="form-control" id="telcasa" name="telcasa" placeholder="000 000 00" value="${modelo.telcasa}">
									 </div>	
				         		</div>
				         		<div class="row form-group">							 
									 <div class="col-xs-6">
									  	 <button type="submit" class="btn btn-default btn-lg"><i class="glyphicon glyphicon-floppy-disk" style="color:#1abb9c;"></i> Guardar</button>
									  </div>
									  <div class="col-xs-6">									  
									     <button onclick="$('#phone${modeloCount}').click();" type="button" class="btn btn-default btn-lg" data-dismiss="popover"><i class="glyphicon glyphicon-remove" style="color:#e54b3b"></i> Cancelar</button>
									 </div>	
				         		</div>  								 
				         	</div>
			         	</div>												
						</td>
						<td>${modelo.correo}</td>
						<td>${modelo.facebook}</td>
						<td>${modelo.twitter}</td>
						<td>${modelo.skype}</td>
						<td>${modelo.facetime}</td>
						<td>
								<button style="padding:0; background-color:transparent; border:none;" type="button" class="btn btn-default" onclick="" data-toggle="tooltip" data-placement="top" title="5 seleccionado"><img style="cursor: pointer;" src="${request.contextPath}/images/organizacion/acciones/5_principales_a.png"></button>
					         	<button style="padding:0; background-color:transparent; border:none;" type="button" class="btn btn-default" onclick="" data-toggle="tooltip" data-placement="top" title="25 seleccionado"><img style="cursor: pointer;" src="${request.contextPath}/images/organizacion/acciones/25_principales_a.png"></button>
					         	<div style="float: left;" class="popover-markup">
					         		<button id="agenda${modeloCount}" style="padding:0; background-color:transparent; border:none;" type="button" class="btn btn-default trigger" data-toggle="tooltip" title="Agendar" data-placement="top" onclick="" >
					         			<img style="cursor: pointer;" src="${request.contextPath}/images/organizacion/acciones/cita_a.png">
					         		</button>
					         		<div class="content hide" >
						         		<div class="row form-group">			         			
						         			<div class="col-xs-2">
						         				<label>Fecha:</label>
						         			</div>
						         			<div class="col-xs-10">
											  	 <div class='input-group date' id='datetimepicker5'>									  	 	
													<input type='text' class="form-control" data-date-format="DD/MM/YYYY" id="fecha" name="fecha" placeholder="" value="">
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>
											 </div>	
											 </div>
										<div class="row form-group">							 
											 <div class="col-xs-2">
											  	 <label>Hora:</label>
											  </div>
						         			<div class="col-xs-10">
											       <div class='input-group date' id='datetimepicker4'>
									                    <input type='text' class="form-control" id="hora" name="hora" placeholder="" value="">
									                    <span class="input-group-addon"><span class="glyphicon glyphicon-time"></span>
									                    </span>
									                </div>
											 </div>
										</div>	
										<div class="row form-group">
											 <div class="col-xs-2">
											  	 <label style="aling:center;">Lugar:</label>
											  </div>
						         			<div class="col-xs-10">
											     <input type="text" class="form-control" id="lugar" name="lugar" placeholder="" value="">
											 </div>	
						         		</div>
						         		<div class="row form-group">							 
											 <div class="col-xs-6">
											  	 <button type="submit" class="btn btn-default btn-lg"><i class="glyphicon glyphicon-floppy-disk" style="color:#1abb9c;"></i> Guardar</button>
											  </div>
											  <div class="col-xs-6">									  
											     <button type="button" onclick="$('#agenda${modeloCount}').click();" class="btn btn-default btn-lg" data-dismiss="popover"><i class="glyphicon glyphicon-remove" style="color:#e54b3b"></i> Cancelar</button>
											 </div>	
						         		</div>  
						         	</div>
					         	</div>
		
					         	
					         	<button style="float: right; padding:0; background-color:transparent; border:none;" type="button" class="btn btn-default" onclick="" data-toggle="tooltip" data-placement="top" title="Mas adelante">
					         	<img style="cursor: pointer;" src="${request.contextPath}/images/organizacion/acciones/mas_adelante_a.png">
					         	</button>
					         	<button style="float: right; padding:0; background-color:transparent; border:none;" type="button" class="btn btn-default" onclick="" data-toggle="tooltip" data-placement="top" title="Sin interés"><img style="cursor: pointer;" src="${request.contextPath}/images/organizacion/acciones/sin_interes_a.png"></button>
					         	
					         	<div style="float: left;" class="popover-markup">
					         	<button id="delete${modeloCount}"  style="float: right; padding:0; background-color:transparent; border:none;" type="button" class="btn btn-default trigger" id="eliminar" onclick="" data-toggle="tooltip" data-placement="top" title="Eliminar"><img style="cursor: pointer;" src="${request.contextPath}/images/organizacion/acciones/eliminar_a.png"></button>															
								<div class="content hide" >
								          <div class="row form-group">			         			
								         			<div class="col-xs-12">
								         				<label>¿Desea eliminar el registro?</label>
								         			</div>
									
								         		<div class="row form-group">							 
													 <div class="col-xs-6">
													  	 <button type="submit" class="btn btn-default btn-lg"><i class="glyphicon glyphicon-floppy-disk" style="color:#1abb9c;"></i> SI </button>
													  </div>
													  <div class="col-xs-6">									  
													     <button type="button" onclick="$('#delete${modeloCount}').click();" class="btn btn-default btn-lg" data-dismiss="popover"><i class="glyphicon glyphicon-remove" style="color:#e54b3b"></i> NO</button>
													 </div>	
								         		</div>  
								         	</div>
							         	
								</div>
						
						</td>
					</tr>									  								
					</g:each>
			     <!-- END BASE -->	
			 </tbody>
		     </table>
		    </div>
   </div>
   
   <script type="text/javascript"> 
   
	//cargar divs con vistas
	window.onload = function() {
		//cargar grafico
			load_tree(1);
		//cargar ReporteVisionGeneral;
			load_graph(1);
	    
		
	}
 	$(document).ready(function() {
		 $("#tipo_reporte").change(function () { 
			 var tipo = $("#tipo_reporte").val();
			 if(tipo == 1){
				 $("#txt_report").text("Reporte Visión General");
				 load_tree(1);
				 load_graph(1);}
			 if(tipo == 2){
				 $("#txt_report").text("Reporte Proyección");
				 load_tree(2);
				 load_graph(2); }
			 if(tipo == 3){
				 $("#txt_report").text("Reporte Emprendedores");
				 load_tree(3);
				 load_graph(3);}
			 if(tipo == 4){
				 $("#txt_report").text("Festejados del mes") 
				 load_tree(4);
				 load_graph(4); }
			 if(tipo == 5){ 
				 $("#txt_report").text("Emprendedores por rango");
			 	 load_tree(5);
			 	 load_graph(5);}
			 if(tipo == 6){ 
				 $("#txt_report").text("Productividad");
				 load_tree(6);
				 load_graph(6);}
			 if(tipo == 7){
				 $("#txt_report").text("Autopago") 
				 load_tree(1);
				 load_graph(1); /* A falta del reporte de autopago */}
		});
 	});

	//cargar grafico
	function load_tree(opc){
		console.log("entró a la funcion "+opc);
		switch(opc)
		{
		case 1:
			$("#contenido_arbol").html("");
			$("#contenido_arbol").append('<div class="loader_i"></div>');
		    $.ajax({
		         url: "/compromisomx/Graficas/vision_general",
		         type: "GET",
		         dataType: "html",
		         success: function (data) {
		             $("#contenido_arbol").html(data);
		         }
		      })    
			
		break;

		case 2:
			$("#contenido_arbol").html("");
			$("#contenido_arbol").append('<div class="loader_i"></div>');
		    $.ajax({
		         url: "/compromisomx/Graficas/proyeccion",
		         type: "GET",
		         dataType: "html",
		         success: function (data) {
		             $("#contenido_arbol").html(data);
		         }
		      })    
			
		break;

		case 3:
			$("#contenido_arbol").html("");
			$("#contenido_arbol").append('<div class="loader_i"></div>');
		    $.ajax({
		         url: "/compromisomx/Graficas/emprendedores",
		         type: "GET",
		         dataType: "html",
		         success: function (data) {
		             $("#contenido_arbol").html(data);
		         }
		      })    
			
		break;

		case 4:
			$("#contenido_arbol").html("");
			$("#contenido_arbol").append('<div class="loader_i"></div>');
		    $.ajax({
		         url: "/compromisomx/Graficas/festejados_mes",
		         type: "GET",
		         dataType: "html",
		         success: function (data) {
		             $("#contenido_arbol").html(data);
		         }
		      })    
			
		break;
		
		case 5:
			$("#contenido_arbol").html("");
			$("#contenido_arbol").append('<div class="loader_i"></div>');
		    $.ajax({
		         url: "/compromisomx/Graficas/emprendedores_rango",
		         type: "GET",
		         dataType: "html",
		         success: function (data) {
		             $("#contenido_arbol").html(data);
		         }
		      })    
			
		break;
		
		case 6:
			$("#contenido_arbol").html("");
			$("#contenido_arbol").append('<div class="loader_i"></div>');
		    $.ajax({
		         url: "/compromisomx/Graficas/vision_general",
		         type: "GET",
		         dataType: "html",
		         success: function (data) {
		             $("#contenido_arbol").html(data);
		         }
		      })    
			
		break;
		
		case 7:
			$("#contenido_arbol").html("");
			$("#contenido_arbol").append('<div class="loader_i"></div>');
		    $.ajax({
		         url: "/compromisomx/Graficas/vision_general",
		         type: "GET",
		         dataType: "html",
		         success: function (data) {
		             $("#contenido_arbol").html(data);
		         }
		      })    
			
		break;
			
		}
		     
	}

	//cargar reporte general
	function load_graph(opc){
		console.log("entró a la funcion "+opc);
		switch(opc)
		{
		case 1:
			$("#vision_general").html("");
			$("#vision_general").append('<div class="loader_i"></div>');
			$.ajax({
				url: "/compromisomx/reportes/orgvisiongral",
				type: "GET",
				dataType: "html",
				success: function (data) {
					$("#vision_general").html(data);
				}
			})	 
		break;

		case 2:
			$("#vision_general").html("");
		break;
			
		case 3:
			$("#vision_general").html("");
			$("#vision_general").append('<div class="loader_i"></div>');
			$.ajax({
				url: "/compromisomx/reportes/orgemprendedores",
				type: "GET",
				dataType: "html",
				success: function (data) {
					$("#vision_general").html(data);
				}
			})
		break;

		case 4:
			$("#vision_general").html("");
			$("#vision_general").append('<div class="loader_i"></div>');
			$.ajax({
				url: "/compromisomx/Festejados_mes/",
				type: "GET",
				dataType: "html",
				success: function (data) {
					$("#vision_general").html(data);
				}
			})
		break;

		case 5:
			$("#vision_general").html("");
			$("#vision_general").append('<div class="loader_i"></div>');
			$.ajax({
				url: "/compromisomx/reportes/orgrangos",
				type: "GET",
				dataType: "html",
				success: function (data) {
					$("#vision_general").html(data);
				}
			})
		break;

		case 6:
			$("#vision_general").html("");
			$("#vision_general").append('<div class="loader_i"></div>');
			$.ajax({
				url: "/compromisomx/reportes/orgproductividad",
				type: "GET",
				dataType: "html",
				success: function (data) {
					$("#vision_general").html(data);
				}
			})
		break;
		
		case 7:
			$("#vision_general").html("");
			$("#vision_general").append('<div class="loader_i"></div>');
			$.ajax({
				url: "/compromisomx/reportes/orgvisiongral",
				type: "GET",
				dataType: "html",
				success: function (data) {
					$("#vision_general").html(data);
				}
			})	 
		break;
				 	
		}


		
		
	}

	

   
//============================== INICIO FUNCIONES MASE ==========================================//
   function nombre(nom,id){	
	   var id = id;
	   var nombre_persona = nom;  
	   alert (nombre_persona + id);
	      $.ajax({
	          url: '/compromisomx/FuturosEmprendedores/nombre_guardar',
	          type: "GET",
	          data: {nombre:nombre_persona},
	          success: function(data){
	        	  alert(data);				
		          }
	       });
		}
	//HORA
   $(function () {
       $('#datetimepicker4').datetimepicker({
           pickDate: false
       });
   });
   //FECHA
   $(function () {
				$('#datetimepicker5').datetimepicker({
					pickTime: false
				});
			});
   //POPOVERS BOTONES
   $('.popover-markup>.trigger').popover({
	    html: true,
	    title: function () {
	        return $(this).parent().find('.head').html();
	    },
	    content: function () {
	        return $(this).parent().find('.content').html();
	    }
	});
  
  //AGREGAR FILAS
  $(document).ready(function(){
		// Clona la fila oculta que tiene los campos base, y la agrega al final de la tabla
		$("#agregar").on('click', function(){			
			$("#tabla tbody tr:eq(0)").clone().removeClass('fila-base').appendTo("#tabla tbody");
			});
		});
  //NUMERO DE LA FILA	
  var a = 0;          
  function increase(){

	  var text = document.getElementById("text");
      document.getElementById("text").value=a;
      a=a+1;
      text.innerHTML = a;

  }      

//ELIMINAR REGISTRO
	function delete_(id){
		$("#id_eliminar").val(id);
		$('#myModal_delete').modal('show');
	}
//TOOLTIPS
	$(function () {
		  $('[data-toggle="tooltip"]').tooltip()
		})
	
  </script>  
</body>
</html>