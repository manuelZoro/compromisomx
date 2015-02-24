package compromisomx

class Comisiones {
	
	int id
	String nombre_comision
	String vigencia

    static constraints = {
		id nullable: false
		nombre_comision nullable: false
		vigencia nullable: true		
    }
}
