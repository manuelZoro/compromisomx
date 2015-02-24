package compromisomx

class DetalleArchivoBandeja {
	
	Bandeja obj1 = new Bandeja()
	String detalle

    static constraints = {
		detalle(blank:true)
    }
}
