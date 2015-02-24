package compromisomx

class Envios {
	
	Cuenta cuenta; //De aqui se extrae  toda la info del emprendedor
	int num_envio;
	Date fecha;
	int forma_pago;		//1: Tarjeta debito/debito 2: Paypal 3: Google Wallet 4: Depósito bancario
	int cantidad;
	int origen_pago;	// 1:Registro 2:Autopago 3:Autoconsumo 4:tienda social
	int estatus;		// 1:Pendiente 2:Procesado 3:Enviado 4:Completado 5:Cancelado 6:Devuelto
	int clave_padrino; //quien es el padrino del emprendedor
	Direcciones direccion;
	Formas_de_pago pago;
	
	
	static constraints = {
	}
}