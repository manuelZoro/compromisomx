package compromisomx

class AccionComunitariaController {

    def accioncomunitaria() { 
		def TodasAccionesComunitarias = AccionComunitaria.all
		
		[TodasAccionesComunitarias:TodasAccionesComunitarias]
	}
	
	
	def crear(){
		def accioncomunitaria = new AccionComunitaria(params)
		area.save()
		redirect(controller: "accioncomunitaria", action: "index")
	}
	
	def modificar(){
	//	render params
		AccionComunitaria p = AccionComunitaria.get(params.id)
		p.idmodulo = params.idmodulo
		p.id_accion = params.id_accion
		p.descripcion = params.descripcion
		p.fecha = params.fecha
		p.hora = params.hora
		p.lugar = params.lugar
		p.vigencia = params.vigencia
		p.publicaraccion = params.publicaraccion
		
		p.save(flush: true)
		redirect(controller: "accioncomunitaria", action: "index")
	}
	
	def delete(){
		
		def accion = AccionComunitaria.get(params.id)
		//render params
		if (accion) {
			try {
			  accion.delete(flush: true)
			  redirect(controller: "area", action: "index")
			}
			catch (org.springframework.dao.DataIntegrityViolationException e) {
			 redirect(action: "show", id: params.id)
			}
		  }
		
	 }

}
