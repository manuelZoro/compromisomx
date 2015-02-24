package compromisomx

import java.util.Date;

class Bandeja {
	
	String remitente
	String destinatario
	String asunto
	String cuerpo
	String fecha
	String hora
	Boolean status
	Carpetas carpeta
	Boolean relevante
	Boolean nuevo

    static constraints = {
		
		remitente(blank:false)
		destinatario(blank:false)
		asunto(blank:false)
		cuerpo(blank:false, maxSize: 10000)
		fecha(blank:false)
		hora(blank:false)
		status(blank:false)
		carpeta(blank:false)
		relevante(blank:false)
		nuevo(blank:false)
    }
}