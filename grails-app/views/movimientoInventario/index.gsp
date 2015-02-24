<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta name="layout" content="backoffice" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Inicio</title>
<!-- DataTables CSS -->
<link rel="stylesheet" type="text/css" href="${request.contextPath}/css/jquery.dataTables.css">

<!-- Exportar Excel -->
<script type="text/javascript" src="${request.contextPath}/js/plugins/excellentexport.js"></script>
<script type="text/javascript" src="${request.contextPath}/js/plugins/tableExport.js"></script>
<script type="text/javascript" src="${request.contextPath}/js/plugins/jquery.base64.js"></script>

<!-- Esto para PDF
<script type="text/javascript" src="${request.contextPath}/js/jspdf/libs/sprintf.js"></script>
<script type="text/javascript" src="${request.contextPath}/js/jspdf/jspdf.js"></script>
<script type="text/javascript" src="${request.contextPath}/js/jspdf/libs/base64.js"></script>
-->

<!-- DataTables -->
<script type="text/javascript" src="${request.contextPath}/js/jquery.dataTables.js"></script>
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

.modal-header, .btn-custom {
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
</head>
<body>
	<section>
		<div class=row>
			<div class=col-md-12>
				<div class='col-md-3'>
					<label>Almacén Expedición:</label>
				</div>
				<div class='col-md-3'>
					<label>Almacén Destino:</label>
				</div>
				<div class='col-md-3'>
					<label>Clase de Movimiento:</label>
				</div>
				<div class='col-md-3'>
					<label>Tipo de Movimiento:</label>
				</div>
			</div>
			<div class=col-md-12>
				<div class='col-md-3'>
					<g:textField type='text' class='form-control texto_campo_principal' id='almacene'
						name='almacene' placeholder='Almacén Expedición' value="" />
				</div>
				<div class='col-md-3'>
					<g:textField type='text' class='form-control texto_campo_principal' id='almacene'
						name='almacene' placeholder='Almacén Destino' value="" />
				</div>
				<div class='col-md-3'>
					<select class="form-control texto_campo_principal" name="clasemovimiento">
						<option value="Todas Las Clases de Movimientos">Todas las
							clases de movimientos</option>
						<option value="Entradas">Entradas</option>
						<option value="Salidas">Salidas</option>
						<option value="Traspasos: Todos">Traspasos: todos</option>
						<option value="Traspasos: Entradas">Traspasos: entradas</option>
						<option value="Traspasos: Salidas">Traspasos: salidas</option>
					</select>
				</div>
				<div class='col-md-3'>
					<select class="form-control texto_campo_principal" name="clasemovimiento">
						<option value="Todas Las Clases de Movimientos">Todos los
							tipos de movimientos</option>
						<option value="Entradas">Ajuste positivo</option>
						<option value="Salidas">Salida por traspaso</option>
					</select>
				</div>
			</div>
			<div class=col-md-12>
			<br>
				<div class='col-md-3'>
					<label>Desde:</label>
				</div>
				<div class='col-md-3'>
					<label>Hasta:</label>
				</div>
				<div class='col-md-3'>
					<label>Centro de costo:</label>
				</div>
			</div>
			<div class=col-md-12>
				<div class='col-md-3'>
					<input type="date" class="form-control texto_campo_principal"
						placeholder="" id="desde" name="desde" class="form-control"
						value="${fechaActual}">
				</div>
				<div class='col-md-3'>
					<input type="date" class="form-control texto_campo_principal"
						placeholder="" id="hasta" name="hasta" class="form-control"
						value="${fechaActual}">
				</div>
				<div class='col-md-3'>
					<g:textField type='text' class='form-control texto_campo_principal' id='centroc'
						name='centroc' placeholder='Centro de costo' value="" />
				</div>
			</div>
		</div>
	</section>
	<section>
		<div class=row>
		<br>
		<br>
		<div id="imprime">
			<div
				style="width: 98%; margin-right: 1%; margin-left: 1%; text-align: center;">
				<div class="panel panel-primary">
					<div class="panel-heading" style="background-color: #961255; color:#fff">
						<div class="row">
							<div class="col-md-8">
								<h4 align="left">MOVIMIENTOS DE INVENTARIO</h4>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-12">
							<div class="box">
								<div class="box-body table-responsive">
									<table id="pais" class="table table-bordered hover display" style="cursor: pointer;">
										<thead>
											<tr>
												<th>ALMACÉN</th>
												<th>ALMACÉN QUE RECIBE</th>
												<th>FECHA</th>
												<th>DESCRIPCIÓN</th>
												<th>FOLIO</th>
												<th>TOTAL ARTÍCULOS</th>
												<th>IMPORTE</th>
												<th>OBSERVACIONES</th>
												<th>TIPO MOVIMIENTO</th>
										<!-- <th>GENERAR MOVIMIENTO DESTINO</th>
										<th>TRASPASO CONFIRMA RECEPCIÓN</th>
										<th>DIFERENCIA DE PESO EN %</th>
										 <th>IMPORTE</th>
										<th>TIPO MOVIMIENTO</th>
										<th>MOVIMIENTO DE SCANNER</th>-->
											</tr>
										</thead>
										<tbody>
											<g:each in="${maestro}" var="movimiento" status="i">
												<tr>
													<td><input type="hidden" name="idLocalidad"
														id="${i+1}" value="${movimiento.id}">${movimiento.claveAlmacen}</td>
													<td></td>
													<td>${movimiento.fechaMovimiento==null?"":fecha.format(movimiento.fechaMovimiento)}</td>
													<td></td>
													<td>${movimiento.foliador}</td>
													<td>${movimiento.cantArtic}</td>
													<td>${movimiento.montoDocumento}</td>
													<td>${movimiento.observaciones}</td>
													<td>${movimiento.tipoMovto.descripcion}</td>
													<!--   <td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td> -->
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
			</div>
			</div>
			<!-- Modal -->
			<div id="myModal" class="modal fade" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<g:form class="form-horizontal" controller="Empresa" action="Crear">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title">Empresa</h4>
							</div>
							<div class="modal-body">
								<ul class="nav nav-pills nav-justified">
									<li class="active"><a href="#tab1" data-toggle="tab">Agregar
									</a></li>
								</ul>
								<div class="tab-content">
									<div class="tab-pane active" id="tab1">
										<br>
										<div class='col-md-6'>
											<div class='form-group'>
												<label class='control-label col-md-4' for='last_name'>Nombre:</label>
												<div class='col-md-8'>
													<g:textField type='text' class='form-control' id='nombre'
														name='nombre' placeholder='Nombre' value="" />
												</div>
											</div>
										</div>
										<div class='col-md-6'>
											<div class='form-group'>
												<label class='control-label col-md-4' for='last_name'>IDCiudad:</label>
												<div class='col-md-8'>
													<g:textField type='text' class='form-control'
														id='id_ciudad' name='id_ciudad' placeholder='Nombre'
														value="" />

												</div>
											</div>
										</div>

									</div>
									<div class="form-group">
										<div class="col-md-6">
											<g:actionSubmit value="Crear"
												class="btn btn-custom pull-right" id="send_btn" />
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</g:form>
			</div>
		</div>
	</section>
	<section>
		<div class="col-md-12" align=center>
		<br>
				<div class='col-md-2' align=right>
					<a class="btn btn-gris col-md-12" href="javascript:imprSelec('imprime')">Imprimir</a>
				</div>
				<div class='col-md-6' align=center>
				</div>
				<div class='col-md-1' align=right>
					<button type=button class="btn btn-gris pull-center col-md-12"
				id="consultar" value="" onclick="consultaMovimiento(this.value)" disabled>Consultar</button>
				</div>
				<div class='col-md-1' align=right>
					<a class="btn btn-gris col-md-12"  href="${request.contextPath}/movimientoInventario/crearMovimientoTemp">Añadir</a>
				</div>
				<div class='col-md-1' align=right>
					<button type=button class="btn btn-gris pull-center col-md-12"
				id="editar" value="" onclick="modificaMovimiento(this.value)" disabled>Editar</button>
				</div>
				<div class='col-md-1' align=right>
					<button type=button class="btn btn-gris pull-center col-md-12"
				id="anular" onClick="anular();" disabled>Anular</button>
				</div>
			</div>
		<div class="col-md-12" align=center>
		<br>
				<div class='col-md-2' align=right>
					<a class="btn btn-gris col-md-12" onClick ="$('#pais').tableExport({type:'excel',escape:'false'});">Exportar a excel</a>
					<!-- <g:actionSubmit value="Exportar a excel" class="btn btn-gris col-md-12" id="btnExport" /> -->
				</div>
				<!-- <div class='col-md-2' align=right>
					<a download="somedata.xls" href="#" class="btn btn-gris col-md-12" onclick="return ExcellentExport.excel(this, 'pais', 'Sheet Name Here');">Exportar a excel 2</a>
				</div>
				<div class='col-md-2' align=right>
					<a class="btn btn-gris col-md-12" onClick ="$('#pais').tableExport({type:'excel',escape:'false'});">Exportar a excel</a>
				</div> -->
				<div class='col-md-6' align=center>
				</div>
				<div class='col-md-1' align=right>
					<g:actionSubmit value="Cons. Partidas" class="btn btn-gris col-md-12" id="send_btn" />
				</div>
				<div class='col-md-1' align=right>
				</div>
				<div class='col-md-1' align=right>
					<g:actionSubmit value="Salir" class="btn btn-gris col-md-12" id="send_btn" />
				</div>
				<div class='col-md-1' align=right>
					<g:actionSubmit value="Ayuda" class="btn btn-gris col-md-12" id="send_btn" />
				</div>
			</div>
		<div class="col-md-12" align=center><br></div>	
	</section>
	
	<div class="modal fade" id="myModal_delete">
		<div class="modal-dialog">
			<div class="modal-content">
				<g:form controller="MovimientoInventario" action="anular">
					<div class="modal-body"
						style="text-align: center; background-color: #961255">
						<div class="row">
							<div class="col-md-12">
								<br>
							</div>
						</div>
						<div class="col-md-12">
							<p class="txt_cen">
								<img
									src="/compromisomx/images/iconografia/agenda/logo_mensaje.png">
							</p>
						</div>
						<div class="col-md-12">
							<div class="mensaje_texto1">Desea anular el movimiento?</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<br>
							</div>
						</div>
						<input id="id_eliminar" name="id_eliminar" type="text" value=""
							style="display: none;" />
						<button type="submit" class="btn btn-gris btn_menu_dialogo">Aceptar</button>
						<button type="button" class="btn btn-gris btn_menu_dialogo"
							data-dismiss="modal">Cancelar</button>
					</div>
				</g:form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	function anular(){
  		$('#myModal_delete').modal('show');
  	}
  	function consultaMovimiento(y){
  		location.href="${request.contextPath}/movimientoInventario/consultarMovimientoInventario?idMov="+y;
  	}
  	function modificaMovimiento(y){
  		location.href="${request.contextPath}/movimientoInventario/crearModificaMovimientoTemp?idMod="+y;
  	}
	$(function() {
		$('#pais').dataTable();
	});
	$(document).ready(function() {
	    var table = $('#pais').dataTable();
	    $('#pais tbody').on( 'click', 'tr', function () {
	        if ( $(this).hasClass('selected') ) {
	            $(this).removeClass('selected');
	        }
	        else {
	            table.$('tr.selected').removeClass('selected');
	            $(this).addClass('selected');
	            document.getElementById("consultar").value=document.getElementById($(this).index()+1).value;
	    		document.getElementById("editar").value=document.getElementById($(this).index()+1).value;
	    		document.getElementById("anular").value=document.getElementById($(this).index()+1).value;
	    		document.getElementById("consultar").disabled=false;
	    		document.getElementById("editar").disabled=false;
	    		document.getElementById("anular").disabled=false;
	        }
	    });
	});
	</script>
	<script type="text/javascript">
		function imprSelec(muestra){
			var ficha=document.getElementById(muestra);
			var ventimp=window.open(' ','popimpr');
			ventimp.document.write(ficha.innerHTML);
			ventimp.document.close();
			ventimp.print();
			ventimp.close();
		}
	</script>

</body>
</html>

