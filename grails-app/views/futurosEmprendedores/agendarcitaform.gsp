<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<title>Insert title here</title>
</head>
<body>
<g:form controller="FuturosEmprendedores" action="">
<g:hiddenField name="id" value="${cita.id}"/>
<div class="modal-header" style="background-color:#428bca">

</div>
<div class="modal-body">
	<div class="row form-group">
		 <div class="col-xs-4">
		  	 <label>Fecha:</label>
		     <input type="date" class="form-control" id="fecha" name="fecha" placeholder="DD/MM/AAAA" value="">
		 </div>
		 <div class="col-xs-4">
		  	 <label>Hora:</label>
		     <input type="text" class="form-control" id="hora" name="hora" placeholder="13:45 p.m." value="">
		 </div>	
		  <div class="col-xs-4">
		  	 <label>Lugar:</label>
		     <input type="text" class="form-control" id="lugar" name="lugar" placeholder="Villas del ..." value="" maxlength="15">
		 </div>			 
	</div>
 </div>
 <div class="modal-footer">
 	<button type="submit" class="btn btn-default btn-lg"><i class="glyphicon glyphicon-floppy-disk" style="color:#1abb9c;"></i> Guardar</button>
 </div>
</g:form>
</body>
</html>