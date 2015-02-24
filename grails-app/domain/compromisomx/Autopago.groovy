package compromisomx

import java.util.Date;

class Autopago {

	String autopagonombres;
	String autopagoprimerapellido;
	String autopagosegundoapellido;
	Pais autopagopais;
	Estado autopagoestado;
	Ciudad autopagociudad;
	CodigoPostal autopagocodigopostal;
	Colonia autopagocolonia;
	String autopagocalle;
	String autopagonumeroexterior;
	String autopagonumerointerior;
	String autopagomanzana;
	String autopagocruzamientos;
	String autopagoreferencia;
	String autopagocorreo;

	String autoformadeenvio;


	String autotipotarjetaformapago;
	String autopagotipotarjeta;
	String autopagotitulartarjeta;
	String autopagonumerotarjeta;
	String autopagoexpiracionmes;
	String autopagoexpiracionano;
	String autopagocodigoseguridad;
	String autopagodireccion1;
	String autopagodireccion2;
	Pais autopagopaist;
	Estado autopagoestadot;
	Ciudad autopagociudadt;
	String autopagotelefonot;
	CodigoPostal autopagocodigopostalt;
	Cuenta cuenta


	static constraints = {
		autopagonombres nullable: true;
		autopagoprimerapellido nullable: true;
		autopagosegundoapellido nullable: true;
		autopagopais nullable: true;
		autopagoestado nullable: true;
		autopagociudad nullable: true;
		autopagocodigopostal nullable: true;
		autopagocolonia nullable: true;
		autopagocalle nullable: true;
		autopagonumeroexterior nullable: true;
		autopagonumerointerior nullable: true;
		autopagomanzana nullable: true;
		autopagocruzamientos nullable: true;
		autopagoreferencia nullable: true;
		autopagocorreo nullable: true;

		autoformadeenvio nullable: true;


		autotipotarjetaformapago nullable: true;
		autopagotipotarjeta nullable: true;
		autopagotitulartarjeta nullable: true;
		autopagonumerotarjeta nullable: true;
		autopagoexpiracionmes nullable: true;
		autopagoexpiracionano nullable: true;
		autopagocodigoseguridad nullable: true;
		autopagodireccion1 nullable: true;
		autopagodireccion2 nullable: true;
		autopagopaist nullable: true;
		autopagoestadot nullable: true;
		autopagociudadt nullable: true;
		autopagotelefonot nullable: true;
		autopagocodigopostalt nullable: true;
	}
}