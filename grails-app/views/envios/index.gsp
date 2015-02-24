<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
	<meta name="layout" content="organizacion_layout"/>
	<!--  -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap -->
 
</head>
<body>

<div class="content-section-b">
<div class="container">
<div class="form-group">
	<div class="row">
     <div class="clearfix">
     	<div class="col-lg-7 ">
        	<h3 class="section-heading"><strong>Envio</strong></h3>
        	<h4 class="section-heading">Historial de envíos</h4>
        </div>
     </div>
	</div>
	<div class="row">
		<div class="col-lg-12">
		<g:form controller="Envios" action ="envio_detalles">
			<div class="table-responsive">
				<table class="table table-striped table-bordered">
				<%int forma=0; int origen=0; int estatus=0;%>
	     			<thead style="background-color:#961255; color:#fff;">
		       			<tr>
		       				<th class="text-center">Numero de envío</th>
		       				<th class="text-center">Fecha</th>
				        	<th class="text-center">Forma de pago</th>
				         	<th class="text-center">Canitdad</th>
		       				<th class="text-center">Origen de pago</th>
				        	<th class="text-center">Estatus</th>
				         	<th class="text-center">Factura</th>
				    	</tr>
		     		</thead>
		     		<tbody align="center">
		     			<g:each  in="${vistaEnvios}" var="envios" status="i" >
		     			<tr>
		     				<td><g:formatNumber number="${envios.num_envio}" minIntegerDigits="8" /><g:hiddenField name="numid" value="${envios.num_envio}"/>   <button type="button" class="btn btn-gris btn_accion_encabezado" onclick="window.location.href='/compromisomx/envios/envio_detalles?env=${envios.num_envio}'"><i>Ver detalles</i></button></td>
		     				<td><g:formatDate format="dd/MM/yyyy" date="${envios.fecha}"/></td>
		  					<%forma=envios.forma_pago%>
		  					<%switch(forma){
							case 1:
							 %><td>Tarjeta de Crédito/Débito</td><%
							 break; 
							case 2:
							 %><td>PayPal</td><%
							 break;
							case 3:
							 %><td>Google Wallet</td><%
						     break;
							case 4:
							 %><td>Depósito Bancario</td><%
						     break; 
							} %>
		     				<td><g:formatNumber number="${envios.cantidad}" type="currency" currencyCode="MXN" /></td>
				        	<%origen=envios.origen_pago%>
		  					<%switch(origen){
							case 1:
							 %><td>Registro</td><%
							 break; 
							case 2:
							 %><td>Autopago</td><%
							 break;
							case 3:
							 %><td>Autoconsumo</td><%
						     break;
							case 4:
							 %><td>Tienda Social</td><%
						     break; 
							} %>
				        	<%estatus=envios.estatus%>
		  					<%switch(estatus){
							case 1:
							 %><td>Pendiente</td><%
							 break; 
							case 2:
							 %><td>Procesado</td><%
							 break;
							case 3:
							 %><td>Enviado  <button class="btn btn-gris btn_accion_encabezado" type="button"><i>Ver detalles</i></button></td><%
						     break;
							case 4:
							 %><td>Completado</td><%
						     break;
							case 5:
							 %><td>Cancelado</td><%
							 break;
							case 6:
							 %><td>Devuelto</td><%
							 break;
							} %>
				        	<td><img src="${request.contextPath}/images/iconografia/envios/logo_png.png">   <button class="btn btn-gris btn_accion_encabezado" type="button" ><i>Descargar</i></button></td>
				       	</tr>
				       	</g:each>  
	         		</tbody>
	          	</table>
	      	</div>
	    </g:form>
		</div>
   	</div>
   	<div class="row">
	   	<div class="col-md-5"></div>
	   	<div class="col-md-1"><p class="txt_der">Mostrar: #</p></div>
	   	<div class="col-md-1">
	       	<select class="form-control input-sm texto_campo_principal"  name="" id="">
	               <option value="5">5</option>
	               <option value="10">10</option>
	               <option value="15">15</option>
	               <option value="20">20</option>
	               <option value="25">25</option>
	               <option value="30" selected="selected">30</option>
	               <option value="50">50</option>
	           </select>
	       </div>
	   	<div class="col-md-5"></div>
   	</div>
</div>
</div>
</div>
</body>
</html>