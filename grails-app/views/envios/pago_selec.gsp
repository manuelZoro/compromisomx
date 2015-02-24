<div class="col-md-9" id="seleccionado">
	<div class="row"><div class="col-md-12">&nbsp;</div></div>
	<div class="row" id="seleccionado">
    	<div class="col-md-8">
        	<div class="row">
            	<div class="col-md-3"><strong>Forma de pago</strong></div>
                <div class="col-md-9">Tarjeta de crédito/débito</div>
            </div>
        	<div class="row">
            	<div class="col-md-3"><strong>Tipo</strong></div>
                <%switch(pagos_v.tipo_tarjeta[pago]){
				case 1:
				 %><div class="col-md-9">Master Card</div><%
				 break; 
				case 2:
				 %><div class="col-md-9">Visa</div><%
				 break;
				} %>
            </div>
        	<div class="row">
            	<div class="col-md-3"><strong>Número de la tarjeta</strong></div>
                <div class="col-md-9">**** **** **** <g:formatNumber number="${pagos_v.num_tarjeta[pago]}" maxIntegerDigits="4"/></div>
            </div>
        	<div class="row">
            	<div class="col-md-3"><strong>Fecha de vencimiento</strong></div>
                <div class="col-md-9"><g:formatDate format="MM/yyyy" date="${pagos_v.expiracion[pago]}"/></div>
            </div>
        	<div class="row">
            	<div class="col-md-3"><strong>Titular de la tarjeta</strong></div>
                <div class="col-md-9">${pagos_v.titular[pago]}</div>
            </div>
        	<div class="row">
            	<div class="col-md-3"><strong>Dirección de facturación</strong></div>
                <div class="col-md-9">Calle ${pagos_v.calle[pago]} # ${pagos_v.numero[pago]}<br>Colonia ${pagos_v.colonia[pago]}<br>${pagos_v.ciudad[pago]} ${pagos_v.estado[pago]} , ${pagos_v.pais[pago]}, C.P. ${pagos_v.cp[pago]}</div>
            </div>
        	<div class="row">
            	<div class="col-md-3"><strong>Teléfono</strong></div>
                <div class="col-md-9">${pagos_v.telefono[pago]}</div>
            </div>
        </div>
    	<div class="col-md-4"></div>
    </div>
    <div class="row">
    	<div class="col-md-10"></div>
        <div class="col-md-2"><button type="button" class="btn btn-gris btn_accion_encabezado" onclick="window.location.href='/compromisomx/envios/act_pago?env=${detalles_v.num_envio}&id_=${pagos_v.id[pago]}'">Guardar canbios</button></div>
    </div>
</div>