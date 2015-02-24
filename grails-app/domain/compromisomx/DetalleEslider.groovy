package compromisomx

class DetalleEslider {

	String titulo;

	String descripcion; 
	
	String url;
	
	Eslider eslider;
	
    static constraints = {
		titulo blank: true
		descripcion blank: true
		url blank: true
    }
}
