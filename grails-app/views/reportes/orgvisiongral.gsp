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
        <div class="col-lg-7 ">
         <h3 class="section-heading"><strong>Reporte visión General</strong></h3>
         <h4 class="section-heading">Reporte General</h4>
        </div>
	</div>
	<div class="row">
		<div class="col-lg-12">
			<div class="table-responsive">
				<table class="table table-striped table-bordered">
	     			<thead style="background-color:#961255; color:#fff;" align="center">
		       			<tr>
				        	<th colspan="2" class="text-center">Nivel</th>
				         	<th colspan="2" class="text-center">ES por Nivel</th>
				         	<th colspan="2" class="text-center">Mujeres</th>
				         	<th colspan="2" class="text-center">Hombres</th>
				         	<th colspan="2" class="text-center">Activos</th>
				         	<th colspan="2" class="text-center">Inactivos</th>
				         	<th colspan="2" class="text-center">Suspendidos</th>
				         	<th colspan="2" class="text-center">Regalia mensual acumulada al día</th>
				       	</tr>
		     		</thead>
		     		<tbody align="center">
		     		<%def sub_es = 0; sub_mujeres=0; sub_hombres=0; sub_activos=0; sub_inactivos=0; sub_suspendidos=0; sub_regalia=0; %>
		    
		     		<g:each in="${vistarepVisGral}" var="repvisgral" status="i">
		     		<%if(repvisgral.nivel<7) {%>
	          			<tr>
	          	  			<td colspan="2">${repvisgral.nivel}</td>
				          	<td>${repvisgral.es_pornivel}</td>
							<%sub_es+=repvisgral.es_pornivel;%>
				          	<td><g:formatNumber number="${repvisgral.es_pornivel/(vistarepVisGral.es_pornivel[0..-2].sum())}" type="percent" locale="es_MX"/></td>
				          	<td>${repvisgral.mujeres}</td>
							<%sub_mujeres+=repvisgral.mujeres;%>
				          	<td><g:formatNumber number="${repvisgral.mujeres/(vistarepVisGral.es_pornivel[0..-2].sum())}" type="percent" locale="es_MX"/></td>
				          	<td>${repvisgral.hombres}</td>
							<%sub_hombres+=repvisgral.hombres;%>
				          	<td><g:formatNumber number="${repvisgral.hombres/(vistarepVisGral.es_pornivel[0..-2].sum())}" type="percent" locale="es_MX"/></td>
				          	<td>${repvisgral.activos}</td>
							<%sub_activos+=repvisgral.activos;%>
				          	<td><g:formatNumber number="${repvisgral.activos/(vistarepVisGral.es_pornivel[0..-2].sum())}" type="percent" locale="es_MX"/></td>
				            <td>${repvisgral.inactivos}</td>
							<%sub_inactivos+=repvisgral.inactivos;%>
				          	<td><g:formatNumber number="${repvisgral.inactivos/(vistarepVisGral.es_pornivel[0..-2].sum())}" type="percent" locale="es_MX"/></td>
				          	<td>${repvisgral.suspendidos}</td>
							<%sub_suspendidos+=repvisgral.suspendidos;%>
				          	<td><g:formatNumber number="${repvisgral.suspendidos/(vistarepVisGral.es_pornivel[0..-2].sum())}" type="percent" locale="es_MX"/></td>
				          	<td><g:formatNumber number="${repvisgral.regalia_mensual_aldia}" type="currency" currencyCode="MXN" /></td>
							<%sub_regalia+=repvisgral.regalia_mensual_aldia;%>
				          	<td><g:formatNumber number="${repvisgral.regalia_mensual_aldia/(vistarepVisGral.regalia_mensual_aldia[0..-2].sum())}" type="percent" locale="es_MX"/></td>
						</tr>
						<% }else{%>
						<tr>
	          	  			<td colspan="2">Total ES</td>
				          	<td>${sub_es}</td>
				          	<td>100%</td>
				          	<td>${sub_mujeres}</td>
				          	<td><g:formatNumber number="${sub_mujeres/sub_es}" type="percent" locale="es_MX"/></td>
				          	<td>${sub_hombres}</td>
				          	<td><g:formatNumber number="${sub_hombres/sub_es}" type="percent" locale="es_MX"/></td>
				          	<td>${sub_activos}</td>
				          	<td><g:formatNumber number="${sub_activos/sub_es}" type="percent" locale="es_MX"/></td>
				          	<td>${sub_inactivos}</td>
				          	<td><g:formatNumber number="${sub_inactivos/sub_es}" type="percent" locale="es_MX"/></td>
				          	<td>${sub_suspendidos}</td>
				          	<td><g:formatNumber number="${sub_suspendidos/sub_es}" type="percent" locale="es_MX"/></td>
				          	<td><g:formatNumber number="${sub_regalia}" type="currency" currencyCode="MXN" /></td>
				          	<td>100%</td>	
						</tr>	
						<tr>
	          	  			<td colspan="2">CS</td>
				          	<td colspan="2">N/A</td>
				          	<td>${repvisgral.mujeres}</td>
				          	<td><g:formatNumber number="${repvisgral.mujeres/(repvisgral.mujeres+repvisgral.hombres)}" type="percent" locale="es_MX"/></td>
				          	<td>${repvisgral.hombres}</td>
				          	<td><g:formatNumber number="${repvisgral.hombres/(repvisgral.mujeres+repvisgral.hombres)}" type="percent" locale="es_MX"/></td>
				          	<td>${repvisgral.activos}</td>
				          	<td><g:formatNumber number="${repvisgral.activos/(repvisgral.mujeres+repvisgral.hombres)}" type="percent" locale="es_MX"/></td>
				            <td>${repvisgral.inactivos}</td>
				          	<td><g:formatNumber number="${repvisgral.inactivos/(repvisgral.mujeres+repvisgral.hombres)}" type="percent" locale="es_MX"/></td>
				          	<td>${repvisgral.suspendidos}</td>
				          	<td><g:formatNumber number="${repvisgral.suspendidos/(repvisgral.mujeres+repvisgral.hombres)}" type="percent" locale="es_MX"/></td>
				          	<td><g:formatNumber number="${repvisgral.regalia_mensual_aldia}" type="currency"/></td>
				          	<td>100%</td>
						</tr>
						<tr>
	          	  			<td colspan="2"><strong>Total</strong></td>
				          	<td>${vistarepVisGral.es_pornivel.sum()}</td>
				          	<td>100%</td>
				          	<td>${vistarepVisGral.mujeres.sum()}</td>
				          	<td><g:formatNumber number="${vistarepVisGral.mujeres.sum()/(vistarepVisGral.mujeres.sum()+vistarepVisGral.hombres.sum())}" type="percent" locale="es_MX"/></td>
				          	<td>${vistarepVisGral.hombres.sum()}</td>
				          	<td><g:formatNumber number="${vistarepVisGral.hombres.sum()/(vistarepVisGral.mujeres.sum()+vistarepVisGral.hombres.sum())}" type="percent" locale="es_MX"/></td>
				          	<td>${vistarepVisGral.activos.sum()}</td>
				          	<td><g:formatNumber number="${vistarepVisGral.activos.sum()/(vistarepVisGral.mujeres.sum()+vistarepVisGral.hombres.sum())}" type="percent" locale="es_MX"/></td>
				          	<td>${vistarepVisGral.inactivos.sum()}</td>
				          	<td><g:formatNumber number="${vistarepVisGral.inactivos.sum()/(vistarepVisGral.mujeres.sum()+vistarepVisGral.hombres.sum())}" type="percent" locale="es_MX"/></td>
				          	<td>${vistarepVisGral.suspendidos.sum()}</td>
				          	<td><g:formatNumber number="${vistarepVisGral.suspendidos.sum()/(vistarepVisGral.mujeres.sum()+vistarepVisGral.hombres.sum())}" type="percent" locale="es_MX"/></td>
				          	<td><g:formatNumber number="${vistarepVisGral.regalia_mensual_aldia.sum()}" type="currency"/></td>
				          	<td>100%</td>	
						</tr>
						<% } %>
						</g:each>
	         		</tbody>
	          	</table>
	      	</div>
		</div>
   	</div>
	<div class="row">
    	<div class="clearfix"></div>
        	<div class="col-lg-7 ">
        		<h4 class="section-heading">Reporte Regalía</h4>
        	</div>
	</div>
	<div class="row">
		<div class="col-lg-12">
			<div class="table-responsive">
				<table class="table table-striped table-bordered">
	     			<thead style="background-color:#961255; color:#fff;" align="center">
		       			<tr>
				        	<th colspan="9" class="text-center">Regalía mensual acumulada al día</th>
				       	</tr>
		     		</thead>
		     		<tbody align="center">
		     			<tr>
		     				<td></td>
		     				<td>Nivel 1</td>
		     				<td>Nivel 2</td>
		     				<td>Nivel 3</td>
		     				<td>Nivel 4</td>
		     				<td>Nivel 5</td>
		     				<td>Nivel 6</td>
		     				<td>CS</td>
		     				<td>Total</td>
		     			</tr>
		     			<tr>
		     				<td align="left">Regalia al dia</td>
		     			<g:each in="${vistarepVisGral}" var="repvisgral" status="i">
		     				<td><g:formatNumber number="${repvisgral.regalia_mensual_aldia}" type="currency"/></td>
		     			</g:each>
		     				<td><g:formatNumber number="${vistarepVisGral.regalia_mensual_aldia.sum()}" type="currency"/></td>
		     			</tr>
		     			<tr>
		     				<td align="left">Regalía máxima mensual</td>
		     			<g:each in="${vistarepVisGral}" var="repvisgral" status="i">
		     				<td><g:formatNumber number="${repvisgral.regalia_maxima_mensual}" type="currency"/></td>
		     			</g:each>
		     				<td><g:formatNumber number="${vistarepVisGral.regalia_maxima_mensual.sum()}" type="currency"/></td>    				
		     			</tr>
		     			<tr>
		     				<td align="left">Porcentaje alcanzado</td>
		     			<g:each in="${vistarepVisGral}" var="repvisgral" status="i">
		     				<td><g:formatNumber number="${repvisgral.porcentaje_alcanzado}" type="currency"/></td>
		     			</g:each>
		     				<td><g:formatNumber number="${vistarepVisGral.porcentaje_alcanzado.sum()}" type="currency"/></td>
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