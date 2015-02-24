package compromisomx

import java.text.SimpleDateFormat

class AyudaYSoporteAdminController {
	List sols = []
	List detalle = []
	def index() {
		
	}
	
	def mandarDatos(){
		sols.removeAll(sols)
		String id_subcategoria = Subcategoria.findAllByNom_subcategoriaAndCategoria_id(params.subcategoria, params.categoria)
		id_subcategoria = id_subcategoria.replaceAll("([^0-9])", "")
		int d = Integer.parseInt(id_subcategoria)
		List sol = Solicitud.findAll("from Solicitud as s where s.subcategoria_id = '" + d + "' and s.status = false")
		int i = 0
		String mensaje, usuario, fecha, id_mensaje, id_solicitud, mensaje2
		while (i<sol.size()){
			def mens = Mensaje_ayuda.findAllByNum_solicitud(sol[i].id)
			int j=0
			while (j<mens.size()){
				if(mens[j].status == false){
					mensaje = mens[j].texto_mensaje
					if(mensaje.size()<=80){
						mensaje2 = mensaje
					}
					else{
						mensaje2 = mensaje.substring(0,80)
					}
					usuario = Cuenta.findAll("from Cuenta as c where c.id ="+sol[i].id_cuenta).nombreCompleto
					fecha = mens[j].fecha_mensaje
					fecha = fecha.substring(0, 19)
					id_mensaje = mens[j].id
					id_solicitud = sol[i].id
					sols<<usuario.substring(1,usuario.size()-1)
					sols<<mensaje2
					sols<<mensaje
					sols<<fecha
					sols<<id_mensaje
					sols<<id_solicitud
				}
				j++
			}
			i++
		}
		render(template:"actualizaMensajes",model:[mensajes:sols])
	}
	
	def cargaSubcategoria(){
		List subcat= Subcategoria.findAllByCategoria_id(params.Categoria,[sort:"nom_subcategoria"])
		render(template:"tipoSubcategoria",model:[todasSubcategorias:subcat])
	}
	
	def detalleMensaje(){
		detalle.removeAll(detalle)
		def mensaje_ayuda = Mensaje_ayuda.findAll("from Mensaje_ayuda ma where ma.id = " + params.idMen)
		String id_mensaje_ayuda = mensaje_ayuda.id
		id_mensaje_ayuda = id_mensaje_ayuda.substring(1,id_mensaje_ayuda.size()-1)
		
		String mensaje = mensaje_ayuda.texto_mensaje
		mensaje = mensaje.substring(1,mensaje.size()-1)
		
		String solicitud = mensaje_ayuda.num_solicitud
		solicitud = solicitud.substring(1,solicitud.size()-1)
		
		String fecha = mensaje_ayuda.fecha_mensaje
		fecha = fecha.substring(1,fecha.size()-1)
		
		String id_subcategoria = Solicitud.findAll("from Solicitud s where s.id = " + solicitud).subcategoria_id
		id_subcategoria = id_subcategoria.substring(1,id_subcategoria.size()-1)
		
		String id_categoria = Subcategoria.findAll("from Subcategoria s where s.id = " + id_subcategoria).categoria_id
		id_categoria = id_categoria.substring(1,id_categoria.size()-1)
		
		String categoria = Categoria.findAll("from Categoria c where c.id = " + id_categoria).nom_categoria
		categoria = categoria.substring(1,categoria.size()-1)
		
		detalle<<solicitud
		detalle<<fecha
		detalle<<categoria
		detalle<<mensaje
		detalle<<id_mensaje_ayuda

		render(template:"detalleMensaje",model:[mensajes:detalle])
	}
	
	def insertarRespuesta(){
		def date = new Date();
		String fecha = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss").format(date)
		Respuesta_ayuda respuesta = new Respuesta_ayuda()
		respuesta.fecha_respuesta = fecha
		respuesta.mensaje_id = params.id_mensaje
		respuesta.texto_respuesta = params.texto
	    respuesta.save(flush:true)
		
		String solicitud = Mensaje_ayuda.findAll("from Mensaje_ayuda ma where ma.id = " + params.id_mensaje).num_solicitud
		solicitud = solicitud.substring(1,solicitud.size()-1)
		
		def updatedRecords = Solicitud.executeUpdate("update Solicitud set status = 'true' where id = " + solicitud)
		updatedRecords = Mensaje_ayuda.executeUpdate("update Mensaje_ayuda set status = 'true' where id = " + params.id_mensaje)
		
	}
}
