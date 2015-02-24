package compromisomx

class CuentaDetalle {

	Long id_cuenta
	String mentor
	String categoria
	Long puntaje
	String equipo
	Date fecha_autopago
	Boolean estatus
	String imagen
	String mensaje
	Cuenta cuenta;
	
    static constraints = {
    }
}
