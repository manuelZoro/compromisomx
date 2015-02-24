<div class="row altura_fila">
	<div class="col-md-2"></div>
	<div class="col-md-3">
		<p class="texto_normal">Pais*:</p>
	</div>
	<div class="col-md-4">
		<g:select class='form-control' optionKey="id"
			optionValue="${{it.nombre?.toUpperCase()}}" name="pais"
			from="${TodosLosPaises}" noSelection="${['null':'Seleccionar']}"
			onchange="${remoteFunction(  
                      controller:'Cuenta',  
                      action:'CargarEstado',  
                      params:'\'id=\' + this.value',
					  update : 'estado'
                      )} "  value="${cuenta.pais.id}" />
	</div>
	<div class="col-md-1"></div>
</div>
<div class="row altura_fila">
	<div class="col-md-2"></div>
	<div class="col-md-3">
		<p class="texto_normal">Estado*:</p>
	</div>
	<div class="col-md-4">
		<g:select class='form-control' optionKey="id"
			optionValue="${{it.nombre?.toUpperCase()}}" name="estado"
			from="${TodosLosEstados}"
			onchange="${remoteFunction(  
                      controller:'Cuenta',  
                      action:'CargarMunicipio',  
                      params:'\'id=\' + this.value',
					  update : 'ciudad'
                      )}" />
	</div>
	<div class="col-md-1"></div>
</div>
<div class="row altura_fila">
	<div class="col-md-2"></div>
	<div class="col-md-3">
		<p class="texto_normal">Ciudad*:</p>
	</div>
	<div class="col-md-4">
			<g:select class='form-control' optionKey="id"
			optionValue="${{it.nombre?.toUpperCase()}}" name="ciudad"
			from="${TodosLosMunicipio}"
			onchange="${remoteFunction(  
                      controller:'Cuenta',  
                      action:'cargarCP',  
                      params:'\'id=\' + this.value',
					  update : 'cpostal'
                      )}" />
	</div>
	<div class="col-md-1"></div>
</div>
<div class="row altura_fila">
	<div class="col-md-2"></div>
	<div class="col-md-3">
		<p class="texto_normal">Codigo Postal*:</p>
	</div>
	<div class="col-md-4">
			<g:select class='form-control' optionKey="id"
			optionValue="${{it.codigo?.toUpperCase()}}" name="cpostal"
			from="${CP}" />
	</div>
	<div class="col-md-1"></div>
</div>
<div class="row altura_fila">
	<div class="col-md-2"></div>
	<div class="col-md-3">
		<p class="texto_normal"></p>
	</div>
	<div class="col-md-4">
	<br/>
		<button type="submit" class="btn btn-default texto_campo_principal">Guardar</button>
	&nbsp;&nbsp;&nbsp; <a type="button"
		class="btn btn-default texto_campo_principal"
		href="${request.contextPath}/cuenta/editarperfil.gsp"
		class="btn btn-default texto_campo_principral">Cancelar</a>
	</div>
	<div class="col-md-1"></div>
</div>
