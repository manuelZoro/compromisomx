<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="compromisomx.Pais" %>
<%@ page import="compromisomx.Estado" %>
<%@ page import="compromisomx.Ciudad" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="backoffice"/>
<title>Lugares de envío</title>
</head>
<body>
   
<div style="width:100%; margin-right: 10%; margin-left: 0%; text-align: center;">

		<div class="row form-group" style="text-align: center;">
			<button type="button" class="btn btn-default" onclick="window.location.href='/compromisomx/metodosDePago/'"><i class="glyphicon glyphicon-credit-card" style="color:#961255;"></i> Metodos de Pago</button>
			<button type="button" class="btn btn-default" onclick="window.location.href='/compromisomx/LugaresDeEnvio/'"><i class="glyphicon glyphicon-plane" style="color:#961255;"></i> Lugares de Envio</button>
		</div>
		<div class="row form-group" >
		<div class="col-md-12" style="border-bottom: 3px #555 solid;">
			<label>Editar una dirección de envío</label>
		</div>
	</div>
		<div class="clearfix" ></div>
		<div class="clearfix" ></div>
			
	   <div class="row" style="width:100%;text-align: center;">
			<div class="col-xs-12">
			<g:form class="form-horizontal" controller="LugaresDeEnvio" action="save">
				<div class="clearfix" ></div>
					<g:hiddenField name ="id" value="${Lugar.id}"/>
					<g:hiddenField id="version" name="version" value="1" />
				
					<div class="row">				
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>Nombre(s)*:</label>
								<div class='col-md-8'>
									<g:textField type='text' required="required" class='form-control' id='nombre' name='nombre' placeholder='Nombre' value="${Lugar.nombre}" />
								</div>
							</div>
						</div>
						
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>Código Postal:</label>
								<div class='col-md-8'>
									<g:textField type='text' class='form-control' id='cp' name='cp' placeholder='cp' value="${Lugar.cp}" />
								</div>
							</div>
						</div>
					</div>
					
					<div class="row">				
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>Primer apellido*:</label>
								<div class='col-md-8'>
									<g:textField type='text' required="required"  class='form-control' id='primerapellido' name='primerapellido' placeholder='Nombre' value="${Lugar.primerapellido}" />
								</div>
							</div>
						</div>
						
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>Calle*:</label>
								<div class='col-md-8'>
									<g:textField type='text' required="required"  class='form-control' id='calle' name='calle' placeholder='Nombre' value="${Lugar.calle}" />
								</div>
							</div>
						</div>
					</div>
					
					<div class="row">				
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>Segundo Apellido:</label>
								<div class='col-md-8'>
									<g:textField type='text' class='form-control' id='segundoapellido' name='segundoapellido' placeholder='segundoapellido' value="${Lugar.segundoapellido}" />
								</div>
							</div>
						</div>
						
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>Número ext*:</label>
								<div class='col-md-8'>
									<g:textField type='text' required="required"  class='form-control' id='numext' name='numext' placeholder='numext' value="${Lugar.numext}" />
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
									<g:textField type='text' class='form-control' id='numint' name='numint' placeholder='numint' value="${Lugar.numint}" />
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
									<g:textField type='text' class='form-control' id='cruzes' name='cruzes' placeholder='cruzes' value="${Lugar.cruzes}" />
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
									<g:textField type='text' class='form-control' id='referencias' name='referencias' placeholder='referencias' value="${Lugar.referencias}" />
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
									<g:textField type='text' class='form-control' id='manzana' name='manzana' placeholder='manzana' value="${Lugar.manzana}" />
								</div>
							</div>
						</div>
					</div>										
								
			
				<div class="row form-group">
					<div class="col-sm-12 text-center">
					<button type="submit" class="btn btn-default btn-lg"><i class="glyphicon glyphicon-floppy-disk" style="color:#1abb9c;"></i> Guardar</button>
					<button type="button" class="btn btn-default btn-lg" onclick="window.location.href = '/compromisomx/LugaresDeEnvio/index/';"><i class="glyphicon glyphicon-remove" style="color:#e54b3b"></i> Cancelar</button>
					</div>
				</div>
				</g:form>
		</div>
	</div>
	
	
</div>
</body>
</html>