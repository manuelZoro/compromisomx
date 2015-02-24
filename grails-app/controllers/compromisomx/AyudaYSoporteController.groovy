package compromisomx

import java.text.SimpleDateFormat


class AyudaYSoporteController {

    def index() { 
		
	}
	
	def solicitudApoyo(){
		if(session.cuenta == null){
			redirect(controller: "login", action: "index")
		}
	}
	
	def envioSolicitud(){

	}
	
	def cargaContenido(){
		
	}
	
	def cargaSubcategoria(){
		List subcat= Subcategoria.findAllByCategoria_id(params.Categoria,[sort:"nom_subcategoria"])
		render(template:"tipoSubcategoria",model:[todasSubcategorias:subcat])
	}
	
	
	def insertarSolicitud(){
		 String cad = Subcategoria.findAllByNom_subcategoriaAndCategoria_id(params.subcategoria,params.categoria)		
		 cad = cad.replaceAll("([^0-9])", "")

		 Date fe = new Date()

		 
		 SimpleDateFormat date = new SimpleDateFormat("dd/MM/yyyy  HH:mm:ss")
		 def fecha = date.format(fe)

		 
		 Solicitud nvaSol = new Solicitud()
		 nvaSol.fecha_solicitud = fecha
		 nvaSol.status = false
		 nvaSol.subcategoria_id= Integer.parseInt(cad)
		 String cuenta = session.cuenta
		 cuenta = cuenta.replaceAll("([^0-9])", "")
		 nvaSol.id_cuenta = Integer.parseInt(cuenta)
		 nvaSol.save(flush:true)
		 
		 
		// int idSol = Solicitud.findAllBySubcategoria_idAndStatus(cad,fecha,false);
		 Mensaje_ayuda msg = new Mensaje_ayuda()
		 msg.texto_mensaje = params.mensaje
		 msg.num_solicitud = nvaSol.id
		 msg.fecha_mensaje = fecha
		 msg.status = false
		 msg.save(flush:true)
		 

//		 redirect(controller:'ayudaYSoporte', action: 'envioSolicitud')
//		 redirect (action: 'envioSolicitud')
//		 response.sendRedirect("${request.contextPath}/ayudaYSoporte/envioSolicitud")
	//	 window.location = "blah/index.html"
//		 location.href='/compromisomx/ayudaYSoporte/envioSolicitud';
		 println("fin");
		
	}
	
	
	
	
	def historialApoyo(){		
		
		if(session.cuenta == null){
			redirect(controller: "login", action: "index")
		}
		
		
		List s= Solicitud.list();
		def subcategoria = [ ];
		def categoria  = [ ];
		def todo = [ ];
		
		String cuenta = session.cuenta
		int user = Integer.parseInt(cuenta.replaceAll("([^0-9])", ""))
			
		int i=0;
		s.each{
			
			
			if(s[i].id_cuenta == user ){
			//obtener id	
			todo << s[i].id;
			
			s[i].fecha_solicitud = s[i].fecha_solicitud.substring(0, 10);
			todo <<  s[i].fecha_solicitud.substring(0, 10);
			

		
						
			//OBTENER CATEGORIA
			String id_cat = Subcategoria.findAll("from Subcategoria as s where s.id = " + s[i].subcategoria_id.toString()).categoria_id
			id_cat = id_cat.substring(1,2)
			String cat = Categoria.findAll("from Categoria as c where c.id=" + id_cat).nom_categoria
			cat = cat.substring(1,cat.size()-1)
			categoria<<cat
			todo << cat
			
			//Obtener subcategoria
			String sub = Subcategoria.findAll("from Subcategoria as sub where sub.id="+s[i].subcategoria_id.toString()).nom_subcategoria
			sub = sub.substring(1,sub.size()-1)
			subcategoria << sub
			todo << sub;
			
			s[i].status = s[i].status;
			String status = (s[i].status ? "Atendido" : "Pendiente");
			todo << status
			
			}
					
			i++;
		};
	[sol: s, sub: subcategoria, categ: categoria, todo:todo]
	
	}
	
	
	def loginChat(){		
	}
	
	def solicitudApoyoAdministrador(){
	}
	
	
	def detalleSolicitud(){
		List s = Solicitud.list();
		List msg = Mensaje_ayuda.list();

		int idSol = Integer.parseInt(params.solicitud);

		int nprog = Integer.parseInt(params.n);

		String fecha;
		String status;
		String cat;
		String subcat;
		String mensaje;
		int mensajeid;
		boolean statusMensj;
//		String mens = Mensaje_ayuda.findByNum_solicitud(params.solicitud).texto_mensaje;
		
		int i=0;
		s.each{
			String sol = s[i]
			sol = sol.replaceAll("([^0-9])", "")
			int soli = Integer.parseInt(sol);
			if(idSol == soli){
				fecha = s[i].fecha_solicitud.substring(0, 10);

				status = (s[i].status ? "Atendido" : "Pendiente");

				String id_cat = Subcategoria.findAll("from Subcategoria as s where s.id = " + s[i].subcategoria_id.toString()).categoria_id
				id_cat = id_cat.substring(1,2)
				cat = Categoria.findAll("from Categoria as c where c.id=" + id_cat).nom_categoria
				cat = cat.substring(1,cat.size()-1)
				
				String sub = Subcategoria.findAll("from Subcategoria as sub where sub.id="+s[i].subcategoria_id.toString()).nom_subcategoria
				subcat = sub.substring(1,sub.size()-1)
				
	
				mensaje = Mensaje_ayuda.findByNum_solicitud(params.solicitud).texto_mensaje;
				mensajeid= Mensaje_ayuda.findByNum_solicitud(params.solicitud).id;
				statusMensj= Mensaje_ayuda.findByNum_solicitud(params.solicitud).status;
				
			}
			i++;
		}
		
		
	
		[idSol: idSol, nprog: nprog, fecha: fecha, status: status, categoria: cat, subcategoria: subcat, mensaje: mensaje, mensajeid: mensajeid, statusMensj : statusMensj]
									
	}

	
		
	def insertaRespuesta(){
		println("paso a controller")		
		def date = new Date();
		String fecha = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss").format(date)
		Mensaje_ayuda mensaje = new Mensaje_ayuda()
		mensaje.fecha_mensaje = fecha
		mensaje.num_solicitud = params.idsol
		mensaje.status = false
		mensaje.texto_mensaje = params.texto
		mensaje.save(flush:true)
	}
	
	def verRespuesta(){
		String respuestaAdmin = Respuesta_ayuda.findByMensaje_id(params.idmensaje).texto_respuesta
		println respuestaAdmin
		render(template:"detalleRespuesta",model:[respAdmin: respuestaAdmin])
	}
	
	
}