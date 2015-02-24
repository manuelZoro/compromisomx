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

		<div class="row">
			<div class="col-md-8">
				<h4 align="left">Lugares de envío</h4>
			</div>
			<div class="col-md-4">
				
			</div>
		</div>
		<div class="clearfix" ></div>
		<div class="clearfix" ></div>
			
	   <div class="row" style="width:100%;text-align: center;">
			<div class="col-xs-12">
			<g:form class="form-horizontal" controller="LugaresDeEnvio" action="delete">
				<div class="row">				
						<div class='col-md-12'>
						<label class='control-label col-md-7' for='last_name'>Está usted segurlo de eliminar la siguiente dirección de envío ?</label>
						</div>
				</div>
				<div class="clearfix" ></div>
					<g:hiddenField name ="id" value="${Lugar.id}"/>
					<g:hiddenField id="version" name="version" value="1" />
				
					<div class="row">				
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>Nombre(s)*:</label>
								<div class='col-md-8'>
									${Lugar.nombre}		 						
								</div>
							</div>
						</div>
						
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>Código Postal:</label>
								<div class='col-md-8'>
									${Lugar.cp}
								</div>
							</div>
						</div>
					</div>
					
					<div class="row">				
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>Primer apellido*:</label>
								<div class='col-md-8'>
									${Lugar.primerapellido}	 
								</div>
							</div>
						</div>
						
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>Calle*:</label>
								<div class='col-md-8'>
									${Lugar.calle}
								</div>
							</div>
						</div>
					</div>
					
					<div class="row">				
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>Segundo Apellido:</label>
								<div class='col-md-8'>
									${Lugar.segundoapellido}	
								</div>
							</div>
						</div>
						
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>Número ext*:</label>
								<div class='col-md-8'>
									${Lugar.numext}
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
								${Lugar.numint}
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
									${Lugar.cruzes}
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
									${Lugar.referencias}
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
									${Lugar.manzana}
								</div>
							</div>
						</div>
					</div>										
								
			
									
					<div class="form-group">
						<div class="col-md-12">
							<div class="row">
								<div class="col-md-2">
									<button type="submit" class="btn btn-default btn-lg"><i class="glyphicon glyphicon-floppy-disk" style="color:#1abb9c;"></i> Eliminar</button>
								</div>
								<div class="col-md-2">
									<button type="button" class="btn btn-default btn-lg" onclick="window.location.href = '/compromisomx/LugaresDeEnvio/index/';"><i class="glyphicon glyphicon-remove" style="color:#e54b3b"></i> Cancelar</button>
								</div>
							</div>
						</div>
					</div>
			
				</g:form>
		</div>
	</div>
	
	
</div>
</body>
</html>