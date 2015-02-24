<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<title>Citas</title>
</head>
<body>
	<g:form style="background-color:#961255; margin-left: 5px;" >
		<g:hiddenField name="id" value="${cita.id}"/>	  	
	            <div>
	                <div class="row mensaje_centro">
	                	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>	                	 
	                    <div class="row"><div class="col-md-12"><p>&nbsp;</p></div></div>
	                    <div class="col-md-12"><p class="txt_cen"><img src="/compromisomx/images/iconografia/agenda/logo_mensaje.png"></p></div>
	                    <div class="col-md-12"><div class="mensaje_texto1">Detalles Cita</div></div>
	                    <div class="row"><div class="col-md-12"><p>&nbsp;</p></div></div>
	                    <div class="row altura_fila">
	                    	<div class="col-md-12">
	                        	<div class="mensaje_texto2" style="text-align:center !important;">Nombre de la Cita:</div>
	                        </div>
	                    </div>
	                    <div class="row altura_fila">
	                        <div class="col-md-12">	                        	
	                        	<input required style="text-align:center !important; margin-left:43px; width: 393px;" type="text" class="form-control texto_campo_principal" placeholder=""  name="nombre" id="" value="${cita.nombre}">
	                        </div>	                        
	                    </div> 
	                    <div class="row altura_fila">
	                    	<div class="col-md-12">
	                        	<div class="mensaje_texto2" style="text-align:center !important;">Lugar de la Cita:</div>
	                        </div>
	                    </div>
	                    <div class="row altura_fila">
	                        <div class="col-md-12">	                        	
	                        	<input required style="text-align:center !important; margin-left:43px; width: 393px;" type="text" class="form-control texto_campo_principal" placeholder=""  name="nombre" id="" value="${cita.lugar} de ${cita.municipio},${cita.estado}">
	                        </div>
	                    </div>
	                    <div class="row altura_fila">
	                    	<div class="col-md-12">
	                        	<div class="mensaje_texto2" style="text-align:center !important;">Duración:</div>
	                        </div>
	                    </div>
	                    <div class="row altura_fila">
	                        <div class="col-md-12">	                        	
	                        	<input required style="text-align:center !important; margin-left:43px; width: 393px;" type="text" class="form-control texto_campo_principal" placeholder=""  name="nombre" id="" value="${cita.horai}hrs del ${cita.dia}/${cita.mes}/${cita.anio} a ${cita.horaf}hrs del ${cita.dia1}/${cita.mes1}/${cita.anio1} ">
	                        </div>
	                    </div>
	                    <div class="row"><div class="col-md-12"><p>&nbsp;</p></div></div>
	                </div>
	            </div>
	</g:form>
</body>
</html>