<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />

<title>Citas</title>
</head>

<!-- DataTables CSS -->
<link rel="stylesheet" type="text/css" href="${request.contextPath}/css/jquery.dataTables.css">
  
<!-- DataTables -->
<script type="text/javascript" src="${request.contextPath}/js/jquery.dataTables.js"></script>

<body>
	<g:form controller="MovimientoInventario" action="anadirArticulo"
		style="background-color:#961255">
		<g:hiddenField name="desdeNuevo" id="desdeNuevo" value="${desde}" />
		<div>
			<div class="row mensaje_centro">
				<div class="row">
					<div class="col-md-12">
						<p>&nbsp;</p>
					</div>
				</div>
				<div class="col-md-12">
					<p class="txt_cen">
						<img
							src="/compromisomx/images/iconografia/agenda/logo_mensaje.png">
					</p>
				</div>
				<div class="col-md-12">
					<br>
					<div class="mensaje_texto1">Movimiento Inventario Alta
						Artículo</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<p>&nbsp;</p>
					</div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-7">
						<div class="col-md-6">
							<div class="mensaje_texto2">Almacen Inventario:</div>
						</div>
						<div class="col-md-6">
							<input type="text" class="form-control texto_campo_principal"
								placeholder="000" name="nombre" id=""
								value="001 Almacen General" readonly>
						</div>
					</div>
					<div class="col-md-4">
						<div class="col-md-6">
							<div class="mensaje_texto2">Partida:</div>
						</div>
						<div class="col-md-6">
							<input required type="text"
								class="form-control texto_campo_principal" placeholder="000"
								name="partida" id="partida" value="${c}" readonly>
						</div>
					</div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-7">
						<div class="col-md-6">
							<div class="mensaje_texto2">Artículo:</div>
						</div>
						<div class="col-md-6">
							<g:hiddenField name="id" value="" />
							<input required type="text"
									class="form-control texto_campo_principal"
									placeholder="Articulo" name="articulo" id="articulo" value=""
									readonly>
							<button type="button" class="btn btn-gris btn_menu_dialogo"
						onClick="muestra();">+</button>
							<!-- <select
								class="form-control input-sm texto_campo_principal espaciado_campo_principal"
								name="idarticulo">
								<g:each in="${Articulos}" var="articulo" status="i">
									<option value="${articulo.id}" selected>
										${articulo.nombreComercial}
									</option>
								</g:each>
							</select>
							 <g:select optionKey="id" optionValue="" name="articulo"
								id="articulo" from="${Articulos}"></g:select> -->
						</div>
					</div>
					<div class="col-md-4">
						<div class="col-md-6">
							<div class="mensaje_texto2">Existencia:</div>
						</div>
						<div class="col-md-6">
							<input required type="text"
								class="form-control texto_campo_principal"
								placeholder="Existencia" name="existencia" id="" value=10
								readonly>
						</div>
					</div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-12">
						<div class="col-md-4">
							<div class="mensaje_texto2">Descripción:</div>
						</div>
						<div class="col-md-7">
							<input required type="text"
								class="form-control texto_campo_principal"
								placeholder="Descripción" name="descripcion" id="descripcion" value=""
								readonly>
						</div>
					</div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-7">
						<div class="col-md-6">
							<div class="mensaje_texto2">Costo Promedio:</div>
						</div>
						<div class="col-md-6">
							<input type="text" class="form-control texto_campo_principal"
								placeholder="000" name="nombre" id="" value="10.5" readonly>
						</div>
					</div>
					<div class="col-md-4">
						<div class="col-md-6">
							<div class="mensaje_texto2">Ultimo Costo:</div>
						</div>
						<div class="col-md-6">
							<input required type="text"
								class="form-control texto_campo_principal" placeholder="000"
								name="nombre" id="" value="11" readonly>
						</div>
					</div>
				</div>
				<div>
					<br>
					<div class="row altura_fila">
					<section>
						<div id=tablaMuestra
							style="width: 98%; margin-right: 1%; margin-left: 1%; text-align: center; display: none;">
							<div class="panel panel-primary">
							<div class="panel-heading"
						style="background-color: #961255; color: WHITE">
						<div class="row">
							<div class="col-md-8">
								<h4 align="left">SELECCIONE ARTíCULO</h4>
							</div>
						</div>
					</div>
								<div class="row">
									<div class="col-xs-12">
										<div class="box">
											<div class="box-body table-responsive">
												<table id="articulos"
													class="table table-bordered table-striped hovertable"
													style='cursor: pointer'>
													<thead>
														<tr>
															<th>ARTÍCULO</th>
															<th>DESCRIPCIÓN</th>
															<th>EXISTENCIAS</th>
															<th>AÑADIR</th>
															<!--  <th>GENERAR MOVIMIENTO DESTINO</th>
										<th>TRASPASO CONFIRMA RECEPCIÓN</th>
										<th>DIFERENCIA DE PESO EN %</th>
										<th>IMPORTE</th>
										<th>TIPO MOVIMIENTO</th>
										<th>MOVIMIENTO DE SCANNER</th>-->
														</tr>
													</thead>
													<tbody>
														<g:each in="${Articulos}" var="articulo" status="i">
															<tr>
																<td>
																	${articulo.claveArticulo}
																</td>
																<td>
																	${articulo.descripcion}
																</td>
																<td>2${i}
																</td>
																<td>
																	<button id="modificar" type="button"
																		class="btn btn-default" data-toggle="modal"
																		onclick="muestraDatos('${articulo.id}','${articulo.claveArticulo}','${articulo.descripcion}');">
																		<span class="glyphicon glyphicon-edit"></span>
																	</button>
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
						</div>
					</div>
					</section>
				</div>
				<div class="row altura_fila">
					<div class="col-md-7">
						<div class="col-md-6">
							<div class="mensaje_texto2">Cantidad:</div>
						</div>
						<div class="col-md-6">
							<input type="text" class="form-control texto_campo_principal"
								placeholder="0" name="cantidad" id="cantidad" value="0"
								onBlur="calculaImporte(0)"
								onkeypress="return justNumbers(event);">
						</div>
					</div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-7">
						<div class="col-md-6">
							<div class="mensaje_texto2">Precio:</div>
						</div>
						<div class="col-md-6">
							<input type="text" class="form-control texto_campo_principal"
								placeholder="0" name="precio" id="precio" value="0"
								onBlur="calculaImporte(1)"
								onkeypress="return justNumbers(event);">
						</div>
					</div>
					<div class="col-md-4">
						<div class="col-md-6">
							<div class="mensaje_texto2">Importe Partida:</div>
						</div>
						<div class="col-md-6">
							<input required type="text"
								class="form-control texto_campo_principal" placeholder="0"
								name="importe" id="importe" value="0" readonly>
						</div>
					</div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-12">
						<div class="col-md-4">
							<div class="mensaje_texto2">Observaciones:</div>
						</div>
						<div class="col-md-7">
							<input type="text" class="form-control texto_campo_principal"
								placeholder="observaciones" name="observaciones"
								id="observaciones1" value="">
						</div>
					</div>
				</div>
				<div class="col-md-6 txt_der">
					<button type="submit" class="btn btn-gris btn_menu_dialogo">Aceptar</button>
				</div>
				<div class="col-md-6 txt_izq">
					<button type="button" class="btn btn-gris btn_menu_dialogo"
						data-dismiss="modal">Cancelar</button>
				</div>
				<div class="col-md-6 txt_izq">
					<button type="button" class="btn btn-gris btn_menu_dialogo"
						onClick="calculaImporte();">Ayuda</button>
				</div>
				<div class="row">
					<div class="col-md-12">
						<p>&nbsp;</p>
					</div>
				</div>
			</div>
		</div>
	</g:form>
	<script type="text/javascript">
	$(function() {
		$('#articulos').dataTable();					
	});
		function muestra() {
			display = document.getElementById("tablaMuestra").style.display;
			if (display == "none") {
				$("#tablaMuestra").fadeIn();
				display = "block";
			} else {
				$("#tablaMuestra").fadeOut();
				display = "none";
			}
		}

		function muestraDatos(id,clave,descripcion) {
			document.getElementById("id").value=id;
			document.getElementById("articulo").value=clave;
			document.getElementById("descripcion").value=descripcion;
			$("#tablaMuestra").fadeOut();
			display = "none";
		}

		function justNumbers(e) {
			var keynum = window.event ? window.event.keyCode : e.which;
			if ((keynum == 46) || (keynum == 8) || (keynum == 0))
				return true;
			return /\d/.test(String.fromCharCode(keynum));
		}
		function calculaImporte(val) {
			if (val == 1) {
				document.getElementById("importe").value = (document
						.getElementById("cantidad").value * document
						.getElementById("precio").value);
				document.getElementById("observaciones1").focus();
			} else {
				document.getElementById("importe").value = (document
						.getElementById("cantidad").value * document
						.getElementById("precio").value);
			}
		}
	</script>
</body>
</html>