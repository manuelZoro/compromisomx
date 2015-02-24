<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="compromisomx.Pais" %>
<%@ page import="compromisomx.Estado" %>
<%@ page import="compromisomx.Ciudad" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="cuenta_layout"/>
<title>Lugares de envío</title>
</head>
<body>
   
<div style="width:100%; margin-right: 10%; margin-left: 0%; text-align: center;">

		<div class="row form-group" style="text-align: center;">
			<button type="button" class="btn btn-default" onclick="window.location.href='/compromisomx/metodosDePago/'"><i class="glyphicon glyphicon-credit-card" style="color:#961255;"></i> Metodos de Pago</button>
			<button type="button" class="btn btn-default" onclick="window.location.href='/compromisomx/LugaresDeEnvio/'"><i class="glyphicon glyphicon-plane" style="color:#961255;"></i> Lugares de Envio</button>
		</div>
		<div class="row">
			<div class="col-md-8">
				<h4 align="left">Lugares de envío</h4>
			</div>
			<div class="col-md-4">
				
			</div>
		</div>
		<div class="clearfix" ></div>
		<div class="clearfix" ></div>
		
		<div class="row">
			<div class="col-xs-12">
				<div class="box">
					<div class="box-body table-responsive">
						<table id="area" class="table table-bordered table-striped">
							<thead style="background-color: #961255; color:#fff">
								<tr>
									<th>Nombre</th>
									<th>Estado</th>
									<th>Ciudad</th>
									<th>Código Postal</th>
									<th>Colonia</th>
									<th>Calle</th>
									<th>Manzana</th>
									<th>Número</th>
									<th>Opciones</th>
								</tr>
							</thead>
							<tbody>
							<g:each in="${TodosLugares}" var="modelo" status="i">
							<tr>
									<td>${modelo.nombre}</td>
									<td>${Estado.get(modelo.idestado).nombre}</td>
									<td>${Ciudad.get(modelo.idciudad).nombre}</td>
									<td>${modelo.cp}</td>
									<td>Colonia</td>
									<td>${modelo.calle}</td>
									<td>${modelo.numext}</td>	
									<td>${modelo.nombre}</td>																	
									<td>		
											<button id="modificar"
											type="button" class="btn btn-default" data-toggle="modal" 
											onclick="location.href='/compromisomx/lugaresDeEnvio/getEdit/${modelo.id}'">
											<!-- <span class="glyphicon glyphicon-edit"></span>  --> Editar</button>
											<button id="eliminar"
											type="button" class="btn btn-default" data-toggle="modal" 
											onclick="location.href='/compromisomx/lugaresDeEnvio/getDelete/${modelo.id}'">
											<!-- <span class="glyphicon glyphicon-edit"></span>  --> Eliminar</button>
									</td>
								</tr>
							
							</g:each>
							</tbody>
						</table>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->
			</div>
		</div>
		
	</div>
	<div class="row form-group" >
		<div class="col-md-12" style="border-bottom: 3px #555 solid;">
			<label>Agregar una nueva dirección de envío</label>
		</div>
	</div>
	
	<div class="row" style="width:100%;text-align: center;">
			<div class="col-xs-12">
				<g:form class="form-horizontal" controller="LugaresDeEnvio" action="Crear">
			
				<div class="clearfix" ></div>
					<g:hiddenField id="version" name="version" value="1" />
				
					<div class="row">				
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>Nombre(s)*:</label>
								<div class='col-md-8'>
									<g:textField type='text' required="required" class='form-control' id='nombre' name='nombre' placeholder='Nombre' value="" />
								</div>
							</div>
						</div>
						
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>Código Postal:</label>
								<div class='col-md-8'>
									<g:textField type='text' class='form-control' id='cp' name='cp' placeholder='Nombre' value="" />
								</div>
							</div>
						</div>
					</div>
					
					<div class="row">				
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>Primer apellido*:</label>
								<div class='col-md-8'>
									<g:textField type='text' required="required"  class='form-control' id='primerapellido' name='primerapellido' placeholder='Nombre' value="" />
								</div>
							</div>
						</div>
						
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>Calle*:</label>
								<div class='col-md-8'>
									<g:textField type='text' required="required"  class='form-control' id='calle' name='calle' placeholder='Nombre' value="" />
								</div>
							</div>
						</div>
					</div>
					
					<div class="row">				
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>Seundo Apellido:</label>
								<div class='col-md-8'>
									<g:textField type='text' class='form-control' id='segundoapellido' name='segundoapellido' placeholder='Nombre' value="" />
								</div>
							</div>
						</div>
						
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>Número ext*:</label>
								<div class='col-md-8'>
									<g:textField type='text' required="required"  class='form-control' id='numext' name='numext' placeholder='Nombre' value="" />
								</div>
							</div>
						</div>
					</div>
					
					<div class="row">				
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>País*:</label>
								<div class='col-md-8'>
									<g:select class='form-control' required="required"  id="idpais" name="idpais" from="${compromisomx.Pais.list()}" optionKey="id" optionValue="nombre"/>
								</div>
							</div>
						</div>
						
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>Número int:</label>
								<div class='col-md-8'>
									<g:textField type='text' class='form-control' id='numint' name='numint' placeholder='Nombre' value="" />
								</div>
							</div>
						</div>
					</div>
					
					<div class="row">				
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>Estado*:</label>
								<div class='col-md-8'>
									<g:select class='form-control' required="required"  id="idestado" name="idestado" from="${compromisomx.Estado.list()}" optionKey="id" optionValue="nombre"/>
								</div>
							</div>
						</div>
						
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>Cruzamientos:</label>
								<div class='col-md-8'>
									<g:textField type='text' class='form-control' id='cruzes' name='cruzes' placeholder='Nombre' value="" />
								</div>
							</div>
						</div>
					</div>
					
					<div class="row">				
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>Ciudad*:</label>
								<div class='col-md-8'>
									<g:select class='form-control' required="required"  id="idciudad" name="idciudad" from="${compromisomx.Ciudad.list()}" optionKey="id" optionValue="nombre"/>
								</div>
							</div>
						</div>
						
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>Referencias:</label>
								<div class='col-md-8'>
									<g:textField type='text' class='form-control' id='referencias' name='referencias' placeholder='Nombre' value="" />
								</div>
							</div>
						</div>
					</div>

					<div class="row">				
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>Colonia*:</label>
								<div class='col-md-8'>
									<g:select class='form-control' required="required"  id='idcolonia' name="idcolonia" from="${compromisomx.Colonia.list()}" optionKey="id" optionValue="nombre"/>

								</div>
							</div>

						</div>
						
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>Manzana:</label>
								<div class='col-md-8'>
									<g:textField type='text' class='form-control' id='manzana' name='manzana' placeholder='Nombre' value="" />
								</div>
							</div>
						</div>
					</div>										
								
			
					<div class="row form-group">
						<div class="col-sm-12 text-center">
						<button type="submit" class="btn btn-default btn-lg"><i class="glyphicon glyphicon-floppy-disk" style="color:#1abb9c;"></i> Guardar</button>
						<button type="reset" class="btn btn-default btn-lg" ><i class="glyphicon glyphicon-remove" style="color:#e54b3b"></i> Limpiar</button>
						</div>
					</div>				
			
				</g:form>
		</div>
	</div>
	
	
</div>
</body>
</html>