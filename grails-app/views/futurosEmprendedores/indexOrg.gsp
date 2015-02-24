<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="organizacion_layout"/>
<title>Futuros Emprendedores</title>


</head>
<body>
<style type="text/css">
	.oculta{display:none;}
	.popover {
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
</style>
 <div class="form-group row">
 	<div class="col-xs-4 text-left">
 		<label id="txt_report">Reporte Visión General</label>
 	</div>
 	<div class="col-xs-4 text-center">
 		<i class="glyphicon glyphicon-stats iconos_centrales"></i>
 		<i class="glyphicon glyphicon-list-alt iconos_centrales"></i>
 		<i class="glyphicon glyphicon-edit iconos_centrales"></i>
 	</div>
 	<div class="col-xs-4 text-right">
	 	<div class="form-group">
	    	<label for="inputEmail3" class="col-sm-6 control-label">Selecciona un Reporte</label>
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
 
 <!-- ARBOL GRAFICA -->
  <div class="form-group row" id="contenido_arbol" style="border-bottom:2px solid #555;">
  
  </div>
  <!-- ARBOL FESTEJADOS DEL MES -->
  <div class="form-group row" id="contenido_festejados">
  
  </div>
  
  <!-- Reporte Vision General  -->
  <div class="form-group row" id="vision_general">
  
  </div>
  
  <!-- Reporte Emprendedores  -->
  <div class="form-group row" id="emprendedores">
  
  </div>
  
  
  	<hr class="row">
		<div class="row">
		   <div class="table-responsive">
				<table class="table table-hover" style="border: solid 2px #808080;" id="tabla">
		     	<thead>
			       <tr style="color:white;background-color:#961255;">
			     	 <th> </th>
			         <th>Nombre</th>
			         <th>Telefono</th>
			         <th>Correo Electrónico</th>
			         <th>Facebook</th>
			         <th>Twitter</th>
			         <th>Skype</th>
			         <th>Facetime</th>
			         <th style="width: 20%;">Controles</th>
			       </tr>
			     </thead>
			    <tbody>
			    <!-- fila base para clonar y agregar al final -->
			    <g:each in="${emprendedores}" var="modeloList" status="i">
			    <tr class="oculta" >
			       	 <th><div id="text">1</div></th>
			         <th>
			         	<input type="text" class="form-control" id="nombre" name="nombre" placeholder="isaias" value="" onblur="nombre(this.value,2);"></th>
			         <th>
			         	<div class="popover-markup">
			         		<button type="button" class="btn btn-default trigger" data-toggle="tooltip" data-placement="top" onclick="" >
			         			<i class="glyphicon glyphicon-edit" style="color:#428bca"></i>
			         		</button>
			         		<div class="content hide">
				         		<div class="row form-group">			         			
				         			<div class="col-xs-6">
									  	 <label>Telefono de Celular:</label>
									 </div>
									 <div class="col-xs-6"> 
									     <input type="text" class="form-control" id="telcelular" name="telcelular" placeholder="981 123 0959" value="">
									 </div>	
								</div>
								<div class="row form-group">							 
									 <div class="col-xs-6">
									  	 <label>Telefono de Casa:</label>
									  </div>
									  <div class="col-xs-6">
									     <input type="text" class="form-control" id="telcasa" name="telcasa" placeholder="81 123 0959" value="">
									 </div>	
				         		</div>
				         		<div class="row form-group">							 
									 <div class="col-xs-6">
									  	 <button type="submit" class="btn btn-default btn-lg"><i class="glyphicon glyphicon-floppy-disk" style="color:#1abb9c;"></i> Guardar</button>
									  </div>
									  <div class="col-xs-6">									  
									     <button type="button" class="btn btn-default btn-lg" data-dismiss="popover"><i class="glyphicon glyphicon-remove" style="color:#e54b3b"></i> Cancelar</button>
									 </div>	
				         		</div>  								 
				         	</div>
			         	</div>
			         </th>
			         <th><input type="text" class="form-control" id="correo" name="correo" placeholder="mace@hotmail.com" value=""></th>
			         <th><input type="text" class="form-control" id="facebook" name="facebook" placeholder="/isaiasmace" value=""></th>
			         <th><input type="text" class="form-control" id="twitter" name="twitter" placeholder="/isaiassa" value=""></th>
			         <th><input type="text" class="form-control" id="skype" name="skype" placeholder="/isaiassd" value=""></th>
			         <th><input type="text" class="form-control" id="facetime" name="facetime" placeholder="/isaiasds" value=""></th>
			         <th>
			         	<button type="button" class="btn btn-default" onclick="" data-toggle="tooltip" data-placement="top" title="5 seleccionado"><i class="glyphicon glyphicon-edit" style="color:#428bca"></i></button>
			         	<button type="button" class="btn btn-default" onclick="" data-toggle="tooltip" data-placement="top" title="25 seleccionado"><i class="glyphicon glyphicon-edit" style="color:#428bca"></i></button>
			         	<div class="popover-markup">
			         		<button type="button" class="btn btn-default trigger" data-toggle="tooltip" data-placement="top" onclick="" >
			         			<i class="glyphicon glyphicon-edit" style="color:#428bca"></i>
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
									     <button type="button" class="btn btn-default btn-lg" data-dismiss="popover"><i class="glyphicon glyphicon-remove" style="color:#e54b3b"></i> Cancelar</button>
									 </div>	
				         		</div>  
				         	</div>
			         	</div>
			         	<button type="button" class="btn btn-default" onclick="" data-toggle="tooltip" data-placement="top" title="Mas adelante"><i class="glyphicon glyphicon-edit" style="color:#428bca"></i></button>
			         	<button type="button" class="btn btn-default" onclick="" data-toggle="tooltip" data-placement="top" title="Sin interés"><i class="glyphicon glyphicon-edit" style="color:#428bca"></i></button>
			         	<button type="button" class="btn btn-default" id="agregar" onclick="increase()" data-toggle="tooltip" data-placement="top" title="Eliminar"><i class="glyphicon glyphicon-edit" style="color:#428bca"></i></button>
			         </th>	
			     </tr>		
			     </g:each>
			     <!-- END BASE -->	
			      <tr>
			       	 <th><div>1</div></th>
			         <th>
			         	<input type="text" class="form-control" id="nombre" name="nombre" placeholder="isaias" value="" onblur="nombre(this.value,2);"></th>
			         <th>
			         	<div class="popover-markup">
			         		<button id="phone1" type="button" class="btn btn-default trigger" data-toggle="tooltip" data-placement="top" onclick="" >
			         			<i class="glyphicon glyphicon-edit" style="color:#428bca"></i>
			         		</button>
			         		<div class="content hide">
				         		<div class="row form-group">			         			
				         			<div class="col-xs-6">
									  	 <label>Telefono de Celular:</label>
									 </div>
									 <div class="col-xs-6"> 
									     <input type="text" class="form-control" id="telcelular" name="telcelular" placeholder="981 123 0959" value="">
									 </div>	
								</div>
								<div class="row form-group">							 
									 <div class="col-xs-6">
									  	 <label>Telefono de Casa:</label>
									  </div>
									  <div class="col-xs-6">
									     <input type="text" class="form-control" id="telcasa" name="telcasa" placeholder="81 123 0959" value="">
									 </div>	
				         		</div>
				         		<div class="row form-group">							 
									 <div class="col-xs-6">
									  	 <button type="submit" class="btn btn-default btn-lg"><i class="glyphicon glyphicon-floppy-disk" style="color:#1abb9c;"></i> Guardar</button>
									  </div>
									  <div class="col-xs-6">									  
									     <button onclick="$('#phone1').click();" type="button" class="btn btn-default btn-lg" data-dismiss="popover"><i class="glyphicon glyphicon-remove" style="color:#e54b3b"></i> Cancelar</button>
									 </div>	
				         		</div>  								 
				         	</div>
			         	</div>
			         </th>
			         <th><input type="text" class="form-control" id="correo" name="correo" placeholder="mace@hotmail.com" value=""></th>
			         <th><input type="text" class="form-control" id="facebook" name="facebook" placeholder="/isaiasmace" value=""></th>
			         <th><input type="text" class="form-control" id="twitter" name="twitter" placeholder="/isaiassa" value=""></th>
			         <th><input type="text" class="form-control" id="skype" name="skype" placeholder="/isaiassd" value=""></th>
			         <th><input type="text" class="form-control" id="facetime" name="facetime" placeholder="/isaiasds" value=""></th>
			         <th>
			         	<button  type="button" class="btn btn-default" onclick="" data-toggle="tooltip" data-placement="top" title="5 seleccionado"><i class="glyphicon glyphicon-edit" style="color:#428bca"></i></button>
			         	<button type="button" class="btn btn-default" onclick="" data-toggle="tooltip" data-placement="top" title="25 seleccionado"><i class="glyphicon glyphicon-edit" style="color:#428bca"></i></button>
			         	<div class="popover-markup">
			         		<button   type="button" class="btn btn-default trigger" data-toggle="tooltip" data-placement="top" onclick="" >
			         			<i class="glyphicon glyphicon-edit" style="color:#428bca"></i>
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
									     <button  type="button" class="btn btn-default btn-lg" data-dismiss="popover"><i class="glyphicon glyphicon-remove" style="color:#e54b3b"></i> Cancelar</button>
									 </div>	
				         		</div>  
				         	</div>
			         	</div>
			         	<button type="button" class="btn btn-default" onclick="" data-toggle="tooltip" data-placement="top" title="Mas adelante"><i class="glyphicon glyphicon-edit" style="color:#428bca"></i></button>
			         	<button type="button" class="btn btn-default" onclick="" data-toggle="tooltip" data-placement="top" title="Sin interés"><i class="glyphicon glyphicon-edit" style="color:#428bca"></i></button>
			         	<button type="button" class="btn btn-default" id="eliminar" onclick="" data-toggle="tooltip" data-placement="top" title="Eliminar"><i class="glyphicon glyphicon-edit" style="color:#428bca"></i></button>
			         </th>	
			     </tr>	
			     <tr>
			     	<th><div>2</div></th>
			         <th>
			         	<input type="text" class="form-control" id="nombre" name="nombre" placeholder="isaias" value="" onblur="nombre(this.value,2);"></th>
			         <th>
			         	<div class="popover-markup">
			         		<button id="phone2" type="button" class="btn btn-default trigger" data-toggle="tooltip" data-placement="top" onclick="" >
			         			<i class="glyphicon glyphicon-edit" style="color:#428bca"></i>
			         		</button>
			         		<div class="content hide">
				         		<div class="row form-group">			         			
				         			<div class="col-xs-6">
									  	 <label>Telefono de Celular:</label>
									 </div>
									 <div class="col-xs-6"> 
									     <input type="text" class="form-control" id="telcelular" name="telcelular" placeholder="981 123 0959" value="">
									 </div>	
								</div>
								<div class="row form-group">							 
									 <div class="col-xs-6">
									  	 <label>Telefono de Casa:</label>
									  </div>
									  <div class="col-xs-6">
									     <input type="text" class="form-control" id="telcasa" name="telcasa" placeholder="81 123 0959" value="">
									 </div>	
				         		</div>
				         		<div class="row form-group">							 
									 <div class="col-xs-6">
									  	 <button type="submit" class="btn btn-default btn-lg"><i class="glyphicon glyphicon-floppy-disk" style="color:#1abb9c;"></i> Guardar</button>
									  </div>
									  <div class="col-xs-6">									  
									     <button onclick="$('#phone2').click();" type="button" class="btn btn-default btn-lg" data-dismiss="popover"><i class="glyphicon glyphicon-remove" style="color:#e54b3b"></i> Cancelar</button>
									 </div>	
				         		</div>  								 
				         	</div>
			         	</div>
			         </th>
			         <th><input type="text" class="form-control" id="correo" name="correo" placeholder="mace@hotmail.com" value=""></th>
			         <th><input type="text" class="form-control" id="facebook" name="facebook" placeholder="/isaiasmace" value=""></th>
			         <th><input type="text" class="form-control" id="twitter" name="twitter" placeholder="/isaiassa" value=""></th>
			         <th><input type="text" class="form-control" id="skype" name="skype" placeholder="/isaiassd" value=""></th>
			         <th><input type="text" class="form-control" id="facetime" name="facetime" placeholder="/isaiasds" value=""></th>
			         <th>
			         	<button type="button" class="btn btn-default" onclick="" data-toggle="tooltip" data-placement="top" title="5 seleccionado"><i class="glyphicon glyphicon-edit" style="color:#428bca"></i></button>
			         	<button type="button" class="btn btn-default" onclick="" data-toggle="tooltip" data-placement="top" title="25 seleccionado"><i class="glyphicon glyphicon-edit" style="color:#428bca"></i></button>
			         	<div class="popover-markup">
			         		<button type="button" class="btn btn-default trigger" data-toggle="tooltip" data-placement="top" onclick="" >
			         			<i class="glyphicon glyphicon-edit" style="color:#428bca"></i>
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
									     <button type="button" class="btn btn-default btn-lg" data-dismiss="popover"><i class="glyphicon glyphicon-remove" style="color:#e54b3b"></i> Cancelar</button>
									 </div>	
				         		</div>  
				         	</div>
			         	</div>
			         	<button type="button" class="btn btn-default" onclick="" data-toggle="tooltip" data-placement="top" title="Mas adelante"><i class="glyphicon glyphicon-edit" style="color:#428bca"></i></button>
			         	<button type="button" class="btn btn-default" onclick="" data-toggle="tooltip" data-placement="top" title="Sin interés"><i class="glyphicon glyphicon-edit" style="color:#428bca"></i></button>
			         	<button type="button" class="btn btn-default" id="eliminar" onclick="" data-toggle="tooltip" data-placement="top" title="Eliminar"><i class="glyphicon glyphicon-edit" style="color:#428bca"></i></button>
			         </th>	
			     </tr>
			     <tr>
			       	 <th><div>3</div></th>
			         <th>
			         	<input type="text" class="form-control" id="nombre" name="nombre" placeholder="isaias" value="" onblur="nombre(this.value,2);"></th>
			         <th>
			         	<div class="popover-markup">
			         		<button type="button" class="btn btn-default trigger" data-toggle="tooltip" data-placement="top" onclick="" >
			         			<i class="glyphicon glyphicon-edit" style="color:#428bca"></i>
			         		</button>
			         		<div class="content hide">
				         		<div class="row form-group">			         			
				         			<div class="col-xs-6">
									  	 <label>Telefono de Celular:</label>
									 </div>
									 <div class="col-xs-6"> 
									     <input type="text" class="form-control" id="telcelular" name="telcelular" placeholder="981 123 0959" value="">
									 </div>	
								</div>
								<div class="row form-group">							 
									 <div class="col-xs-6">
									  	 <label>Telefono de Casa:</label>
									  </div>
									  <div class="col-xs-6">
									     <input type="text" class="form-control" id="telcasa" name="telcasa" placeholder="81 123 0959" value="">
									 </div>	
				         		</div>
				         		<div class="row form-group">							 
									 <div class="col-xs-6">
									  	 <button type="submit" class="btn btn-default btn-lg"><i class="glyphicon glyphicon-floppy-disk" style="color:#1abb9c;"></i> Guardar</button>
									  </div>
									  <div class="col-xs-6">									  
									     <button type="button" class="btn btn-default btn-lg" data-dismiss="popover"><i class="glyphicon glyphicon-remove" style="color:#e54b3b"></i> Cancelar</button>
									 </div>	
				         		</div>  								 
				         	</div>
			         	</div>
			         </th>
			         <th><input type="text" class="form-control" id="correo" name="correo" placeholder="mace@hotmail.com" value=""></th>
			         <th><input type="text" class="form-control" id="facebook" name="facebook" placeholder="/isaiasmace" value=""></th>
			         <th><input type="text" class="form-control" id="twitter" name="twitter" placeholder="/isaiassa" value=""></th>
			         <th><input type="text" class="form-control" id="skype" name="skype" placeholder="/isaiassd" value=""></th>
			         <th><input type="text" class="form-control" id="facetime" name="facetime" placeholder="/isaiasds" value=""></th>
			         <th>
			         	<button type="button" class="btn btn-default" onclick="" data-toggle="tooltip" data-placement="top" title="5 seleccionado"><i class="glyphicon glyphicon-edit" style="color:#428bca"></i></button>
			         	<button type="button" class="btn btn-default" onclick="" data-toggle="tooltip" data-placement="top" title="25 seleccionado"><i class="glyphicon glyphicon-edit" style="color:#428bca"></i></button>
			         	<div class="popover-markup">
			         		<button type="button" class="btn btn-default trigger" data-toggle="tooltip" data-placement="top" onclick="" >
			         			<i class="glyphicon glyphicon-edit" style="color:#428bca"></i>
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
									     <button type="button" class="btn btn-default btn-lg" data-dismiss="popover"><i class="glyphicon glyphicon-remove" style="color:#e54b3b"></i> Cancelar</button>
									 </div>	
				         		</div>  
				         	</div>
			         	</div>
			         	<button type="button" class="btn btn-default" onclick="" data-toggle="tooltip" data-placement="top" title="Mas adelante"><i class="glyphicon glyphicon-edit" style="color:#428bca"></i></button>
			         	<button type="button" class="btn btn-default" onclick="" data-toggle="tooltip" data-placement="top" title="Sin interés"><i class="glyphicon glyphicon-edit" style="color:#428bca"></i></button>
			         	<button type="button" class="btn btn-default" id="eliminar" onclick="" data-toggle="tooltip" data-placement="top" title="Eliminar"><i class="glyphicon glyphicon-edit" style="color:#428bca"></i></button>
			         </th>	
			     </tr>
			     	    <tr>
			       	 <th><div>4</div></th>
			         <th>
			         	<input type="text" class="form-control" id="nombre" name="nombre" placeholder="isaias" value="" onblur="nombre(this.value,2);"></th>
			         <th>
			         	<div class="popover-markup">
			         		<button type="button" class="btn btn-default trigger" data-toggle="tooltip" data-placement="top" onclick="" >
			         			<i class="glyphicon glyphicon-edit" style="color:#428bca"></i>
			         		</button>
			         		<div class="content hide">
				         		<div class="row form-group">			         			
				         			<div class="col-xs-6">
									  	 <label>Telefono de Celular:</label>
									 </div>
									 <div class="col-xs-6"> 
									     <input type="text" class="form-control" id="telcelular" name="telcelular" placeholder="981 123 0959" value="">
									 </div>	
								</div>
								<div class="row form-group">							 
									 <div class="col-xs-6">
									  	 <label>Telefono de Casa:</label>
									  </div>
									  <div class="col-xs-6">
									     <input type="text" class="form-control" id="telcasa" name="telcasa" placeholder="81 123 0959" value="">
									 </div>	
				         		</div>
				         		<div class="row form-group">							 
									 <div class="col-xs-6">
									  	 <button type="submit" class="btn btn-default btn-lg"><i class="glyphicon glyphicon-floppy-disk" style="color:#1abb9c;"></i> Guardar</button>
									  </div>
									  <div class="col-xs-6">									  
									     <button type="button" class="btn btn-default btn-lg" data-dismiss="popover"><i class="glyphicon glyphicon-remove" style="color:#e54b3b"></i> Cancelar</button>
									 </div>	
				         		</div>  								 
				         	</div>
			         	</div>
			         </th>
			         <th><input type="text" class="form-control" id="correo" name="correo" placeholder="mace@hotmail.com" value=""></th>
			         <th><input type="text" class="form-control" id="facebook" name="facebook" placeholder="/isaiasmace" value=""></th>
			         <th><input type="text" class="form-control" id="twitter" name="twitter" placeholder="/isaiassa" value=""></th>
			         <th><input type="text" class="form-control" id="skype" name="skype" placeholder="/isaiassd" value=""></th>
			         <th><input type="text" class="form-control" id="facetime" name="facetime" placeholder="/isaiasds" value=""></th>
			         <th>
			         	<button type="button" class="btn btn-default" onclick="" data-toggle="tooltip" data-placement="top" title="5 seleccionado"><i class="glyphicon glyphicon-edit" style="color:#428bca"></i></button>
			         	<button type="button" class="btn btn-default" onclick="" data-toggle="tooltip" data-placement="top" title="25 seleccionado"><i class="glyphicon glyphicon-edit" style="color:#428bca"></i></button>
			         	<div class="popover-markup">
			         		<button type="button" class="btn btn-default trigger" data-toggle="tooltip" data-placement="top" onclick="" >
			         			<i class="glyphicon glyphicon-edit" style="color:#428bca"></i>
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
									     <button type="button" class="btn btn-default btn-lg" data-dismiss="popover"><i class="glyphicon glyphicon-remove" style="color:#e54b3b"></i> Cancelar</button>
									 </div>	
				         		</div>  
				         	</div>
			         	</div>
			         	<button type="button" class="btn btn-default" onclick="" data-toggle="tooltip" data-placement="top" title="Mas adelante"><i class="glyphicon glyphicon-edit" style="color:#428bca"></i></button>
			         	<button type="button" class="btn btn-default" onclick="" data-toggle="tooltip" data-placement="top" title="Sin interés"><i class="glyphicon glyphicon-edit" style="color:#428bca"></i></button>
			         	<button type="button" class="btn btn-default" id="eliminar" onclick="" data-toggle="tooltip" data-placement="top" title="Eliminar"><i class="glyphicon glyphicon-edit" style="color:#428bca"></i></button>
			         </th>	
			     </tr>
			     	    <tr>
			       	 <th><div>5</div></th>
			         <th>
			         	<input type="text" class="form-control" id="nombre" name="nombre" placeholder="isaias" value="" onblur="nombre(this.value,2);"></th>
			         <th>
			         	<div class="popover-markup">
			         		<button type="button" class="btn btn-default trigger" data-toggle="tooltip" data-placement="top" onclick="" >
			         			<i class="glyphicon glyphicon-edit" style="color:#428bca"></i>
			         		</button>
			         		<div class="content hide">
				         		<div class="row form-group">			         			
				         			<div class="col-xs-6">
									  	 <label>Telefono de Celular:</label>
									 </div>
									 <div class="col-xs-6"> 
									     <input type="text" class="form-control" id="telcelular" name="telcelular" placeholder="981 123 0959" value="">
									 </div>	
								</div>
								<div class="row form-group">							 
									 <div class="col-xs-6">
									  	 <label>Telefono de Casa:</label>
									  </div>
									  <div class="col-xs-6">
									     <input type="text" class="form-control" id="telcasa" name="telcasa" placeholder="81 123 0959" value="">
									 </div>	
				         		</div>
				         		<div class="row form-group">							 
									 <div class="col-xs-6">
									  	 <button type="submit" class="btn btn-default btn-lg"><i class="glyphicon glyphicon-floppy-disk" style="color:#1abb9c;"></i> Guardar</button>
									  </div>
									  <div class="col-xs-6">									  
									     <button type="button" class="btn btn-default btn-lg" data-dismiss="popover"><i class="glyphicon glyphicon-remove" style="color:#e54b3b"></i> Cancelar</button>
									 </div>	
				         		</div>  								 
				         	</div>
			         	</div>
			         </th>
			         <th><input type="text" class="form-control" id="correo" name="correo" placeholder="mace@hotmail.com" value=""></th>
			         <th><input type="text" class="form-control" id="facebook" name="facebook" placeholder="/isaiasmace" value=""></th>
			         <th><input type="text" class="form-control" id="twitter" name="twitter" placeholder="/isaiassa" value=""></th>
			         <th><input type="text" class="form-control" id="skype" name="skype" placeholder="/isaiassd" value=""></th>
			         <th><input type="text" class="form-control" id="facetime" name="facetime" placeholder="/isaiasds" value=""></th>
			         <th>
			         	<button type="button" class="btn btn-default" onclick="" data-toggle="tooltip" data-placement="top" title="5 seleccionado"><i class="glyphicon glyphicon-edit" style="color:#428bca"></i></button>
			         	<button type="button" class="btn btn-default" onclick="" data-toggle="tooltip" data-placement="top" title="25 seleccionado"><i class="glyphicon glyphicon-edit" style="color:#428bca"></i></button>
			         	<div class="popover-markup">
			         		<button type="button" class="btn btn-default trigger" data-toggle="tooltip" data-placement="top" onclick="" >
			         			<i class="glyphicon glyphicon-edit" style="color:#428bca"></i>
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
									     <button type="button" class="btn btn-default btn-lg" data-dismiss="popover"><i class="glyphicon glyphicon-remove" style="color:#e54b3b"></i> Cancelar</button>
									 </div>	
				         		</div>  
				         	</div>
			         	</div>
			         	<button type="button" class="btn btn-default" onclick="" data-toggle="tooltip" data-placement="top" title="Mas adelante"><i class="glyphicon glyphicon-edit" style="color:#428bca"></i></button>
			         	<button type="button" class="btn btn-default" onclick="" data-toggle="tooltip" data-placement="top" title="Sin interés"><i class="glyphicon glyphicon-edit" style="color:#428bca"></i></button>
			         	<button type="button" class="btn btn-default" id="eliminar" onclick="" data-toggle="tooltip" data-placement="top" title="Eliminar"><i class="glyphicon glyphicon-edit" style="color:#428bca"></i></button>
			         </th>	
			     </tr>						     				     
			 	
			 </tbody>
		          </table>
		    </div>
   </div>
   
   <script type="text/javascript">
   
	//cargar divs con vistas
	window.onload = function() {
		//cargar grafico
			load_tree();
		//cargar ReporteVisionGeneral;
			load_graph(1);
	    //cargar siguiente div
		
	}

 	$(document).ready(function() {
		 $("#tipo_reporte").change(function () { 
			 var tipo = $("#tipo_reporte").val();
			 if(tipo == 1){
				 $("#txt_report").text("Reporte Visión General");
				 load_graph(1);}
			 if(tipo == 2){
				 $("#txt_report").text("Reporte Proyección");
				 load_graph(2); }
			 if(tipo == 3){
				 $("#txt_report").text("Reporte Emprendedores");
				 load_graph(3);}
			 if(tipo == 4){
				 $("#txt_report").text("Festejados del mes") 
				 load_graph(2); /* A falta del reporte de cumpleaños */}
			 if(tipo == 5){ 
				 $("#txt_report").text("Emprendedores por rango");
			 	 load_graph(5);}
			 if(tipo == 6){ 
				 $("#txt_report").text("Productividad");
			 	load_graph(6);}
			 if(tipo == 7){
				 $("#txt_report").text("Autopago") 
				 load_graph(2); /* A falta del reporte de autopago */}
		});
 	});

	//cargar grafico
	function load_tree(){
		 $("#contenido_arbol").append('<div class="loader_i"></div>');
	     $.ajax({
	          url: "/compromisomx/Graficas/vision_general",
	          type: "GET",
	          dataType: "html",
	          success: function (data) {
	              $("#contenido_arbol").html(data);
	          }
	       })       
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

		// Falta el caso 4: festejados del mes

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
				 	
		}


		
		
	}

	//cargar reporte emprendedores
	function load_graph2(){
		$("#emprendedores").html("");
		console.log("entró a la load graph2");
		 $("#emprendedores").append('<div class="loader_i"></div>');
		 setTimeout(function() {
			     $.ajax({
			          url: "/compromisomx/reportes/orgemprendedores",
			          type: "GET",
			          dataType: "html",
			          success: function (data) {
			              $("#emprendedores").html(data);
			          }
			       })
			       
			 }, 3500);
		
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