package compromisomx

import java.util.Date;

import compromisomx.URLValidator;
import compromisomx.FileUploadService;

import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.codehaus.groovy.grails.web.context.ServletContextHolder as SCH

class InicioController {

	def index() {
		
		if(session.cuenta == null){
			redirect(controller: "login", action: "index")
			return
		}
		println "Mentor: "  + session.cuenta.mentor.nombreCompleto

		//def mensajes = Mensajes.list(max:4, sort:"id", order:"desc")
		def noticias = Noticia.list(max:4, sort:"id", order:"desc")
		def sliders = DetalleEslider.list(max:3, sort:"id", order:"desc")

		def acciones = AccionComunitaria.list(max:9, sort:"id", order:"desc")
		def detalle = DetalleAccionComunitaria.findAllByAccionInList(acciones)

		List<DetalleAccionComunitaria> lista = new ArrayList<DetalleAccionComunitaria>();

		for(AccionComunitaria a: acciones){
			for(DetalleAccionComunitaria d: detalle){
				if(a == d.accion){
					lista.add(d)
					break;
				}
			}
		}
		/*
		int i=0;
		for(AccionComunitaria a: acciones){
			println a.id + " ?= " + lista.get(i).accion.id
			i++;
		}*/
		
		[listaNoticias: noticias, listaAcciones:acciones, listaSliders:sliders, detalle:lista]
		//render lista.size()
		//render "cacacacac"
		//render acciones.size()
		//render sliders
	}

	def upload(){

		String baseImageName = "${java.util.UUID.randomUUID().toString()}.jpg"
		// Saving image in a folder assets/channelImage/, in the web-app, with the name: baseImageName
		CommonsMultipartFile downloadedFile = (CommonsMultipartFile)request.getFile('imagen')
		//render downloadedFile
		String assetDir = grailsApplication.config.uploadFolder + "noticias/"

		FileUploadService fOS = new FileUploadService()
		//String fileUploaded = fOS.upload()
		String fileUploaded = fOS.uploadFile( downloadedFile, baseImageName, assetDir, false)
		//SCH.getServletContext()

		def noticia = new Noticia()
		String s = params.descripcion
		noticia.titulo_noticia = s.substring(0, 10)
		noticia.descripcion = params.descripcion
		noticia.idmodulo = 1
		noticia.publicarnoticia = true
		noticia.vigencia = new Date();
		noticia.imagen_video = baseImageName
		noticia.save()

		//render fileUploaded
		//render "Imagen cargada en ${fileUploaded} : Noticia ID: ${noticia.id}"
		redirect (action:'index')

	}

	def sendmail(){

		def contacto = new Contacto(params)

		String asunto1 =params.asunto
		//		String mail1 = (params.mail!=null) ? "contacto.trt@gmail.com" : params.mail
		String mensaje1 = "El correo: "+params.mail+", le envio un mensaje en la pagina Compromiso MX\n\nMensaje: ''"+params.mensaje+"''"

		//		def ok = MailSender.sendMail("contacto.trt@gmail.com","contactotrt",true,true,"smtp.gmail.com",587,"contacto.trt@gmail.com",mail1,asunto1,mensaje1);

		def ok = MailSender.sendMail("contacto.trt@gmail.com","contactotrt",true,true,"smtp.gmail.com",587,"contacto.trt@gmail.com","contacto.trt@gmail.com",asunto1,mensaje1);

		redirect(controller: "inicio", action: "index")

	}


	def uploadAccion(){

		//Para evitar comentar al realizar pruebas
		boolean save = true;

		def accion = new AccionComunitaria()
		accion.idmodulo = 1
		accion.descripcion = params.descripcion
		accion.fecha = new Date()
		accion.hora = ""
		accion.lugar = "Casa"
		accion.vigencia = new Date()
		accion.publicaraccion = true

		if(save){
			accion.save()
		}

		if(true){
			if( params.tipo.equals("1") ){
				//String assetDir = grailsApplication.config.uploadFolder+"acciones/"
				String assetDir = "images/acciones/"
				//String assetDir = "C:\\Users\\sreynosov\\Desktop\\ddd"
				FileUploadService fOS = new FileUploadService()
				CommonsMultipartFile file;
				for(int i=0 ;i<=4; i++){
					String im = 'imagen' + i
					file = request.getFile(im)
					if( (file != null) && (file instanceof CommonsMultipartFile) && (file.size/1024*512)>512 && (file.size>0) ){
						String base = java.util.UUID.randomUUID().toString() + URLValidator.nameFileExt( file.getOriginalFilename() )
						//render " nuevo: " + base + "   era: " +  file.getOriginalFilename() + (file.size/1024) + " KB"
						//String uploaded = fOS.uploadFile( file, base, assetDir, "1");
						String uploaded = fOS.uploadFile( file, base, assetDir, FileUploadService.RUTA_RELATIVA);
						//render " Subida: " + uploaded + "  " + i  + " !!!!!!!!!!!!!!!!!!!!!!"
						DetalleAccionComunitaria detalle = new DetalleAccionComunitaria()
						detalle.accion = accion
						detalle.imagen_video = uploaded
						detalle.tipo = 1
						if(save){
							detalle.save()
						}
					}
				}
			}
			else if( params.tipo.equals("2") ){
				if(params.video != null && params.video.length()>0){
					String videoId = URLValidator.getYouTubeID(params.video);
					if( videoId.length() > 0 ){
						DetalleAccionComunitaria detalle = new DetalleAccionComunitaria()
						detalle.accion = accion
						detalle.imagen_video = videoId
						detalle.tipo = 2
						//render " Video!!: " + " " + videoId.length() + " " + videoId
						if(save){
							detalle.save()
						}
					}
				}
			}
			else if( params.tipo.equals("3") ){
				for(int i=0; i<=4; i++){
					String par = request.getParameter("imagen"+i)
					if(par != null){
						if(par.length()>0){
							DetalleAccionComunitaria detalle = new DetalleAccionComunitaria()
							detalle.accion = accion
							detalle.imagen_video = par
							detalle.tipo = 3
							//render " ${i} La url es: ${par}"
							if(save){
								detalle.save()
							}
						}
					}
				}
			}
			redirect (action:'index')
		}
	}
}
