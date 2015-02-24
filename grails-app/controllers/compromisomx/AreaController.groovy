package compromisomx

class AreaController {

     def index() { 
		def TodasAreas = Area.all

		[TodasAreas:TodasAreas]	
	}
	
	def crear(){
		def area = new Area(params)
		area.save()
		redirect(controller: "area", action: "index")
    }
	
	def modificar(){
	//	render params
		Area p = Area.get(params.id)
		p.nombre_area = params.nombre_area
		p.ubicacion = params.ubicacion
		p.save(flush: true)
		redirect(controller: "area", action: "index")
	}
	
	def delete(){
		
		def area = Area.get(params.id)
		//render params
		if (area) {
			try {
			  area.delete(flush: true)
			  redirect(controller: "area", action: "index")
			}
			catch (org.springframework.dao.DataIntegrityViolationException e) {
			 redirect(action: "show", id: params.id)
			}
		  }
     }
}
