<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
</head>
<body>

<div class="content-section-b">
<div class="container">
<div class="form-group">
	<div class="row">
     <div class="clearfix">
     	<div class="col-lg-7 ">
        	<h3 class="section-heading"><strong>Reporte Productividad</strong></h3>
        	<h4 class="section-heading">Numeros de emprendores por productividad</h4>
        </div>
     </div>
	</div>
	<div class="row">
		<div class="col-lg-12">
			<div class="table-responsive">
				<table class="table table-striped table-bordered">
	     			<thead style="background-color:#961255; color:#fff;">
		       			<tr>
		       				<th rowspan="2" class="text-center">Nivel</th>
		       				<th colspan="3" class="text-center">Número de emprendedores por productividad</th>
				        	<th rowspan="2" class="text-center">Total Emprendedores</th>
				         	<th rowspan="2" class="text-center">Porcentaje de productividad</th>
				    	</tr>
				    	<tr>
		       				<th class="text-center">Baja</th>
				        	<th class="text-center">Media</th>
				         	<th class="text-center">Alta</th>
				    	</tr>
		     		</thead>
		     		<tbody align="center">
		     			<%float prodf=0; %>
		     			<g:each  in="${vistaproductividad}" var="repprod" status="i" >
		     			<tr>
		     				<td>${repprod.nivel}</td>
		     				<td>${repprod.p_baja}</td>
		     				<td>${repprod.p_media}</td>
		     				<td>${repprod.p_alta}</td>
				        	<td>${repprod.p_baja+repprod.p_media+repprod.p_alta}</td>
				         	<td><g:formatNumber number="${repprod.p_alta/(repprod.p_baja+repprod.p_media+repprod.p_alta)}" type="percent" locale="es_MX"/></td>
				         	<%prodf += repprod.p_alta/(repprod.p_baja+repprod.p_media+repprod.p_alta) %>
				       	</tr>
				       	</g:each>
				       	<tr>
		     				<td>Total</td>
		     				<td>${vistaproductividad.p_baja.sum()}</td>
		     				<td>${vistaproductividad.p_media.sum()}</td>
		     				<td>${vistaproductividad.p_alta.sum()}</td>
				        	<td>${vistaproductividad.p_baja.sum()+vistaproductividad.p_media.sum()+vistaproductividad.p_alta.sum()}</td>
				         	<td><g:formatNumber number="${prodf/vistaproductividad.nivel.size()}" type="percent" locale="es_MX"/></td>
				       	</tr>   
	         		</tbody>
	          	</table>
	      	</div>
		</div>
   	</div>
</div>
</div>
</div>
</body>
</html>