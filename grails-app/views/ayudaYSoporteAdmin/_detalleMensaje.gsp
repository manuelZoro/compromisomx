<div class="col-md-1"></div>
<div class="col-md-10">
   	<div class="col_soporte_extremo">&nbsp;</div>
   	<div class="col_soporte_interior">
       	<div class="row"><div class="col-md-12"><p>&nbsp;</p></div>
    </div>
    <div class="sop_fondorosa">
    	<div class="sop_imagenhistorial_int texto_principal_soporte">
           	<h2 class="txt_cen"><strong>Solicitud de Apoyo</strong></h2>
            <h4 class="txt_cen"><strong>Horario de Atención al cliente</strong><br>De lunes a viernes: 9:00 am - 5:00 pm (PST)</h4>
        </div>
        <div class="sop_sombra_inf_rosa_int"></div>
    </div>
    <div class="row">
       	<div class="col-md-1"></div>
       	<div class="col-md-10">
        	<div class="row">
              	<div class="col-md-12"><p class="txt_izq"><strong><big>Detalle de solicitud<br></big></strong></p><hr></div>
                <div class="col-md-3"><p class="txt_izq"><strong>Número de solicitud:</strong></p></div>
                <div class="col-md-9"><p class="txt_izq">${mensajes[0]}</p></div>
                <div class="col-md-3"><p class="txt_izq"><strong>Fecha de solicitud:</strong></p></div>
                <div class="col-md-9"><p class="txt_izq">${mensajes[1]}</p></div>
                <div class="col-md-3"><p class="txt_izq"><strong>Categoría:</strong></p></div>
                <div class="col-md-9"><p class="txt_izq">${mensajes[2]}</p></div>
         	</div>
            <div class="row">
                <div class="col-md-9"><p class="txt_izq">&nbsp;</p></div>
                <div class="col-md-12"><p class="txt_izq"><strong><big>Responder solicitud<br></big></strong></p><hr></div>
            </div>
            <div class="col-md-12">
            	<div class="respuesta_soporte">
                	<div class="mensaje_estado_solicitud">Mensaje</div>
                <div class="mensaje_respuesta_soporte">
					<p>${mensajes[3]}</p>                                        	
                </div>
            	</div>
            <p>&nbsp;</p>
            <div class="respuesta_soporte">
            	<div class="mensaje_estado_solicitud">Respuesta</div>
                <textarea id="respuesta" class="mensaje_respuesta_soporte" rows="5"></textarea>
                <div class="row">
                	<div class="col-md-12">
                    	<div class="sop_btn_cancelar pull-right" onclick="window.location.reload()">Cerrar</div>
                        	<div class="sop_btn_enviar pull-right" onclick="mandarRespuesta(${mensajes[4]})">Enviar</div>
                        </div>
              	    </div>
 				</div>
          	</div>
    	</div>
		<div class="row"><div class="col-md-12"><p>&nbsp;</p></div></div>
   		<div class="col-md-1"></div>
	 </div>
</div>
<div class="col_soporte_extremo">&nbsp;</div>
</div>
<div class="col-md-1"></div>