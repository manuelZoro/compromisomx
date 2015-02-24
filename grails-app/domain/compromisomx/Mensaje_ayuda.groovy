package compromisomx

class Mensaje_ayuda {
	String texto_mensaje 
	String num_solicitud
	String fecha_mensaje
	boolean status

    static constraints = {
		num_solicitud blank:false
		texto_mensaje blank:false, maxSize:655
		fecha_mensaje blank:false
		status blank:false
    }
	
}