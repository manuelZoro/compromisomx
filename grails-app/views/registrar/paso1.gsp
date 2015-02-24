<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="layout" content="registro_lay" />
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

<script type="text/javascript">
    // wait for dom to load
    $(function(){
      // set onblur event handler
      $("#username").keyup(function(){
        // if some username was entered - this == #username
        if($(this).length > 0) {
          // use create link so we don't have to hardcode context
          var url = '${createLink(controller:'registrar', action:'checkAvailable')}'
          //document.getElementById("dummy").style.display = "none";
								// async ajax request pass username entered as id parameter
								$.getJSON(url, {
									username : $(this).val()
								}, function(json) {
									if (!json.available) {
										/*
										$("#username").css("border",
												"5px solid red");
										*/
										document.getElementById("correcto").style.display = "none";
										document.getElementById("correcto").style.visibility = "hidden";
										document.getElementById("incorrecto").style.display = "";
										document.getElementById("incorrecto").style.visibility = "visible";
										document.getElementById("idMentor").value = "";								
										//alert("adiós");
									}
									else{
										/*
										$("#username").css("border",
												"5px solid green");
												*/
										document.getElementById("incorrecto").style.display = "none";
										document.getElementById("incorrecto").style.visibility = "hidden";
										document.getElementById("correcto").style.display = "";
										document.getElementById("correcto").style.visibility = "visible";
										//alert(json.id);
										document.getElementById("idMentor").value = json.id;
									}
								});
							}
						});
	});
