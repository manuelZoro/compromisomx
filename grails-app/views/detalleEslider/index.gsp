<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<meta name="layout" content="backoffice"/>
	 <title>Inicio</title>

</head>

<body>
<div
	style="width: 80%; margin-right: 10%; margin-left: 10%; text-align: center;">
	<div class="panel panel-primary">
		<div class="panel-heading">
			<div class="row">
				<div class="col-md-8">
					<h4 align="left">Detalle Slider</h4>
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
						<table id="detalleeslider" class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>SLIDER</th>
									<th>TITULO</th>
									<th>DESCRIPCION</th>
									<th>LINK</th>
									<th>Opción</th>
								</tr>
							</thead>
							<tbody>
							<g:each in="${TodasDetalleEslider}" var="detalleeslider" status="i">
									<tr>
									<td>${detalleeslider.ideslider}</td>
									<td>${detalleeslider.titulo}</td>
									<td>${detalleeslider.descripcion}</td>
									<td>${detalleeslider.url}</td>
									<td>		
											<button id="modificar"
											type="button" class="btn btn-default" data-toggle="modal" 
											onclick="EditarDetalleEslider('${detalleeslider.id}','${detalleeslider.ideslider}','${detalleeslider.titulo}','${detalleeslider.descripcion}','${detalleeslider.url}');">
											<span class="glyphicon glyphicon-edit"></span> </button>
									<g:form>
											<g:hiddenField name="id" value="${detalleeslider.id}" />

											<span class="button"><g:actionSubmit class="btn btn-default" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}"/></span>
									</g:form>
									</td>
								</tr>
							
							</g:each>
							</tbody>
							<tfoot>
								<tr>
									<th>SLIDER</th>
									<th>TITULO</th>
									<th>DESCRIPCION</th>
									<th>LINK</th>
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
	<g:form class="form-horizontal" action="crear">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">DETALLE SLIDER</h4>
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
								<label class='control-label col-md-4' for='last_name'>SLIDER:</label>
								<div class='col-md-8'>
									<g:textField type='text' class='form-control' id='ideslider' name='ideslider' placeholder='Slider' value="" />
								</div>
						</div>
						</div>
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>TITUO:</label>
								<div class='col-md-8'>
									<g:textField type='text' class='form-control' id='titulo' name='titulo' placeholder='Titulo' value="" />
								</div>
						</div>
						
						</div>
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>DESCRIPCION:</label>
								<div class='col-md-8'>
									<g:textField type='text' class='form-control' id='descripcion' name='descripcion' placeholder='Descripcion' value="" />
								</div>
						</div>
						</div>
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>URL:</label>
								<div class='col-md-8'>
									<g:textField type='text' class='form-control' id='url' name='url' placeholder='URL' value="" />
								</div>
						</div>
						</div>
						<div class="form-group">
							<div class="col-md-6">
								<g:actionSubmit value="crear" class="btn btn-custom pull-right" id="send_btn" />
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</g:form>
</div>

	<div id="myModal2" class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<g:form class="form-horizontal" controler="DetalleEslider"
			action="modificar">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title">Detalle Slider</h4>
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
										<label class='control-label col-md-4' for='last_name'>SLIDER</label>
										<div class='col-md-8'>
											<g:textField type='text' class='form-control'
												id='ideslider_m' name='ideslider' placeholder='Slider'
												value="" />

										</div>
									</div>
								</div>
								<div class='col-md-6'>
									<div class='form-group'>
										<label class='control-label col-md-4' for='last_name'>TITULO</label>
										<div class='col-md-8'>
											<g:textField type='text' class='form-control' id='titulo_m'
												name='titulo' placeholder='Titulo' value="" />
										</div>
									</div>

								</div>
								<div class='col-md-6'>
									<div class='form-group'>
										<label class='control-label col-md-4' for='last_name'>DESCRIPCION</label>
										<div class='col-md-8'>
											<g:textField type='text' class='form-control'
												id='descripcion_m' name='descripcion'
												placeholder='Descripcion' value="" />
										</div>
									</div>
								</div>
								<div class='col-md-6'>
									<div class='form-group'>
										<label class='control-label col-md-4' for='last_name'>URL</label>
										<div class='col-md-8'>
											<g:textField type='text' class='form-control' id='url_m'
												name='url' placeholder='URL' value="" />
											<input type="hidden" id="id_m" value="" name="id" />
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-6">
										<g:actionSubmit value="modificar"
											class="btn btn-custom pull-right" id="send_btn" />
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
		</g:form>
	</div>


	<g:javascript>
	function EditarDetalleEslider(id,ideslider,titulo,descripcion,url) {
		$('#myModal2').modal('show');
		document.getElementById("id_m").value = id;
		document.getElementById("ideslider_m").value = ideslider;
		document.getElementById("titulo_m").value = titulo;
		document.getElementById("descripcion_m").value = descripcion;
		document.getElementById("url_m").value = url;
	}
</g:javascript>
<script src="http://code.jquery.com/jquery-latest.js"></script>
</body>
</html>
