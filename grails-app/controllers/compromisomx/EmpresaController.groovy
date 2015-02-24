package compromisomx

class EmpresaController {

    def index() { 
		def TodasEmpresas = Empresa.all
		def ListaCiudades = Ciudad.all
		[TodasEmpresas:TodasEmpresas,Ciudades:ListaCiudades]	
	}
	
	def crear(){
		def empresa = new Empresa(params)
		empresa.save()
		redirect(controller: "empresa", action: "index")
    }
	
	def modificar(){
	//	render params
		Empresa p = Empresa.get(params.id)
		p.nombre = params.nombre
		p.id_ciudad = params.id_ciudad
		p.save(flush: true)
		redirect(controller: "empresa", action: "index")
	}
	
	def delete(){
		
		def empresa = Empresa.get(params.id)
		//render params
		if (empresa) {
			try {
			  empresa.delete(flush: true)
			  flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'feedback.label', default: 'Feedback'), params.id])}"
			  redirect(controller: "empresa", action: "index")
			}
			catch (org.springframework.dao.DataIntegrityViolationException e) {
			  flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'feedback.label', default: 'Feedback'), params.id])}"
			  redirect(action: "show", id: params.id)
			}
		  }
		
     }
}
