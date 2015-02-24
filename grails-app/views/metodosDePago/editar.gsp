<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<meta name="layout" content="backoffice"/>
	<title>Insert title here</title>
</head>
<body>
<g:form controller="MetodosDePago" action="guardar">
<g:hiddenField name="id" value="${metodo.id}"/>

<div class="row form-group" style="text-align: center;">
	<button type="button" class="btn btn-default" onclick="window.location.href='/compromisomx/metodosDePago/'"><i class="glyphicon glyphicon-credit-card" style="color:#961255;"></i> Metodos de Pago</button>
	<button type="button" class="btn btn-default" onclick="window.location.href='/compromisomx/LugaresDeEnvio/'"><i class="glyphicon glyphicon-plane" style="color:#961255;"></i> Lugares de Envio</button>
	</div>

	<div class="row form-group" >
		<div class="col-md-12" style="border-bottom: 3px #555 solid;">
			<label>Editar Datos Tarjeta</label>
		</div>
	</div>
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
      		<g:select name="tipo_tarjeta" from="${['Tarjeta de Crédito','Tarjeta de Débito']}" keys="${['Tarjeta de Crédito','Tarjeta de Débito']}" class="form-control" value="${metodo.tipo_tarjeta}"/>
      		
    	</div>
     </div>
     <div class="row form-group">
    	<label for="inputEmail3" class="col-sm-5 control-label">Titular Tarjeta*</label>
    	<div class="col-sm-7">
      		<input type="text" class="form-control" id="titular_tarjeta" name="titular_tarjeta" placeholder="" required="required" value="${metodo.titular_tarjeta}">
    	</div>
     </div>
     <div class="row form-group">
    	<label for="inputEmail3" class="col-sm-5 control-label">Numero Tarjeta*</label>
    	<div class="col-sm-7">
      		<input type="text" class="form-control" id="numero_tarjeta" name="numero_tarjeta" placeholder="" required="required" value="${metodo.numero_tarjeta}">
    	</div>
     </div>
     <div class="row form-group">
    	<label for="inputEmail3" class="col-sm-5 control-label">Expiración de la tarjeta*</label>
    	<div class="col-sm-3">
    		<g:select name="mes_expiracion" from="${01..12}" noSelection="['00':'mm']" class="form-control" value="${metodo.mes_expiracion}"/>
	   	</div>
    	<div class="col-sm-4">
    		<g:select name="anio_expiracion" from="${2013..2030}" noSelection="['0000':'aaaa']" class="form-control" value="${metodo.anio_expiracion}"/>
    	</div>
     </div>
     <div class="row form-group">
    	<label for="inputEmail3" class="col-sm-5 control-label">Código de seguridad*</label>
    	<div class="col-sm-7">
      		<input type="text" class="form-control" id="codigo_seguridad" name="codigo_seguridad" placeholder="" required="required" value="${metodo.codigo_seguridad}">
    	</div>
     </div>
     <div class="row form-group">
    	<label class="col-sm-5 control-label" style="color:red;">*campos obligatorios</label>
     </div>
     </div>
     
     <div class='col-md-6'>
     <div class="row form-group">
    	<label for="inputEmail3" class="col-sm-5 control-label">Dirección de facturación*</label>
    	<div class="col-sm-7">
    		<input type="text" class="form-control" id="direccion_facturacion" name="direccion_facturacion" placeholder="" required="required" value="${metodo.direccion_facturacion}">
    	</div>
     </div>
     <div class="row form-group">
    	<label for="inputEmail3" class="col-sm-5 control-label">Dirección*</label>
    	<div class="col-sm-7">
      		<input type="text" class="form-control" id="direccion" name="direccion" placeholder="" required="required" value="${metodo.direccion}">
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
    		<g:select class='form-control' id="id_pais" name="id_pais" from="${compromisomx.Pais.list()}" optionKey="id" optionValue="nombre" value="${metodo.id_pais}"/>
      	</div>
     </div>
     <div class="row form-group">
    	<label for="inputEmail3" class="col-sm-5 control-label">Estado*</label>
    	<div class="col-sm-7">
    		<g:select class='form-control' id="id_estado" name="id_estado" from="${compromisomx.Estado.list()}" optionKey="id" optionValue="nombre" value="${metodo.id_estado}"/>
    	</div>
     </div>
     <div class="row form-group">
    	<label for="inputEmail3" class="col-sm-5 control-label">Ciudad*</label>
    	<div class="col-sm-7">
    		<g:select class='form-control' id="id_ciudad" name="id_ciudad" from="${compromisomx.Ciudad.list()}" optionKey="id" optionValue="nombre" value="${metodo.id_ciudad}"/>
    	</div>
     </div>
     <div class="row form-group">
    	<label for="inputEmail3" class="col-sm-5 control-label">CP*</label>
    	<div class="col-sm-7">
      		<input type="text" class="form-control" id="codigo_postal" name="codigo_postal" placeholder="" required="required" value="${metodo.codigo_postal}">
    	</div>
     </div>
     <div class="row form-group">
    	<label for="inputEmail3" class="col-sm-5 control-label">Teléfono*</label>
    	<div class="col-sm-7">
      		<input type="text" class="form-control" id="telefono" name="telefono" placeholder="" required="required" value="${metodo.codigo_postal}">
    	</div>
     </div>
     </div>
     
	
	</div>
	
	<div class="row form-group">
		<div class="col-sm-12 text-center">
			<button type="submit" class="btn btn-default btn-lg"><i class="glyphicon glyphicon-floppy-disk" style="color:#1abb9c;"></i> Guardar</button>
      		<button type="button" class="btn btn-default btn-lg" onclick="window.location.href='/compromisomx/metodosDePago/'"><i class="glyphicon glyphicon-remove" style="color:#e54b3b"></i> Cancelar</button>
    	</div>
    </div>
	
</g:form>
</body>
</html>