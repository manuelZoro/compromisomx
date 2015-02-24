<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<meta name="layout" content="backoffice"/>
	 <title>Inicio</title>
    <link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/css/bootstrap-combined.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" media="screen"
     href="http://tarruda.github.com/bootstrap-datetimepicker/assets/css/bootstrap-datetimepicker.min.css">
  
</head>

<body>
<div
	style="width: 80%; margin-right: 10%; margin-left: 10%; text-align: center;">
	<div class="panel panel-primary">
		<div class="panel-heading">
			<div class="row">
				<div class="col-md-8">
					<h4 align="left">Noticias</h4>
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
						<table id="area" class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>TITUTLO</th>
									<th>NOTICIA</th>
									<th>PUBLICADA</th>
									<th>VIGENCIA</th>
									<th>Opción</th>
								</tr>
							</thead>
							<tbody>
							<g:each in="${TodasNoticias}" var="noticias" status="i">
							
									<tr>
									<td>${noticias.titulo_noticia}</td>
									<td>${noticias.descripcion}</td>
									<td>${noticias.publicarnoticia}</td>
									<td>${noticias.vigencia}</td>
									
									<td>		
											<button id="modificar"
											type="button" class="btn btn-default" data-toggle="modal" 
									onclick="EditarNoticia('${noticias.id}','${noticias.titulo_noticia}','${noticias.descripcion}','${noticias.publicarnoticia}','${noticias.vigencia}','${noticias.idmodulo}','${noticias.imagen_video}');">
											
											<span class="glyphicon glyphicon-edit"></span> </button>
									<g:form>
											<g:hiddenField name="id" value="${noticias.id}" />

											<span class="button"><g:actionSubmit class="btn btn-default" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}"/></span>
									</g:form>
									</td>
								</tr>
							
							</g:each>
							</tbody>
							<tfoot>
								<tr>
									<th>TITUTLO</th>
									<th>NOTICIA</th>
									<th>PUBLICADA</th>
									<th>VIGENCIA</th>
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
	<g:form class="form-horizontal" controller="Noticias"
		action="Crear">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">NOTICIAS</h4>
				</div>
				<div class="modal-body">
					<div class="tab-content">
						<div class="tab-pane active" id="tab1">
						<br>
					<div class='row'>
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>TITULO</label>
								<div class='col-md-8'>
									<g:textField type='text' class='form-control' id='titulonoticia' name='titulo_noticia' placeholder='Nombre' value="" />
									
								</div>
						</div>
						</div>
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>DESCRIPCION</label>
								<div class='col-md-8'>
									<g:textField type='text' class='form-control' id='descripcion' name='descripcion' placeholder='Ubicacion' value="" />
									
								</div>
						</div>
						</div>
					</div>
					<div class='row'>
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>PUBLICAR</label>
								<div class='col-md-8'>
									<g:textField type='text' class='form-control' id='publicarnoticia' name='publicarnoticia' placeholder='Nombre' value="" />
									
								</div>
						</div>
						</div>
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>MODULO</label>
								<div class='col-md-8'>
									<g:textField type='text' class='form-control' id='id_modulo' name='id_modulo' placeholder='Ubicacion' value="" />
								
								</div>
						</div>
						</div>
					</div>
					<div class='row'>
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>VIGENCIA </label>
								<div class='col-md-8'>
									<input class="datepicker" id="vigencia" name="vigencia" data-date-format="mm/dd/yyyy">
								</div>
								</div>
         	   				</div>
         	   			<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>IMAGEN / VIDEO</label>
								<div class='col-md-8'>
												<g:textField type='text' class='form-control' id='imagen_video' name='imagen_video' placeholder='image_video' value="" />
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
		</div>
	</g:form>
</div>

<div id="myModal2" class="modal fade" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<g:form class="form-horizontal" controller="Noticias"
		action="Modificar">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">NOTICIAS</h4>
				</div>
				<div class="modal-body">
					<div class="tab-content">
						<div class="tab-pane active" id="tab1">
						<br>
						<div class='row'>
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>TITULO</label>
								<div class='col-md-8'>
									<g:textField type='text' class='form-control' id='titulonoticia_m' name='titulo_noticia' placeholder='Nombre' value="" />
									
								</div>
						</div>
						</div>
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>DESCRIPCION</label>
								<div class='col-md-8'>
									<g:textField type='text' class='form-control' id='descripcion_m' name='descripcion' placeholder='Ubicacion' value="" />
									
								</div>
						</div>
						</div>
					</div>
					<div class='row'>
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>PUBLICAR</label>
								<div class='col-md-8'>
									<input type="hidden"  id="id_m" value="" name="id"/>
									  <div class="checkbox">
   									 <label>
    								  <input type="checkbox" id='publicarnoticia_m' name='publicarnoticia' > Publicar
   									 </label>
 									 </div>
								</div>
						</div>
						</div>
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>MODULO</label>
								<div class='col-md-8'>
									<g:textField type='text' class='form-control' id='modulo_m' name='id_modulo' placeholder='Modulo' value="" />
								
								</div>
						</div>
						</div>
					</div>
					 <div class='row'>
						<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>VIGENCIA </label>
								<div class='col-md-8'>
              						<g:datePicker name="vigencia" id="vigencia_m" value=""
      						        noSelection="['':'-Choose-']"/>
								</div>
								</div>
         	   				</div>
         	   			<div class='col-md-6'>
							<div class='form-group'>
								<label class='control-label col-md-4' for='last_name'>IMAGEN / VIDEO</label>
								<div class='col-md-8'>
								<g:textField type='text' class='form-control' id='imagen_video_m' name='imagen_video' placeholder='image_video' value="" />
								</div>
								</div>
         	   				</div>

						</div>
						<div class="form-group">
							<div class="col-md-6">
								<g:actionSubmit value="Modificar" class="btn btn-custom pull-right" id="send_btn" />
							</div>
						</div>
					</div>
				</div>
			</div></div>
		</div>
	</g:form>
</div>

<g:javascript>
	function EditarNoticia(id,titulonoticia,descripcion,publicarnoticia,vigencia,modulo,imagen_video) {
		$('#myModal2').modal('show');
		document.getElementById("id_m").value = id;
		document.getElementById("titulonoticia_m").value = titulonoticia;
		document.getElementById("descripcion_m").value = descripcion;
		document.getElementById("modulo_m").value = modulo;
		document.getElementById("imagen_video_m").value = imagen_video;
		document.getElementById("vigencia_m").value = vigencia;
		document.getElementById("publicarnoticia_m").value = publicarnoticia;

	}
	

</g:javascript>



</body>
</html>
