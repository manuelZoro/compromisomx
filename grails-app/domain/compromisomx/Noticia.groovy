package compromisomx

class Noticia {

	long idmodulo;
	String imagen_video;
	String titulo_noticia;
	String descripcion;
	Date vigencia;
	boolean publicarnoticia;

	static constraints = {
		descripcion type: "text", blank: true, nullable: true
	}
}
