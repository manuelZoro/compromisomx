<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<meta name="layout" content="cuenta_layout"/>
	<title>Metodos de Pago</title>
 </head>
<body>

<g:form controller="MetodosDePago" action="eliminar" id="form_eliminar">
<div id="eliminar_r" class="alert alert-warning alert-dismissible fade in" role="alert" style="display:none; width: 70%; margin-left:15%; margin-right: 15%; text-align: center;">
      <strong><i class="glyphicon glyphicon-warning-sign" style="color:red; font-size: 20px;"></i> Esta seguro!</strong> que desea quitar este metodo de pago?.
      <g:hiddenField name="id_eliminar" id="id_eliminar"/>
      <button type="submit" class="btn btn-default">Si</button>
      <button type="button" class="btn btn-danger" onclick="ocultar_delete_();">No</button>
</div>
</g:form>

<div class="row form-group" style="text-align: center;">
	<button type="button" class="btn btn-default" onclick="window.location.href='/compromisomx/metodosDePago/'"><i class="glyphicon glyphicon-credit-card" style="color:#961255;"></i> Metodos de Pago</button>
	<button type="button" class="btn btn-default" onclick="window.location.href='/compromisomx/LugaresDeEnvio/'"><i class="glyphicon glyphicon-plane" style="color:#961255;"></i> Lugares de Envio</button>
</div>

<div class="row form-group" >
	<div class="col-xs-12 text-left">
		<label>Tarjetas de Credito/Debito</label>	
	</div>
</div>
<div class="row">
	<div class="col-xs-12">
		<div class="box-body table-responsive">
			<table id="area" class="table table-bordered table-striped">
				<thead style="background-color: #961255; color:#fff">
					<tr>
						<th>Tarjeta</th>
						<th>Numero de tarjeta</th>
						<th>Fecha vencimiento</th>
						<th>Titular de la tarjeta</th>
						<th>Opciones</th>
					</tr>
				</thead>
				<tbody>
				<g:each in="${metodosPago}" var="mPagos" status="i">
				
						<tr>
						<td>${mPagos.tipo_tarjeta}</td>
						<td>${mPagos.numero_tarjeta}</td>
						<td>${mPagos.mes_expiracion}/${mPagos.anio_expiracion}</td>
						<td>${mPagos.titular_tarjeta}</td>
						
						<td>		
							<button id="modificar" type="button" class="btn btn-default" onclick="window.location.href='/compromisomx/metodosDePago/editar/${mPagos.id}'">Editar</button>
							<button id="modificar" type="button" class="btn btn-default" onclick="mostrar_delete_('${mPagos.id}');">Eliminar</button>
						</td>
					</tr>
				
				</g:each>
				</tbody>
			</table>
		</div>
	</div>
</div>
<div class="row form-group" >
		<div class="col-md-12" style="border-bottom: 3px #555 solid;">
			<label>Agregar Datos de Nueva Tarjeta</label>
		</div>
