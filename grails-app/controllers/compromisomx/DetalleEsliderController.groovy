package compromisomx

class DetalleEsliderController {

    def index() { 
		def TodasDetalleEslider = DetalleEslider.all
		[TodasDetalleEslider:TodasDetalleEslider]	
	}
	
	def crear(){
		def detalleeslider = new DetalleEslider(params)
		detalleeslider.save()
		redirect(controller: "detalleEslider", action: "index")
    }
	
	def modificar(){
	//	render params
		DetalleEslider p = DetalleEslider.get(params.id)
		p.ideslider = params.ideslider
		p.titulo = params.titulo
		p.descripcion = params.descripcion
		p.url = params.url
		p.save(flush: true)
		redirect(controller: "detalleEslider", action: "index")
	}
	
	def delete(){
		def detalleeslider = DetalleEslider.get(params.id)
		//render params
		if (detalleeslider) {
			try {
			  detalleeslider.delete(flush: true)
			  redirect(controller: "detalleEslider", action: "index")
			}
			catch (org.springframework.dao.DataIntegrityViolationException e) {
			 redirect(action: "show", id: params.id)
			}
		}
     }
}