</script>
</head>
<body>
	<!-- <g:form controller="registrar" action="savePaso1" id="formulario"> -->
	<!-- Pantalla 1 -->
	<div id="pantalla1" style="">
		<div id="campos" class="row">
			<div class="col-lg-3"></div>
			<div class="col-lg-2">
				<p class="texto_campo_principal">Nombre de Usuario o ID de
					Mentor</p>
			</div>
			<div class="col-lg-4">
				<input type="text" class="form-control texto_campo_principal"
					placeholder="Ej. Francisco Ramírez García" name="username"
					id="username">
			</div>
			<div class="row"></div>

		</div>

		<div id="basura">
			<div class="col-lg-3"></div>

			<div class="col-lg-1"></div>
			<div class="row"></div>
		</div>

		<div id="mensaje" class="row">
			<div class="col-md-12">
				<div class="reg_alineacion">
					<!-- En caso de ser correcto -->
					<img style="visibility: hidden;" id="correcto"
						src="${request.contextPath}/images/iconografia/registro/mentor_correcto.png" />
					<!-- En caso de ser incorrecto -->
					<img style="display: none;" id="incorrecto"
						src="${request.contextPath}/images/iconografia/registro/mentor_incorrecto.png" />
				</div>
			</div>
		</div>

		<div id="links" class="row">
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p class="reg_alineacion">
				<em>En caso de no recordar el nombre de Usuario o ID de su
					mentor haga <a href="#" onclick="localiza();" class="texto_verde">clic
						aquí</a>
				</em>
			</p>
			<p class="reg_alineacion">
				<em>En caso de no ningún mentor haga <a href="#"
					onclick="notengo();" class="texto_verde">clic aquí</a></em>
			</p>

		</div>

	</div>

	<!-- Termina pantalla 1 -->

	<!-- Inicia Pantalla 2 -->

	<div id="localizador" style="display: none;">
		<g:set var="entityName"
			value="${message(code: 'user.label', default: 'User')}" />
		<!-- Nueva P2 -->

		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<h2>Localizador de Mentor</h2>
				<hr>
			</div>
			<div class="col-md-2"></div>
		</div>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-4">
				<div class="row">
					<div class="filters">
						<g:form action="paso1">
							<div class="col-md-12">
								<div class="row">
									<p>
										<strong>Nombre:</strong>
									</p>
									<g:textField name="nombre" value="${filters?.nombre}"
										class="form-control texto_campo_principal" />
									<br>
									<p>
										<strong>Apellido:</strong>
									</p>
									<g:textField name="apellidos" value="${filters?.apellidos}"
										class="form-control texto_campo_principal" />
									<br>
								</div>
								<div class="row">
									<div class="col-md-5">
										<p>
											<strong>Estado:</strong>
										</p>
										<g:textField name="estado" value="${filters?.apellidos}"
											class="form-control texto_campo_principal" />
										<br>
									</div>
									<div class="col-md-2"></div>
									<div class="col-md-5">
										<p>
											<strong>Ciudad:</strong>
										</p>
										<g:textField name="ciudad" value="${filters?.apellidos}"
											class="form-control texto_campo_principal" />
									</div>
								</div>
								<div class="row">
									<div class="col-md-5">
										<p>
											<strong>Teléfono:</strong>
										</p>
										<g:textField name="tel" value="${filters?.apellidos}"
											class="form-control texto_campo_principal" />
										<br>
									</div>
									<div class="col-md-2"></div>
									<div class="col-md-5">
										<p>
											<strong>Correo Electrónico:</strong>
										</p>
										<g:textField name="correo" value="${filters?.apellidos}"
											class="form-control texto_campo_principal" />
										<br>
									</div>
								</div>
							</div>
							<g:submitButton name="filter" value="Buscar" />
						</g:form>
					</div>
				</div>
			</div>
			<div class="col-md-1"></div>

			<div id="privacidad" class="col-md-3">
				<p>&nbsp;</p>
				<p>
					<em>Favor de utilizar el nombre de usuario que corresponde a
						su mentor. Si usted aún no ve a su mentor favor de ponerse en
						contacto con nosotros a través del link "En caso de no tener
						mentor haga <a href="#" class="texto_verde">clic aquí</a>" o a
						nuestro número de Atención a Clientes: <strong>01-981-81-681-982
							en horarios: Lunes a Viernes de 8:00 a.m. a 8:00 p.m.</strong>
					</em>
				</p>
				<p>&nbsp;</p>
				<p class="reg_alineacion">
					<strong><em>La información proporcionada es
							confidencial</em></strong> <br> <strong><a href="#">Términos,
							Condiciones y Aviso de Privacidad</a></strong>
				</p>
			</div>

			<div id="grid" style="display: none;" class="col-md-6">
				<g:render template="grid" model="model" />
			</div>
			<div class="col-md-2"></div>
		</div>

		<!-- Term P2 -->

	</div>
	<!-- Termina Pantalla 2 -->

	<!-- Inicia Pantalla 3 -->
	<div id="notengo" style="display: none;">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<p class="tit_verde_gde">¡No tengo Mentor!</p>
				<hr>
				<p class="txt_gris_centrado">
					¿No cuenta con un mentor?<br>El mentor es la persona que lo
					asistirá y capacitará dentro del movimiento COMPROMISOMX.<br>Si
					usted no cuenta con un mentor favor de llenar el siguiente
					formulario.
				</p>
				<p>&nbsp;</p>
				<div class="row">
					<div class="col-md-5">
						<div class="row">
							<p>
								<strong>Nombre Completo:</strong>
							</p>
							<input type="text" class="form-control texto_campo_principal"
								placeholder=""><br>
							<p>
								<strong>Número de Teléfono:</strong>
							</p>
							<input type="text" class="form-control texto_campo_principal"
								placeholder=""><br>
							<div class="col-md-5">
								<p>
									<strong>País:</strong>
								</p>
								<input type="text" class="form-control texto_campo_principal"
									placeholder=""><br>
							</div>
							<div class="col-md-2"></div>
							<div class="col-md-5">
								<p>
									<strong>Ciudad:</strong>
								</p>
								<input type="text" class="form-control texto_campo_principal"
									placeholder=""><br>
							</div>
							<div class="col-md-5">
								<p>
									<strong>Estado:</strong>
								</p>
								<input type="text" class="form-control texto_campo_principal"
									placeholder=""><br>
							</div>
							<div class="col-md-2"></div>
							<div class="col-md-5">
								<p>
									<strong>Código Postal:</strong>
								</p>
								<input type="text" class="form-control texto_campo_principal"
									placeholder=""><br>
							</div>
						</div>
					</div>
					<div class="col-md-2"></div>
					<div class="col-md-5">
						<div class="row">
							<p>
								<strong>Correo Electrónico:</strong>
							</p>
							<input type="text" class="form-control texto_campo_principal"
								placeholder=""><br>
							<p>
								<strong>Confirmar Correo:</strong>
							</p>
							<input type="text" class="form-control texto_campo_principal"
								placeholder=""><br>
							<p>
								<strong>Comentarios:</strong>
							</p>
							<textarea class="form-control" rows="6"></textarea>
							<br>
						</div>
					</div>
					<div class="col-md-12">
						<p>&nbsp;</p>
						<p class="reg_alineacion">
							<strong><em>La información proporcionada es
									confidencial</em></strong> <br> <strong><a href="#">Términos,
									Condiciones y Aviso de Privacidad</a></strong>
						</p>
					</div>
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>

	<!-- Termina pantalla 3 -->

	<!-- Inicia Pantalla gracias  -->
	<div id="gracias" style="display: none;">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<p class="tit_verde_gde txt_big_big">¡Muchas gracias!</p>
				<hr>
				<p class="txt_gris_centrado txt_big">Un emprendedor social lo
					contactará.</p>
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>
	<!-- Termina pantalla gracias -->
	<g:form name="formulario" controller="registrar" action="savePaso1">
		<input type="hidden" value="" id="idMentor" name="idMentor">
		<input type="hidden" value="" name="accion" id="accion" />
	</g:form>
	<!-- </g:form> -->
	<script type="text/javascript">
