package compromisomx

import java.text.DateFormat
import java.text.SimpleDateFormat

class NoticiasController {

 
     def index() { 
		def TodasNoticias = Noticia.all

		[TodasNoticias:TodasNoticias]	
	}
	
	def crear(){
		def noticia = new Noticia(params)
		//render params
		noticia.save()
		redirect(controller: "noticias", action: "index")
    }
	
	def modificar(){
	   // render params
		Noticia p = Noticia.get(params.id)
		p.descripcion = params.descripcion
		p.idmodulo =  params.id_modulo
		
		if(params.publicarnoticia == 'on'){
			p.publicarnoticia = true
		}
		else
		{
			p.publicarnoticia = false
		}

		p.titulo_noticia = params.titulo_noticia
		p.vigencia = params.vigencia
		p.imagen_video = params.imagen_video
		p.save(flush: true)
		redirect(controller: "noticias", action: "index")
	}
	
	def delete(){
		
		def noticia = Noticia.get(params.id)
		//render params
		if (noticia) {
			try {
			  noticia.delete(flush: true)
			  redirect(controller: "noticias", action: "index")
			}
			catch (org.springframework.dao.DataIntegrityViolationException e) {
			 redirect(action: "show", id: params.id)
			}
		  }
		
     }
}
