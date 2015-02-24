<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta name="layout" content="cuenta_layout"/>

<title>Insert title here</title>

</head>
<body>
	<div class="form-group" >
		<div class="row">
			<div class="col-xs-4">
				<label>Selecciona un Reporte</label>
				<select id="tipo_reporte" class="form-control">
					<option value="0">-- Tipo Reporte --</option>
					<option value="1">Reporte Visión General</option>
					<option value="2">Reporte Auto Pago</option>
					<option value="3">Reporte Actividad Semanal</option>
					<option value="4">Reporte Actividad Mensual</option>
					<option value="5">Reporte Actividad Anual</option>
					<option value="6">Reporte Actividad Por Periodo</option>
					<option value="7">Reporte Colaboradores Sociales</option>
				</select>
			
			</div>
		</div>		
	</div>
	
	
	<div class="form-group row" id="contenido_view">
		<div class="jumbotron">
	      <h2 style ="color:#961255; text-align: center;">Para poder visualizar seleccione una opcion de reporte.</h2>
	     </div>
	</div>
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'loading.css')}" type="text/css">
	<script	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script type="text/javascript">
	 
	 $(document).ready(function() {
		 
		 $("#tipo_reporte").change(function () { 
			 var tipo = $("#tipo_reporte").val();
			 $("#contenido_view").html("");
			 var url_ = "";
			 console.log(tipo);

			 if(tipo == 0)
				 url_ = "";
			 if(tipo == 1)
				 url_ = "/compromisomx/Reportes/visionGral";
			 if(tipo == 2)
				 url_ = "/compromisomx/Reportes/autoPago";
			 if(tipo == 3)
				 url_ = "/compromisomx/Reportes/actividadSemanal";
			 if(tipo == 4)
				 url_ = "/compromisomx/Reportes/actividadMensual";
			 if(tipo == 5)
				 url_ = "/compromisomx/Reportes/actividadAnual";
			 if(tipo == 6)
				 url_ = "/compromisomx/Reportes/actividadPeriodo";
			 if(tipo == 7)
			 	 url_ = "/compromisomx/Reportes/colabSocial";

			 if( tipo != 0 ){
				 $("#contenido_view").append('<div class="loader_i"></div>');
	
				 setTimeout(function() {
					 
				     $.ajax({
				          url: url_,
				          type: "GET",
				          dataType: "html",
				          success: function (data) {
				              $("#contenido_view").html(data);
				          }
				       })
				       
				 }, 3500);
			 }
		 else{
			 console.log("false");
			 var cdhtml = '<div class="jumbotron">'+
		      	'<h2 style ="color:#961255; text-align: center;">Para poder visualizar seleccione una opcion de reporte.</h2>'+
		     	'</div>';
		     	
			 $("#contenido_view").html(cdhtml);
			 
			 }
			

		 });
	});
	</script>
</body>
</html>