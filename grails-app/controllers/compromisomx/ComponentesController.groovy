package compromisomx

class ComponentesController {
	def index() {
		def TodosLosComponentes = Componentes.all
		[TodosLosComponentes : TodosLosComponentes]
	}
	
	def crear(){
		def Componentes = new Componentes(params)
		Componentes.save()
		redirect(controller: "componentes", action: "index")
	}
	
	def modificar(){
	//	render params
		Componentes componente = Componentes.get(params.id)
		componente.nombre = params.nombre
		componente.descripcion = params.descripcion
		componente.ubicacion_activo = params.ubicacion_activo
		componente.ubicacion_inactivo = params.ubicacion_inactivo
		componente.ubicacion_seleccionado = params.ubicacion_seleccionado
		componente.id_tipo_elemento = params.id_tipo_elemento.toLong()
		componente.id_area = params.id_area.toLong()
		componente.save(flush: true)
		redirect(controller: "componentes", action: "index")
	}
	
	def delete(){
		def Componentes = Componentes.get(params.id)
		//render params
		if (Componentes) {
			try {
			  Componentes.delete(flush: true)
			  flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'feedback.label', default: 'Feedback'), params.id])}"
			  redirect(controller: "componentes", action: "index")
			}
			catch (org.springframework.dao.DataIntegrityViolationException e) {
			  flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'feedback.label', default: 'Feedback'), params.id])}"
			  redirect(action: "show", id: params.id)
			}
		 }
	 }
}
