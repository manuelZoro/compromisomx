package compromisomx

class AccionComunitaria {

	long idmodulo;
	String descripcion;
	Date fecha;
	String hora;
	String lugar;
	Date vigencia;
	Boolean publicaraccion;
	String imagen_video;

	static constraints = {
		imagen_video blank: true, nullable: true
	}
}
