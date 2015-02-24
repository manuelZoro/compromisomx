<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<meta name="layout" content="backoffice"/>
	 <title>Inicio</title>

</head>

<body>

<style>
.btnUbi {
	margin-left: -13px;
	padding: 7px;
}

.modal {
	position: fixed;
	right: o;
	top: 40px;	
}

.modal-dialog {
	width: 600px;
}

.modal-header,.btn-custom {
	background: #428BCA;
	color: white;	
}

.modal-body {
	background: white;
	width: 600px;
	
}

.popover {
	background-color: #e74c3c;
	color: #ecf0f1;	
}

.popover.right .arrow:after {
	border-right-color: #e74c3c;
}

.input-group[class*="col-"] {
	padding-right: 15px;
	padding-left: 15px;
}
</style>
<div
	style="width: 80%; margin-right: 10%; margin-left: 10%; text-align: center;">
	<div class="panel panel-primary">
		<div class="panel-heading">
			<div class="row">
				<div class="col-md-8">
					<h4 align="left">Empresa</h4>
				</div>
				<div class="col-md-4">
					<h4>
						<button href="#myModal" role="button" class="btn btn-custom"
							data-toggle="modal" >Nuevo Registro</button>
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
									<th>CLAVE</th>
									<th>NOMBRE</th>
									<th>Opción</th>
								</tr>
							</thead>
							<tbody>
							<g:each in="${TodasEmpresas}" var="empresa" status="i">
							
													<tr>
									<td>${empresa.id_ciudad}</td>
									<td>${empresa.nombre}</td>
									
									<td>		
											<button href="#myModal3" id="modificar"
											type="button" class="btn btn-default" data-toggle="modal" 
											onclick="EditarEstado('${empresa.id}','${empresa.id_ciudad}','${empresa.nombre}');">
											<span class="glyphicon glyphicon-edit"></span> </button>
									<g:form>
											<g:hiddenField name="id" value="${empresa.id}" />

											<span class="button"><g:actionSubmit class="btn btn-default" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}"/></span>
									</g:form>
									</td>
								</tr>
							
							</g:each>
							</tbody>
							<tfoot>
								<tr>
									<th>CLAVE</th>
									<th>NOMBRE</th>
									<th>Opción</th>
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
<!-- Modal -->
<div id="myModal" class="modal fade" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<g:form class="form-horizontal" controller="Empresa"
		action="Crear">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">Empresa</h4>
				</div>
				<div class="modal-body">
					<ul class="nav nav-pills nav-justified">
						<li class="active"><a href="#tab1" data-toggle="tab">Agregar </a></li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="tab1">
						<br>
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
								<label class='control-label col-md-4' for='last_name'>IDCiudad:</label>
								<div class='col-md-8'>
									<g:textField type='text' class='form-control' id='id_ciudad' name='id_ciudad' placeholder='Nombre' value="" />
								
								</div>
						</div>
						</div>

						</div>
						<div class="form-group">
							<div class="col-md-6">
								<g:actionSubmit value="Crear" class="btn btn-custom pull-right" id="send_btn" />
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</g:form>
</div>

<div id="myModal3" class="modal fade" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<g:form class="form-horizontal" controller="Empresa"
		action="modificar">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">Empresa</h4>
				</div>
				<div class="modal-body">
					<ul class="nav nav-pills nav-justified">
						<li class="active"><a href="#tab1" data-toggle="tab">Modificar</a></li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="tab1">
						<br>
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>Nombre:</label>
								<div class='col-md-8'>
									<g:textField type='text' class='form-control' id='nombre_m' name='nombre' placeholder='Nombre' value="" />									
								</div>
						</div>
						</div>
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>IDCiudad:</label>
								<div class='col-md-8'>
									<g:textField type='text' class='form-control' id='id_ciudad_m' name='id_ciudad' placeholder='Nombre' value="" />
									<input type="hidden"  id="id_m" value="" name="id"/>
								</div>
						</div>
						</div>

						</div>
						<div class="form-group">
							<div class="col-md-6">
								<g:actionSubmit value="modificar" class="btn btn-custom pull-right" id="send_btn"/>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</g:form>
</div>

<g:javascript>
	function EditarEstado(id,idestado,nombre) {						
		document.getElementById("id_m").value = id;
		document.getElementById("nombre_m").value = nombre;
		document.getElementById("id_ciudad_m").value = idestado;		
	}
</g:javascript>
<script src="http://code.jquery.com/jquery-latest.js"></script>


</body>
</html>

