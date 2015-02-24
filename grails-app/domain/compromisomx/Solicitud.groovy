package compromisomx

class Solicitud {
	
	String fecha_solicitud
	int subcategoria_id
	boolean status //Atendida o en espera
	int id_cuenta
	
	static constraints = {
		subcategoria_id blank:false
		fecha_solicitud blank:false
		id_cuenta blank:false   
    }
 
}