<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
       <asset:stylesheet src="bootstrap.min.css"/>
       <asset:stylesheet src="font-awesome.min.css"/>
       <asset:stylesheet src="ionicons.min.css"/>
       <asset:stylesheet src="AdminLTE.css"/>
       
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
        <asset:javascript src="bootstrap.min.js"/>
        <asset:javascript src="AdminLTE/app.js"/> 
        <asset:javascript src="AdminLTE/demo.js"/>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
         
       
       
</head>

<body>
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
								<th>Descripcion</th>
									<th>Fecha</th>
									<th>Hora</th>
									<th>Publicar</th>
									<th>Vigencia</th>
									<th>Opcion</th>
								</tr>
							</thead>
							<tbody>
							<g:each in="${TodasAccionesComunitarias}" var="AccionComunitaria" status="i">
							
													<tr>
									<td>${AccionComunitaria.descripcion}</td>
									<td>${AccionComunitaria.fecha}</td>
									<td>${AccionComunitaria.hora}</td>
									<td>${AccionComunitaria.publicaraccion}</td>
									<td>${AccionComunitaria.vigencia}</td>
									<td>
										<!--  -->
										<button id="${empresa.id}"
											type="button" class="btn btn-default" data-toggle="modal" 
											onclick="EditarEstado(this.id);">
											<span class="glyphicon glyphicon-edit"></span>
										</button>

										<button id="${empresa.id}" type="button"
											name="eliminar" class="btn btn-default"
											onclick="EliminarEstado(this.id);">
											<span class="glyphicon glyphicon-trash"></span>
										</button>
									</td>
								</tr>
							
							</g:each>
							</tbody>
							<tfoot>
								<tr>
									<th>Descripcion</th>
									<th>Fecha</th>
									<th>Hora</th>
									<th>Publicar</th>
									<th>Vigencia</th>
									<th>Opcion</th>
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
		action="save">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">Empresa</h4>
				</div>
				<div class="modal-body">
					<ul class="nav nav-pills nav-justified">
						<li class="active"><a href="#tab1" data-toggle="tab">General</a></li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="tab1">
						<div class='col-md-4'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>Nombre:</label>
								<div class='col-md-8'>
									<g:textField type='text' class='form-control' id='nombre' name='nombre' placeholder='Nombre' value="" />
									
								</div>
						</div>
						</div>
						<div class='col-md-4'>
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
								<g:actionSubmit value="create" class="btn btn-custom pull-right" id="send_btn" />
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
	<form class="form-horizontal" name="commentform" method="post"
		action="EstadoAgregarServlet?action=update">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">MODIFICAR ESTADO</h4>
				</div>
				<div class="modal-body">
					<ul class="nav nav-pills nav-justified">
						<li class="active"><a href="#tab2" data-toggle="tab">General</a></li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="tab2">
						</div>
						<div class="form-group">
							<div class="col-md-6">
								<button type="submit" value="Submit"
									class="btn btn-custom pull-right" id="send_btn">Guardar</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</div>
</body>
</html>


<%--<script type="text/javascript">

	function EditarEstado(id) {
		$('#myModal2').modal('show');
        //obtiene los objetos destino 
        var idEstado=id; //.. y se obtiene el valor
        //llama al servlet con el parametro seleccionado
        $("#tab2").load("CargaEstadoServlet", {idEstado:idEstado});
	}
	
	function EliminarEstado(id) {
		if (confirm('¿Está seguro que desea Eliminar el registro?'))
			location.href = "EstadoAgregarServlet?action=delete&idEstado="
					+ id;
		else
			return false;
	}
</script>

<script type="text/javascript">
$(document).ready(function(){
    $("#tab1").load("CargaEstadoServlet");
});
 </script>

<script src="http://code.jquery.com/jquery-latest.js"></script>

--%>