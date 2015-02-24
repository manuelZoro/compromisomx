<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<meta name="layout" content="backoffice"/>
	<title>Inicio</title>
</head>
<body>
<div style="width: 90%; margin-right: 5%; margin-left: 5%; text-align: center;">
	<div class="panel panel-primary">
		<div class="panel-heading">
			<div class="row">
				<div class="col-md-8">
					<h4 align="left">Modulos</h4>
				</div>
				<div class="col-md-4">
					<h4>
						<button href="#AgregarComponentes" role="button" class="btn btn-custom" data-toggle="modal" >Nuevo Registro</button>
					</h4>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12">
				<div class="box">
					<div class="box-body table-responsive">
						<table id="pais" class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>EMPRESA</th>
									<th>ORGANIZACIÓN</th>
									<th>MODULO</th>
									<th>URL</th>
									<th>ORGANIZACIÓN</th>
									<th>OPCIÓN</th>
								</tr>
							</thead>
							<tbody>
								<g:each in="${TodosLosModulos}" var="modulos" status="i">
									<tr>
										<td>${modulos.idempresa}</td>
										<td>${modulos.idorganizacion}</td>
										<td>${modulos.nombremodulo}</td>
										<td>${modulos.url}</td>
										<td>${modulos.organizacion}</td>
										<td>
											<button id="modificar" type="button" class="btn btn-default" data-toggle="modal" onclick="EditarModulos('${modulos.id}','${modulos.idempresa}','${modulos.idorganizacion}','${modulos.nombremodulo}','${modulos.url}','${modulos.organizacion}');">
												<span class="glyphicon glyphicon-edit"></span> 
											</button>
											<g:form>
												<g:hiddenField name="id" value="${modulos.id}" />
													<span class="button">
													<g:actionSubmit class="btn btn-default" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}"/>
													</span>
											</g:form>
										</td>
									</tr>
								</g:each>
							</tbody>
							<tfoot>
								<tr>
									<th>EMPRESA</th>
									<th>ORGANIZACIÓN</th>
									<th>MODULO</th>
									<th>URL</th>
									<th>ORGANIZACIÓN</th>
									<th>OPCIÓN</th>
								</tr>
							</tfoot>
						</table>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->
			</div>
		</div>
	</div>
</div>
<!-- Modal para Guardar Componente -->

<div id="AgregarComponentes" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<g:form class="form-horizontal" controller="Componentes" action="Crear">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">Componentes</h4>
				</div>
				<div class="modal-body">
					<div class='col-md-6'>
						<div class='form-group'>
							<label class='control-label col-md-4' for='last_name'>Nombre:</label>
							<div class='col-md-8'>
								<g:textField type='text' class='form-control' id='nombre' name='nombre' placeholder='Nombre' value="" />
							</div>
						</div>
					</div>
					<div class='col-md-6'>
						<div class='form-group'>
							<label class='control-label col-md-4' for='last_name'>Descripción:</label>
							<div class='col-md-8'>
								<g:textField type='text' class='form-control' id='descripcion' name='descripcion' placeholder='Descripción' value="" />
							</div>
						</div>
					</div>
					<div class='col-md-6'>
						<div class='form-group'>
							<label class='control-label col-md-4' for='last_name'>Ubicación Activo:</label>
							<div class='col-md-8'>
								<g:textField type='text' class='form-control' id='ubicacion_activo' name='ubicacion_activo' placeholder='Ubicación Activo' value="" />
							</div>
						</div>
					</div>
					<div class='col-md-6'>
						<div class='form-group'>
							<label class='control-label col-md-4' for='last_name'>Ubicación Inactivo:</label>
							<div class='col-md-8'>
								<g:textField type='text' class='form-control' id='ubicacion_inactivo' name='ubicacion_inactivo' placeholder='Ubicación Inactivo' value="" />
							</div>
						</div>
					</div>
					<div class='col-md-6'>
						<div class='form-group'>
							<label class='control-label col-md-4' for='last_name'>Ubicación Seleccionado:</label>
							<div class='col-md-8'>
								<g:textField type='text' class='form-control' id='ubicacion_seleccionado' name='ubicacion_seleccionado' placeholder='Ubicación Seleccionado' value="" />
							</div>
						</div>
					</div>
					<div class='col-md-6'>
						<div class='form-group'>
							<label class='control-label col-md-4' for='last_name'>Tipo Elemento:</label>
							<div class='col-md-8'>
								<g:textField type='text' class='form-control' id='id_tipo_elemento' name='id_tipo_elemento' placeholder='Tipo Elemento' value="" />
							</div>
						</div>
					</div>
					<div class='col-md-6'>
						<div class='form-group'>
							<label class='control-label col-md-4' for='last_name'>Área:</label>
							<div class='col-md-8'>
								<g:textField type='text' class='form-control' id='id_area' name='id_area' placeholder='Área' value="" />
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-8">
							<g:actionSubmit value="Crear" class="btn btn-custom pull-right" id="send_btn" />
						</div>
					</div>
				</div>
			</div>
		</div>
	</g:form>
