package compromisomx

class Formas_de_pago {
	
	Cuenta cuenta; //De aqui se extrae  toda la info del emprendedor
	int tipo_tarjeta; // 1 visa; 2 master card;
	String titular;
	Long num_tarjeta;
	Date expiracion;
	int codigo;
	String calle;
	String colonia;
	String numero;
	String num_int;
	String pais;
	String estado;
	String ciudad;
	int cp;
	String telefono;
	
	/*Se sugiere que para cuando se agreguen más metodos de pago se añada atributo tipo_pago
	 * donde tipo 1 sea tarjeta credito/debito, y del 2 en adelante las nuevas formas de pago
	 * Si se implementa de esta manera se inserte esta nueva columna a todos los registros con
	 * valor 1,*/

    static constraints = {
		num_int nullable:  true;
    }
}
