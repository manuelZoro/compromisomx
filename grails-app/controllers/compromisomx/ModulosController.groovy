package compromisomx

class ModulosController {
	def index() {
		def TodosLosModulos = Modulos.all
		[TodosLosModulos : TodosLosModulos]
	}
	
	def crear(){
		def Modulos = new Modulos(params)
		Modulos.save()
		redirect(controller: "modulos", action: "index")
	}
	
	def modificar(){
	//	render params
		Modulos modulos = Modulos.get(params.id)
		modulos.idempresa = params.idempresa
		modulos.idorgnizacion = params.idorganizacion
		modulos.nombremodulo = params.nombremodulo
		modulos.url = params.url
		modulos.organizacion = params.organizacion.toBoolean()
		modulos.save(flush: true)
		redirect(controller: "modulos", action: "index")
	}
	
	def delete(){
		def Modulos = Modulos.get(params.id)
		//render params
		if (Modulos) {
			try {
			  Modulos.delete(flush: true)
			  flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'feedback.label', default: 'Feedback'), params.id])}"
			  redirect(controller: "componentes", action: "index")
			}catch (org.springframework.dao.DataIntegrityViolationException e) {
			  flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'feedback.label', default: 'Feedback'), params.id])}"
			  redirect(action: "show", id: params.id)
			}
		 }
	 }
}
