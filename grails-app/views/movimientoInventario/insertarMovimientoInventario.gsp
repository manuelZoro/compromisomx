<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta name="layout" content="backoffice" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Inicio</title>
<!-- DataTables CSS -->
<link rel="stylesheet" type="text/css"
	href="${request.contextPath}/css/jquery.dataTables.css">

<!-- DataTables -->
<script type="text/javascript"
	src="${request.contextPath}/js/jquery.dataTables.js"></script>

<script src="${request.contextPath}/js/bootstrap.min.js"></script>
<link href="${request.contextPath}/css/mensajes.css" rel="stylesheet">
<link href="${request.contextPath}/css/iconFont.css" rel="stylesheet">

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
	<g:form controller="MovimientoInventario" action="crearMovimientoFin">
		<div class=row>
			<br>
			<div class="col-md-12 altura_fila">
				<div class='col-md-5'>
					<div class='col-md-4'>
						<label>Clase de movimiento:</label>
					</div>
					<div class='col-md-8'>
						<select
							class="form-control input-sm texto_campo_principal espaciado_campo_principal"
							name="clasemovimiento" onchange="tipomov(this.value)" required>
							<option value="" selected>Seleccionar Movimiento</option>
							<option value="EN">Entrada</option>
							<option value="SA">Salida</option>
							<option value="TR">Traspaso</option>
						</select>
					</div>
				</div>
				<div class='col-md-2'></div>
				<div class='col-md-5'>
					<div class='col-md-4'>
						<label>No. de Movto:</label>
					</div>
					<div class='col-md-8'>
						<input type='text' class='form-control texto_campo_principal'
							id='almacene' name='almacene' placeholder='Almacén Destino'
							value='${session.idmov}' readOnly />
					</div>
				</div>
			</div>
			<div class="col-md-12 altura_fila">
				<div class='col-md-5'>
					<div class='col-md-4'>
						<label>Tipo de Movimiento:</label>
					</div>
					<div class='col-md-8'>
						<div id=tipoMovimiento>
							<select
								class="form-control input-sm texto_campo_principal espaciado_campo_principal"
								disabled>
								<option>Seleccione Tipo de Movimiento</option>
							</select>
						</div>
					</div>
				</div>
				<div class='col-md-7'></div>
			</div>
			<div class="col-md-12 altura_fila">
				<div class='col-md-5'>
					<div class='col-md-4'>
						<label>Fecha Movimiento:</label>
					</div>
					<div class='col-md-8'>
						<input type="date" class="form-control texto_campo_principal"
							placeholder="" id="fecha" name="fecha" class="form-control"
							value="${fechaActual}" required>
					</div>
				</div>
				<div class='col-md-7'></div>
			</div>
			<div class="col-md-12 altura_fila">
				<div class='col-md-5'>
					<div class='col-md-4'>
						<label>Clave Almacen:</label>
					</div>
					<div class='col-md-8'>
						<input type='text' class='form-control texto_campo_principal'
							id='almacene' name='almacene' placeholder='Almacén Destino'
							value='000' readOnly />
					</div>
				</div>
				<div class='col-md-7'></div>
			</div>
			<div class=col-md-12 id=elementos></div>
			<div class="col-md-12 altura_fila">
				<div class=col-md-2>
					<div class='col-md-10'>
						<label>Observaciones:</label>
					</div>
				</div>
				<div class=col-md-12>
					<input type='text' class='form-control texto_campo_principal'
						id='observaciones' name='observaciones'
						placeholder='Observaciones' />
				</div>
			</div>
		</div>

		<div class="row altura_fila">
			<br> <br>
			<div
				style="width: 98%; margin-right: 1%; margin-left: 1%; text-align: center;">
				<div class="panel panel-primary">
					<div class="panel-heading"
						style="background-color: #961255; color: #fff">
						<div class="row">
							<div class="col-md-8">
								<h4 align="left">ARTÍCULOS</h4>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-12">
							<div class="box">
								<div class="box-body table-responsive">
									<table id="pais"
										class="table table-bordered table-striped hover display"
										style='cursor: pointer'>
										<thead>
											<g:set var="art" value="${0}" />
											<g:set var="kil" value="${0}" />
											<g:set var="pie" value="${0}" />
											<g:set var="tot" value="${0}" />
											<tr>
												<th>#</th>
												<th>ARTÍCULO</th>
												<th>DESCRIPCIÓN</th>
												<th>ALMACÉN AFECTADO</th>
												<th>CANTIDAD</th>
												<th>UNIDAD DE MEDIDA</th>
												<!--  <th>KILOS</th> -->
												<th>PRECIO</th>
												<th>IMPORTE</th>
												<!--  <th>GENERAR MOVIMIENTO DESTINO</th>
										<th>TRASPASO CONFIRMA RECEPCIÓN</th>
										<th>DIFERENCIA DE PESO EN %</th>
										<th>IMPORTE</th>
										<th>TIPO MOVIMIENTO</th>
										<th>MOVIMIENTO DE SCANNER</th>-->
											</tr>
										</thead>
										<tbody>
											<g:each in="${articulos}" var="articulo" status="i">
												<tr>
													<td><input type="hidden" name="idLocalidad"
														id="${i+1}" value="${articulo.id}"> ${i+1}</td>
													<td>
														${articulo.articulo.nombreComercial}
													</td>
													<td>
														${articulo.articulo.descripcion}
													</td>
													<td></td>
													<td>
														${articulo.cantidad}
													</td>
													<td>
														${articulo.articulo.unMedidaBase}
													</td>
													<!--  <td>0</td> -->
													<td>
														${articulo.precio}
													</td>
													<td>
														${articulo.cantidad*articulo.precio} <label
														style="display: none;"> ${ art++} ${ pie+=articulo.cantidad}
															${ tot+=articulo.cantidad*articulo.precio}
													</label>
													</td>
												</tr>
											</g:each>
										</tbody>
										<tr id="0.0">
											<td colspan="2"><label>Artículos</label></td>
											<td><input type="hidden" name="cantidadArticulos"
												value="${art}"> ${art}</td>
											<!--  <td><label>Kilos</label></td>
											<td>
												${kil}
											</td> -->
											<td><label>Piezas</label></td>
											<td>
												${pie}
											</td>
											<td colspan="2"><label>Total Importe</label></td>
											<td><input type="hidden" name="totalImporte"
												value="${tot}"> ${tot}</td>
											</tr2>
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

		<div class="col-md-12 altura_fila" align=center>
			<br>
			<div class='col-md-9' align=center></div>
			<div class='col-md-1' align=right>
				<button type="button" class="btn btn-gris pull-center col-md-12"
					onClick="add();">Añadir</button>
			</div>
			<div class='col-md-1' align=right>
				<button type=button class="btn btn-gris pull-center col-md-12"
					id="modifica" onClick="modificar(this.value)" disabled>Modifica</button>
			</div>
			<div class='col-md-1' align=right>
				<button type=button class="btn btn-gris pull-center col-md-12"
					id="elimina" onClick="eliminar(this.value);" disabled>Elimina</button>
			</div>
		</div>
		<div class="col-md-12 altura_fila" align=center>
			<br>
			<div class='col-md-7' align=center></div>
			<div class='col-md-2' align=center>
				<g:actionSubmit value="Consulta Prorrateo"
					class="btn btn-gris pull-center" id="send_btn" />
			</div>
			<div class='col-md-1' align=right>
				<button type="submit" class="btn btn-gris col-md-12">Aceptar</button>
			</div>
			<div class='col-md-1' align=right>
				<a class="btn btn-gris col-md-12"
					href="${request.contextPath}/movimientoInventario">Cancelar</a>
			</div>
			<div class='col-md-1' align=right>
				<g:actionSubmit value="Ayuda"
					class="btn btn-gris pull-center col-md-12" id="send_btn" />
			</div>
		</div>
		<div class=col-md-12>
			<br>
		</div>
	</g:form>

	<div class="modal fade" id="myModal_delete">
		<div class="modal-dialog">
			<div class="modal-content">
				<g:form controller="MovimientoInventario" action="eliminarArticulo">
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
							<div class="mensaje_texto1">Desea eliminar el artículo de
								este movimiento?</div>
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

	<div class="modal fade" id="myModal_n">
		<div class="modal-dialog">
			<div class="modal-content" id="contenido_modaln">
				<div class="modalDialog_cita"></div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="myModal_m">
		<div class="modal-dialog">
			<div class="modal-content" id="contenido_modalm">
				<div class="modalDialog_cita"></div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	function tipomov(id) {
		       // habilitamos el segundo select
		       var x=id;
		       if(x==""){
		    	   document.getElementById("movi").options.length=0;
			       document.getElementById("movi").disabled=true;
			       document.getElementById("movi").options[0]=new Option("Seleccione Tipo de Movimiento","");
			   }
		       else{
		    	   ${remoteFunction(  
		              	controller:'movimientoInventario',
		              	action:'cargaTipoMovimiento',  
		           		params:'\'claseMovimiento=\' + x',
						update : 'tipoMovimiento'
		           )}
			    }
		}
	function add(){
		$("#contenido_modaln").html("");
        $('#myModal_n').modal('show');
        $.ajax({
            url: '/compromisomx/movimientoInventario/narticulo/0',
            type: "GET",
            dataType: "html",
            success: function (data) {
                $("#contenido_modaln").html(data);
            }
         });
	}
	function modificar(idm){
		$("#contenido_modalm").html("");
        $('#myModal_m').modal('show');
        $.ajax({
            url: '/compromisomx/movimientoInventario/marticulo/'+idm,
            type: "GET",
            dataType: "html",
            success: function (data) {
                $("#contenido_modalm").html(data);
            }
         });
  	}
	function eliminar(idart){
		document.getElementById("id_eliminar").value=idart;
  		$('#myModal_delete').modal('show');
  	}
	</script>

	<script type="text/javascript">
	$(function() {
		$('#pais').dataTable(
		);
	});
	$(document).ready(function() {
	    var table = $('#pais').DataTable();
	    $('#pais tbody').on( 'click', 'tr', function () {
	        if ( $(this).hasClass('selected') ) {
	            $(this).removeClass('selected');
	        }
	        else {
		        if(($(this).closest('tr').attr('id'))==0.0){
				}
		        else{
		        	table.$('tr.selected').removeClass('selected');
		            $(this).addClass('selected');
		            document.getElementById("elimina").value=document.getElementById($(this).index()+1).value;
		    		document.getElementById("modifica").value=document.getElementById($(this).index()+1).value;
		    		document.getElementById("elimina").disabled=false;
		    		document.getElementById("modifica").disabled=false;
				}
	        }
	    } );
	} );
	</script>

	<g:javascript>
	function EditarEstado(id,idestado,nombre) {						
		document.getElementById("id_m").value = id;
		document.getElementById("nombre_m").value = nombre;
		document.getElementById("id_ciudad_m").value = idestado;		
	}	
	</g:javascript>
</body>
</html>