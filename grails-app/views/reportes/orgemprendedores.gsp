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
     <div class="clearfix"></div>
	</div>
	<div class="row">
		<div class="col-lg-12">
			<div class="table-responsive">
				<table class="table table-striped table-bordered">
	     			<thead style="background-color:#961255; color:#fff;" align="center">
		       			<tr>
				        	<th colspan="2" class="text-center">Nombre de usuario</th>
				         	<th colspan="2" class="text-center">Rango</th>
				         	<th colspan="2" class="text-center">Tamaño de la organización</th>
				         	<th colspan="2" class="text-center">Mujeres</th>
				         	<th colspan="2" class="text-center">Hombres</th>
				         	<th colspan="2" class="text-center">Activos</th>
				         	<th colspan="2" class="text-center">Inactivos</th>
				         	<th colspan="2" class="text-center">Suspendidos</th>
				       	</tr>
		     		</thead>
		     		<tbody align="center">
		     			<tr>
				        	<td colspan="2">${reportepadre_v.cuenta.nombreCompleto}</td>
				         	<td colspan="2">${reportepadre_v.cuenta.idrango}</td>
				         	<td>${reportepadre_v.tamano_org}</td>
				         	<td>%%</td>
				         	<td>${reportepadre_v.mujeres}</td>
				         	<td>Mujeres</td>
				         	<td>${reportepadre_v.hombres}</td>
				         	<td>Hombres</td>
				         	<td>${reportepadre_v.activos}</td>
				         	<td>Activos</td>
				         	<td>${reportepadre_v.inactivos}</td>
				         	<td>Inactivos</td>
				         	<td>${reportepadre_v.suspendidos}</td>
				         	<td>Suspendidos</td>
				       	</tr>
	         		</tbody>
	          	</table>
	      	</div>
		</div>
   	</div>
	<div class="row">
    	<div class="clearfix"></div>
        	<div class="col-lg-7 ">
        		<h3 class="section-heading">Reporte Emprendedores</h3>
        	</div>
	</div>
	<div class="row">
		<div class="col-lg-12">
			<div class="table-responsive">
				<table class="table table-striped table-bordered">
	     			<thead style="background-color:#961255; color:#fff;" align="center">
		       			<tr>
				        	<th colspan="2" class="text-center">Nombre de usuario</th>
				         	<th colspan="2" class="text-center">Rango</th>
				         	<th colspan="2" class="text-center">Tamaño de la organización</th>
				         	<th colspan="2" class="text-center">Mujeres</th>
				         	<th colspan="2" class="text-center">Hombres</th>
				         	<th colspan="2" class="text-center">Activos</th>
				         	<th colspan="2" class="text-center">Inactivos</th>
				         	<th colspan="2" class="text-center">Suspendidos</th>
				       	</tr>
		     		</thead>
		     		<tbody align="center">
		     			<g:each  in="${reportehijos_v}" var="rephijos" status="i" >
		     			<tr>
				        	<td colspan="2">${rephijos.cuenta.nombreCompleto}</td>
				         	<td colspan="2">${rephijos.cuenta.idrango}</td>
				         	<td>${rephijos.tamano_org}</td>
				         	<td>%%</td>
				         	<td>${rephijos.mujeres}</td>
				         	<td>Mujeres</td>
				         	<td>${rephijos.hombres}</td>
				         	<td>Hombres</td>
				         	<td>${rephijos.activos}</td>
				         	<td>Activos</td>
				         	<td>${rephijos.inactivos}</td>
				         	<td>Inactivos</td>
				         	<td>${rephijos.suspendidos}</td>
				         	<td>Suspendidos</td>
				       	</tr> 
				       	</g:each>	
				       	<tr>
				        	<td colspan="2">Total</td>
				         	<td colspan="2"> - </td>
				         	<td>${reportehijos_v.tamano_org.sum()}</td>
				         	<td>100%</td>
				         	<td>${reportehijos_v.mujeres.sum()}</td>
				         	<td>100%</td>
				         	<td>${reportehijos_v.hombres.sum()}</td>
				         	<td>100%</td>
				         	<td>${reportehijos_v.activos.sum()}</td>
				         	<td>100%</td>
				         	<td>${reportehijos_v.inactivos.sum()}</td>
				         	<td>100%</td>
				         	<td>${reportehijos_v.suspendidos.sum()}</td>
				         	<td>100%</td>
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