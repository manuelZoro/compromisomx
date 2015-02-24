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
        	<h3 class="section-heading"><strong>Reporte Emprendedores por rango</strong></h3>
        	<h4 class="section-heading">Emprendedores por rango</h4>
        </div>
     </div>
	</div>
	<div class="row">
		<div class="col-lg-12">
			<div class="table-responsive">
				<table class="table table-striped table-bordered">
	     			<thead style="background-color:#961255; color:#fff;" align="center">
		       			<tr>
		       				<th colspan="2" class="text-center">Rango</th>
		       				<th colspan="2" class="text-center">Mujeres</th>
				         	<th colspan="2" class="text-center">Hombres</th>
				        	<th colspan="2" class="text-center">Total Emprendedores</th>
				         	<th colspan="2" class="text-center">Porcentaje en la organización</th>
				         </tr>
		     		</thead>
		     		<tbody align="center">
		     		<g:each  in="${vistareprango}" var="reprango" status="i" >
		     			<tr>
				        	<td colspan="2">${reprango.rango.nombrerango}</td>
				         	<td colspan="2">${reprango.mujeres}</td>
				         	<td colspan="2">${reprango.hombres}</td>
				         	<td colspan="2">${reprango.mujeres+reprango.hombres}</td>
				         	<td colspan="2"><g:formatNumber number="${(reprango.mujeres+reprango.hombres)/(vistareprango.mujeres.sum()+vistareprango.hombres.sum())}" type="percent" locale="es_MX"/></td>
				       	</tr>
				    </g:each>
				    	<tr>
				        	<td colspan="2">Total</td>
				         	<td colspan="2">${vistareprango.mujeres.sum()}</td>
				         	<td colspan="2">${vistareprango.hombres.sum()}</td>
				         	<td colspan="2">${vistareprango.mujeres.sum()+vistareprango.hombres.sum()}</td>
				         	<td colspan="2">100%</td>
				       	</tr>
	         		</tbody>
	          	</table>
	      	</div>
		</div>
   	</div>
	<div class="row">
    	<div class="clearfix"></div>
        	<div class="col-lg-7 ">
        		<h4 class="section-heading">Emprendedores próximos a cambiar de rango</h4>
        	</div>
	</div>
	<div class="row">
		<div class="col-lg-12">
			<div class="table-responsive">
				<table class="table table-striped table-bordered">
	     			<thead style="background-color:#961255; color:#fff;" align="center">
		       			<tr>
				        	<th class="text-center">Nombre de usuario</th>
				         	<th class="text-center">Rango actual</th>
				         	<th class="text-center">Grupos actuales</th>
				         	<th class="text-center">Próximo Rango</th>
				         	<th class="text-center">Grupos faltantes</th>
				       	</tr>
		     		</thead>
		     		<tbody align="center">
		     			<g:each  in="${vistareprango}" var="reprango" status="i" >
		     			<tr>
		     			<%int rangonext=reprango.rango.id+1; %>
				        	<td>${reprango.cuenta.nombreCompleto}</td>
				         	<td>${reprango.rango.nombrerango}</td>
				         	<td>${reprango.grupos_actuales}</td>
				         	<td>${listadorangos_v.nombrerango[rangonext]}</td>
				         	<td>${150-(reprango.grupos_actuales)}</td>
				       	</tr>
				    </g:each>	
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