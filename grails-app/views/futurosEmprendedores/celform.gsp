<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<title>Insert title here</title>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script> 
</head>
<body>
<g:form controller="FuturosEmprendedores" action="">
<g:hiddenField name="id" value="${cel.id}"/>
<div class="modal-header" style="background-color:#428bca">
	<button type="button" class="close" data-dismiss="modal" style="color:white;"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
    <h4 class="modal-title" id="celModalLabel" style="color:white;">Telefono</h4>
</div>
<div class="modal-body">
	<div class="row form-group">
		 <div class="col-xs-6">
		  	 <label>Telefono de Celular:</label>
		     <input type="text" class="form-control" id="telcelular" name="telcelular" placeholder="981 123 0959" value="">
		 </div>
		 <div class="col-xs-6">
		  	 <label>Telefono de Casa:</label>
		     <input type="text" class="form-control" id="telcasa" name="telcasa" placeholder="81 123 0959" value="">
		 </div>		 
	</div>
 </div>
 <div class="modal-footer">
 	<button type="submit" class="btn btn-default btn-lg"><i class="glyphicon glyphicon-floppy-disk" style="color:#1abb9c;"></i> Guardar</button>
 </div>
</g:form>
</body>
</html>