package compromisomx

class Mentor {

	String nombrementor;
	String imagenmentor;
	String apellidomentor;
	String telefono;
	String correoelectronico;
	Long idequipo;
	String nombreCompleto // = "${nombrementor} ${apellidomentor}"

	static constraints = {
	}
	
	/*
	public String setNombreCompleto(nombre, apellido){
		return "${nombre} ${apellido}"
	}
	*/

	/*
	public String getNombre(){
		return "${nombrementor} ${apellidomentor}"
	}

	static transients = ['nombre']
	*/
}
