<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Citas</title>
</head>
<body>
	<g:form controller="Agenda" action="cita_guardar"
		style="background-color:#961255">
		<g:hiddenField name="id" id="id" value="0" />
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
					<div class="mensaje_texto1">Movimiento Inventario Modifica Artículo</div>
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
								name="nombre" id="" value=1 readonly>
						</div>
					</div>
				</div>
				<div class="row altura_fila">
					<div class="col-md-7">
						<div class="col-md-6">
							<div class="mensaje_texto2">Artículo:</div>
						</div>
						<div class="col-md-6">
							<select
								class="form-control input-sm texto_campo_principal espaciado_campo_principal"
								name="articulo">
								<option value="0">Seleccione artículo</option>
								<option value="Entradas">Entradas</option>
								<option value="Salidas">Salidas</option>
								<option value="Traspasos: Todos">Traspasos: todos</option>
								<option value="Traspasos: Entradas">Traspasos: entradas</option>
								<option value="Traspasos: Salidas">Traspasos: salidas</option>
							</select>
						</div>
					</div>
					<div class="col-md-4">
						<div class="col-md-6">
							<div class="mensaje_texto2">Existencia:</div>
						</div>
						<div class="col-md-6">
							<input required type="text"
								class="form-control texto_campo_principal"
								placeholder="Existencia" name="nombre" id="" value=1 readonly>
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
								placeholder="Descripción" name="nombre" id="" value=1 readonly>
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
								placeholder="000" name="nombre" id="" value="0" readonly>
						</div>
					</div>
					<div class="col-md-4">
						<div class="col-md-6">
							<div class="mensaje_texto2">Ultimo Costo:</div>
						</div>
						<div class="col-md-6">
							<input required type="text"
								class="form-control texto_campo_principal" placeholder="000"
								name="nombre" id="" value="0" readonly>
						</div>
					</div>
				</div>
				<div><br><br><br><br><br></div>
				<div class="row altura_fila">				
					<div class="col-md-7">
						<div class="col-md-6">
							<div class="mensaje_texto2">Cantidad:</div>
						</div>
						<div class="col-md-6">
							<input type="text" class="form-control texto_campo_principal"
								placeholder="000" name="nombre" id="" value="0">
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
								placeholder="000" name="nombre" id="" value="0">
						</div>
					</div>
					<div class="col-md-4">
						<div class="col-md-6">
							<div class="mensaje_texto2">Importe Partida:</div>
						</div>
						<div class="col-md-6">
							<input required type="text"
								class="form-control texto_campo_principal" placeholder="000"
								name="nombre" id="" value="0" readonly>
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
								placeholder="Observaciones" name="nombre" id="" value="">
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
						data-dismiss="modal">Ayuda</button>
				</div>
				<div class="row">
					<div class="col-md-12">
						<p>&nbsp;</p>
					</div>
				</div>
			</div>
		</div>
	</g:form>
</body>
</html>