</div>
<g:form controller="MetodosDePago" action="guardar">
<g:hiddenField name="id" value="0"/>
	<div class="row form-group ">
	
	<div class='col-md-6'>
	 <div class="row form-group">
    	<label for="inputEmail3" class="col-sm-5 control-label">Selecciona Forma de Pago*</label>
    	<div class="col-sm-7">
      		<select class="form-control">
      			<option value="1">Tarjeta de Crédito/Débito</option>
      	    </select>
    	</div>
     </div>
     <div class="row form-group">
    	<label for="inputEmail3" class="col-sm-5 control-label">Tipo*</label>
    	<div class="col-sm-7">
      		<select class="form-control" id="tipo_tarjeta" name="tipo_tarjeta">
      			<option value="Tarjeta de Crédito">Tarjeta de Crédito</option>
      			<option value="Tarjeta de Débito">Tarjeta de Débito</option>
      	    </select>
    	</div>
     </div>
     <div class="row form-group">
    	<label for="inputEmail3" class="col-sm-5 control-label">Titular Tarjeta*</label>
    	<div class="col-sm-7">
      		<input type="text" class="form-control" id="titular_tarjeta" name="titular_tarjeta" placeholder="" required="required">
    	</div>
     </div>
     <div class="row form-group">
    	<label for="inputEmail3" class="col-sm-5 control-label">Numero Tarjeta*</label>
    	<div class="col-sm-7">
      		<input type="text" class="form-control" id="numero_tarjeta" name="numero_tarjeta" placeholder="" required="required">
    	</div>
     </div>
     <div class="row form-group">
    	<label for="inputEmail3" class="col-sm-5 control-label">Expiración de la tarjeta*</label>
    	<div class="col-sm-3">
    		<g:select name="mes_expiracion" from="${01..12}" noSelection="['00':'mm']" class="form-control"/>
	    	
    	</div>
    	<div class="col-sm-4">
    		<g:select name="anio_expiracion" from="${2013..2030}" noSelection="['0000':'aaaa']" class="form-control"/>
    	</div>
     </div>
     <div class="row form-group">
    	<label for="inputEmail3" class="col-sm-5 control-label">Código de seguridad*</label>
    	<div class="col-sm-7">
      		<input type="text" class="form-control" id="codigo_seguridad" name="codigo_seguridad" placeholder="" required="required">
    	</div>
     </div>
     <div class="row form-group">
    	<label class="col-sm-5 control-label" style="color:red;">*campos obligatorios</label>
    	<div class="col-sm-7 text-right">
      		
    	</div>
     </div>
     </div>
     
     <div class='col-md-6'>
     <div class="row form-group">
    	<label for="inputEmail3" class="col-sm-5 control-label">Dirección de facturación*</label>
    	<div class="col-sm-7">
    		<input type="text" class="form-control" id="direccion_facturacion" name="direccion_facturacion" placeholder="" required="required">
    	</div>
     </div>
     <div class="row form-group">
    	<label for="inputEmail3" class="col-sm-5 control-label">Dirección*</label>
    	<div class="col-sm-7">
      		<input type="text" class="form-control" id="direccion" name="direccion" placeholder="" required="required">
    	</div>
     </div>
    <!-- <div class="row form-group">
    	<label for="inputEmail3" class="col-sm-5 control-label"></label>
    	<div class="col-sm-7">
       	</div>
     </div>-->
     <div class="row form-group">
    	<label for="inputEmail3" class="col-sm-5 control-label">Pais*</label>
    	<div class="col-sm-7">
    		<g:select class='form-control' id="id_pais" name="id_pais" from="${compromisomx.Pais.list()}" optionKey="id" optionValue="nombre"/>
      	</div>
     </div>
     <div class="row form-group">
    	<label for="inputEmail3" class="col-sm-5 control-label">Estado*</label>
    	<div class="col-sm-7">
    		<g:select class='form-control' id="id_estado" name="id_estado" from="${compromisomx.Estado.list()}" optionKey="id" optionValue="nombre"/>
    	</div>
     </div>
     <div class="row form-group">
    	<label for="inputEmail3" class="col-sm-5 control-label">Ciudad*</label>
    	<div class="col-sm-7">
    		<g:select class='form-control' id="id_ciudad" name="id_ciudad" from="${compromisomx.Ciudad.list()}" optionKey="id" optionValue="nombre"/>
    	</div>
     </div>
     <div class="row form-group">
    	<label for="inputEmail3" class="col-sm-5 control-label">CP*</label>
    	<div class="col-sm-7">
      		<input type="text" class="form-control" id="codigo_postal" name="codigo_postal" placeholder="" required="required">
    	</div>
     </div>
     <div class="row form-group">
    	<label for="inputEmail3" class="col-sm-5 control-label">Teléfono*</label>
    	<div class="col-sm-7">
      		<input type="text" class="form-control" id="telefono" name="telefono" placeholder="" required="required">
    	</div>
     </div>
     </div>
     
	
	</div>
	<div class="row form-group">
		<div class="col-sm-12 text-center">
      		<button type="submit" class="btn btn-default btn-lg"><i class="glyphicon glyphicon-floppy-disk" style="color:#1abb9c;"></i> Guardar</button>
	   	</div>
    </div>
	
	
</g:form>

<script	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
 <script type="text/javascript">

    //ELIMINAR REGISTRO
	function mostrar_delete_(id){
		$("#id_eliminar").val(id);
		$('#eliminar_r').show();
	}

	function ocultar_delete_(){
		$("#id_eliminar").val("");
		$('#eliminar_r').hide();
		}
 </script>

</body>
</html>