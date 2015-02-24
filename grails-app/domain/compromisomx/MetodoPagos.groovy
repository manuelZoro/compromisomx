package compromisomx

class MetodoPagos {
	
	Cuenta cuenta; //De aqui se extrae  toda la info del emprendedor
	Envios envio;
	int tipo; // 1:TC 2:paypal 3:Google Wallet 4:Deposito bancario
	int marca; // 1:VISA 2:Master Card
	String titular;
	String num_tc;
	int mes; //mes de expiracion
	int anio; //año de expiracion
	int cod; //codigo de seguridad
	String direccion;
	String num_dir;
	String pais;
	String estado;
	String ciudad;
	int cp;
	String telefono;
	
	
    static constraints = {
		marca nullable: true;
		titular nullable: true;
		num_tc nullable: true;
		mes nullable: true;
		anio nullable: true;
		cod nullable: true;
		direccion nullable: true;
		num_dir nullable: true;
		pais nullable: true;
		estado nullable: true;
		ciudad nullable: true;
		cp nullable: true;
		telefono nullable: true;
		
    }
}
