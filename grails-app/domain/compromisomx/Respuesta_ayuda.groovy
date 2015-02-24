package compromisomx

class Respuesta_ayuda {
	String fecha_respuesta
	String texto_respuesta
	String mensaje_id
	
	static constraints = {
		fecha_respuesta blank:false
		texto_respuesta blank:false
		mensaje_id blank:false
    }
}