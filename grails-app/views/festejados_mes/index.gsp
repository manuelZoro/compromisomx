<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<title>Insert title here</title>
</head>
<body>
  <div class="body">
  <g:form controller="persona" action ="formulario">
 <div style=" width: 100px; text-align: center;">  </div>
	 	<table id="Festejados" class="table table-bordered table-striped">
							<thead style="background-color: #961255; color:#fff">
		   <tr>
		   	  <th><strong>Nombre del ususario</strong></th>
			  <th><strong>Motivo</strong></th>
			   <th><strong>fecha de celebracion</strong></th>
			  <th><strong>Contacto</strong></th>
			  
			  
			</tr> 
			</thead>
			<g:each in="${infoPersonal}" var="cuenta1" status="i">
					
			<% if ((mesInt == cuenta1.cuenta.fecha_de_nacimiento.month+1) || (mesInt == cuenta1.aniversario.month+1)) {%>
		 		
	<tr>
				<td>
					${cuenta1.cuenta.nombres}
				</td>
					    <td>
								<% if ((mesInt == cuenta1.aniversario.month+1)&&(mesInt == cuenta1.cuenta.fecha_de_nacimiento.month+1)) { %>
								CUMPLEAÑOS Y ANIVERSARIO
								<% } %>
					 			<% if ((mesInt == cuenta1.cuenta.fecha_de_nacimiento.month+1)&&(mesInt != cuenta1.aniversario.month+1)) { %>
								CUMPLEAÑOS
								<% } %>
								<% if ((mesInt == cuenta1.aniversario.month+1)&&(mesInt != cuenta1.cuenta.fecha_de_nacimiento.month+1)) { %>
								ANIVERSARIO	
								<% } %>	
								
						</td>			
									<td>	
									        <% if ((mesInt == cuenta1.aniversario.month+1)&&(mesInt == cuenta1.cuenta.fecha_de_nacimiento.month+1)) { %>
											 CUMPLEAÑOS:<g:formatDate format="dd-MMMM" date="${cuenta1.cuenta.fecha_de_nacimiento}"/> /
											 ANIVERSARIO:<g:formatDate format="dd-MMMM" date="${cuenta1.aniversario}"/>
											<% } %>
											<% if ((mesInt == cuenta1.cuenta.fecha_de_nacimiento.month+1)&&(mesInt != cuenta1.aniversario.month+1)) { %>
											CUMPLEAÑOS:<g:formatDate format="dd-MMMM" date="${cuenta1.cuenta.fecha_de_nacimiento}"/>
											<% } %>
											<% if ((mesInt == cuenta1.aniversario.month+1)&&(mesInt != cuenta1.cuenta.fecha_de_nacimiento.month+1)) { %>
											ANIVERSARIO:<g:formatDate format="dd-MMMM" date="${cuenta1.aniversario}"/>
											<% } %>
								    </td>
												<td>
														 <% if ((diaInt == cuenta1.aniversario.date)&&(diaInt == cuenta1.cuenta.fecha_de_nacimiento.date)) { %>
																	<button class="btn btn-default" onclick="mostrar_modal()" type="button">
																	<i class="glyphicon glyphicon-edit" style="color:#428bca"></i> Enviar Mensaje </button>
														<% } %> 
																<% if ((diaInt == cuenta1.cuenta.fecha_de_nacimiento.date)&&(diaInt != cuenta1.aniversario.date)) { %>
																		<button class="btn btn-default" onclick="mostrar_modal()" type="button">
																		<i class="glyphicon glyphicon-edit" style="color:#428bca"></i> Enviar Mensaje </button>
																<% } %>
																				<% if ((diaInt == cuenta1.aniversario.date)&&(diaInt != cuenta1.cuenta.fecha_de_nacimiento.date)) { %>
																						<button class="btn btn-default" onclick="mostrar_modal()" type="button">
																					    <i class="glyphicon glyphicon-edit" style="color:#428bca"></i> Enviar Mensaje </button>
																				<% } %>
																						<%  if ((diaInt != cuenta1.aniversario.date)&&(diaInt != cuenta1.cuenta.fecha_de_nacimiento.date)) { %>
																						<button class="btn btn-default" onclick="" type="button">
																						<i class="glyphicon glyphicon-edit" style="color:#428bca"></i></button>
																				<% } %>
																						
																					
											  </td>
	</tr>
<% } %>
		 			
		 		
			

		
    	  	</g:each>
		  </table>
		  </g:form>
		  
  </div>
  <!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel">Mensaje de felicitaciones</h4>
      </div>
      <div class="modal-body">
      <label> Mensaje a enviar: </label>
      <textarea style="resize:none" class="form-control" rows="3" placeholder="">   </textarea>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary">Enviar Mensaje</button>
      </div>
    </div>
  </div>
</div>
  <script type="text/javascript" >
  function mostrar_modal(){
  
  $('#myModal').modal('show');
  
  
  }
  </script>
</body>
</html>