$(document).ready(function() {
    setupFilterAjax();
});

//Turn any input changes or form submission within a filter div into an ajax call
function setupFilterAjax() {
	/*
    $('div.filters :input').change(function() {
        var filterBox = $(this).parents('div.filters');
        //alert('Boom' + filterBox.size() );
    filterGrid(filterBox);
    });
    */
    $('div.filters form').submit(function() {
    var filterBox = $(this).parents('div.filters');
    //alert('Boom' + filterBox.size() );
    filterGrid(filterBox);
        return false;
    });
}

//Reload grid based on selections from the filter
function filterGrid(filterBox) {
	 $("#privacidad").fadeOut();
	 //alert("argggh");
     //var grid = $(filterBox).next('div.grid');
     grid = document.getElementById("grid");
     //$(grid).html($("#spinner").html());

     var form = $(filterBox).find('form');
     var url = $(form).attr('action');
     var data = $(form).serialize();
     //alert('Smash!!!!')
     $.ajax({
        type: 'POST',
        url: url,
        data: data,
        success: function(data) {
            $(grid).fadeOut('fast', function() {$(this).html(data).fadeIn('slow');
            //alert('Entré');
            });
        }
     });
     
     //alert("Smash!");
}

function localiza(){
	$("#pantalla1").fadeOut();
	$("#localizador").fadeIn();
	//$("#avanza").hide();
	//$("#regresa").hide();
}

function notengo(){
	$("#pantalla1").fadeOut();
	$("#notengo").fadeIn();
}

var paso = 1;
var pantallas = 1;

</script>


	<g:if test="${session.registro_cuenta.mentor != null}">
		<script type="text/javascript">
				document.getElementById("idMentor").value = "${session.registro_cuenta.mentor.id}";
				document.getElementById("username").value = "${session.registro_cuenta.mentor.nombreCompleto}";
				document.getElementById("incorrecto").style.display = "none";
				document.getElementById("incorrecto").style.visibility = "hidden";
				document.getElementById("correcto").style.display = "";
				document.getElementById("correcto").style.visibility = "visible";
			</script>
	</g:if>

</body>
</html>