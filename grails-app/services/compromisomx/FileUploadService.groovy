package compromisomx

import grails.transaction.Transactional
import org.springframework.web.multipart.commons.CommonsMultipartFile
import org.codehaus.groovy.grails.web.context.ServletContextHolder as SCH


//@Transactional
class FileUploadService {
	static transactional = false
	public static final String RUTA_ABSOLUTA = "0";
	public static final String RUTA_RELATIVA = "1";
	public static final String RUTA_DE_USUARIO = "2";

	def serviceMethod() {
	}

	//@Transactional
	def String uploadFile( CommonsMultipartFile file, String name, String destinationDirectory, String tipoDeRuta ) { 
		
		def serveletContext = SCH.servletContext
		def storagePath
		if(tipoDeRuta.equals(RUTA_ABSOLUTA)){
			storagePath = destinationDirectory;
		}
		else if(tipoDeRuta.equals(RUTA_RELATIVA)){
			//Se evalúa si la ruta es absoluta o relativa
			storagePath = serveletContext.getRealPath( destinationDirectory )
		}
		else if(tipoDeRuta.equals(RUTA_DE_USUARIO)){
			storagePath = System.getProperty("user.home") + "/.grails/compromisomx/" + destinationDirectory
		}
		else {
			println("Ya me salí")
			return "";
		}

		def storagePathDirectory = new File( storagePath )

		if( !storagePathDirectory.exists() ){
			println("creating directory ${storagePath}")
			if(storagePathDirectory.mkdirs()){
				println "SUCCESS"
			}else{
				println "FAILED"
			}
		}

		// Store file

		if(!file.isEmpty()){
			file.transferTo( new File("${storagePath}/${name}") )
			println("Saved File: ${storagePath}/${name}")
			return "${name}"
		}else{
			println "File: ${file.inspect()} was empty"
			return null
		}

	}


	def String upload() {

		def destinationDirectory = "assets/noticias/"
		def serveletContext = SCH.getServletContext()
		def storagePath = serveletContext.getRealPath( destinationDirectory )

		def storagePathDirectory = new File( storagePath )

		if( !storagePathDirectory.exists() ){
			println("creating directory ${storagePath}")
			if(storagePathDirectory.mkdirs()){
				println "SUCCESS"
			}else{
				println "FAILED"
			}
		}

		return storagePathDirectory

		// Store file

		if(!file.isEmpty()){
			file.transferTo( new File("${storagePath}/${name}") )
			println("Saved File: ${storagePath}/${name}")
			return "${storagePath}/${name}"
		}else{
			println "File: ${file.inspect()} was empty"
			return "No file"
		}

	}
}
