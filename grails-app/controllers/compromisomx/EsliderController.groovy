package compromisomx

class EsliderController {

    def index() { 
		def TodasEslider = Eslider.all
		[TodasEslider:TodasEslider]	
	}
	
	def crear(){
		def eslider = new Eslider(params)
		eslider.save()
		redirect(controller: "eslider", action: "index")
    }
	
	def modificar(){
	//	render params
		Eslider p = Eslider.get(params.id)
		p.idmodulo = params.idmodulo
		p.nombre = params.nombre
		p.save(flush: true)
		redirect(controller: "eslider", action: "index")
	}
	
	def delete(){
		def eslider = Eslider.get(params.id)
		//render params
		if (eslider) {
			try {
			  eslider.delete(flush: true)
			  redirect(controller: "eslider", action: "index")
			}
			catch (org.springframework.dao.DataIntegrityViolationException e) {
			 redirect(action: "show", id: params.id)
			}
		}
     }
}