</div>

<!-- Modal para Editar Componente -->

<div id="EditarComponente" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<g:form class="form-horizontal" controller="Componentes" action="modificar">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">Editar Componentes</h4>
				</div>
				<div class="modal-body">
					<div class='col-md-6'>
						<div class='form-group'>
							<label class='control-label col-md-4' for='last_name'>Nombre:</label>
							<div class='col-md-8'>
								<g:textField type='text' class='form-control' id='nombrem' name='nombre' placeholder='Nombre' value="" />
							</div>
						</div>
					</div>
					<div class='col-md-6'>
						<div class='form-group'>
							<label class='control-label col-md-4' for='last_name'>Descripción:</label>
							<div class='col-md-8'>
								<g:textField type='text' class='form-control' id='descripcionm' name='descripcion' placeholder='Descripción' value="" />
							</div>
						</div>
					</div>
					<div class='col-md-6'>
						<div class='form-group'>
							<label class='control-label col-md-4' for='last_name'>Ubicación Activo:</label>
							<div class='col-md-8'>
								<g:textField type='text' class='form-control' id='ubicacion_activom' name='ubicacion_activo' placeholder='Ubicación Activo' value="" />
							</div>
						</div>
					</div>
					<div class='col-md-6'>
						<div class='form-group'>
							<label class='control-label col-md-4' for='last_name'>Ubicación Inactivo:</label>
							<div class='col-md-8'>
								<g:textField type='text' class='form-control' id='ubicacion_inactivom' name='ubicacion_inactivo' placeholder='Ubicación Inactivo' value="" />
							</div>
						</div>
					</div>
					<div class='col-md-6'>
						<div class='form-group'>
							<label class='control-label col-md-4' for='last_name'>Ubicación Seleccionado:</label>
							<div class='col-md-8'>
								<g:textField type='text' class='form-control' id='ubicacion_seleccionadom' name='ubicacion_seleccionado' placeholder='Ubicación Seleccionado' value="" />
							</div>
						</div>
					</div>
					<div class='col-md-6'>
						<div class='form-group'>
							<label class='control-label col-md-4' for='last_name'>Tipo Elemento:</label>
							<div class='col-md-8'>
								<g:textField type='text' class='form-control' id='id_tipo_elementom' name='id_tipo_elemento' placeholder='Tipo Elemento' value="" />
							</div>
						</div>
					</div>
					<div class='col-md-6'>
						<div class='form-group'>
							<label class='control-label col-md-4' for='last_name'>Área:</label>
							<div class='col-md-8'>
								<g:textField type='text' class='form-control' id='id_aream' name='id_area' placeholder='Área' value="" />
								<input type="hidden"  id="id_componentesm" value="" name="id"/>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-8">
							<g:actionSubmit value="modificar" class="btn btn-custom pull-right" id="send_btn" />
						</div>
					</div>
				</div>
			</div>
		</div>
	</g:form>
</div>


<g:javascript>
	function EditarModulos(id, nombre, descripcion, ubicacionactivo, ubicacioninactivo, ubicacionseleccionado, tipoelemento, area){
		<!--$('#EditarComponente').modal('show');
		document.getElementById("id_componentesm").value = id;
		document.getElementById("nombrem").value = nombre;
		document.getElementById("descripcionm").value = descripcion;
		document.getElementById("ubicacion_activom").value = ubicacionactivo;
		document.getElementById("ubicacion_inactivom").value = ubicacioninactivo;
		document.getElementById("ubicacion_seleccionadom").value = ubicacionseleccionado;
		document.getElementById("id_tipo_elementom").value = tipoelemento;
		document.getElementById("id_aream").value = area;-->
	}
</g:javascript>
<script src="http://code.jquery.com/jquery-latest.js"></script>
</body>
</html>

