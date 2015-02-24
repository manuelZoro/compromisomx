package compromisomx

class Mensajes {
	Long idmodulo;
	String imagen_video;
	String titulo_noticia;
	String descripcion_noticia;
	String nombre_remitente;
	String imagen_remitente;
	String nombre_destinatario;
	boolean mensaje_administrador;
	Date vigencia;
	boolean publicarmensaje;
	 
    static constraints = {
    }
	
	static mapping = {
		descripcion_noticia type: "text", blank: true, nullable: true
	}
}
