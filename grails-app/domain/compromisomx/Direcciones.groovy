package compromisomx

import java.util.Date;

class Direcciones {
	
	Cuenta cuenta; //De aqui se extrae  toda la info del emprendedor
	String nombres;
	String p_apellido;
	String s_apellido;
	String pais;
	String estado;
	String ciudad;
	int cp;
	String colonia;
	String calle;
	String manzana;
	String numero_int;
	String numero;
	String cruzamientos;
	String referencias;
	String telefono;

    static constraints = {
		
	numero_int	nullable: true;
	cruzamientos nullable: true;
	referencias nullable: true;
	manzana nullable: true;
		
		
    }
}