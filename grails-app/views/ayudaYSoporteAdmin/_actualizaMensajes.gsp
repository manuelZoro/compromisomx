<g:set var="i" value="${0}"></g:set>
<g:while test="${ i < mensajes.size()}">
	<div class="col-md-12">
		<div class="col_mensajes_2_a"></div>
		<div class="col_mensajes_2_b"><img src="${request.contextPath}/images/iconografia/agenda/bullet_rosa.png"></div>
		<div class="col_mensajes_2_c"><a href="#">${mensajes[i]}</a></div>
		<%i++%>
		<div class="col_mensajes_2_d">
			<div class="msj_prev_contenido">&lt;${mensajes[i]}&gt;</div>
		</div>
		<%i++%>
		<%i++%>
		<div class="col_mensajes_2_e">${mensajes[i]}</div>
		<div class="col_mensajes_2_f">&nbsp;</div>
		<%i++%>
		<div class="col_mensajes_2_h"><div class="msj_btn_mensaje" id="${mensajes[i]}" onclick="detalleMensaje(this.id)"></div></div>
		<%i++%>
		<%i++%>
	</div>
</g:while>