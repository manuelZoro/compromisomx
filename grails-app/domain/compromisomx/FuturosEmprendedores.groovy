package compromisomx

import java.util.Formatter.DateTime;

class FuturosEmprendedores {
	
	int no;
	String nombre;
	String telcelular;
	String telcasa;
	String correo;
	String facebook;
	String twitter;
	String skype;
	String facetime;
	Date fecha;
	String hora;
	String lugar;
	
	
	
	public FuturosEmprendedores(){
		id = 0;
		no = 0;
		nombre = "";
		telcelular = "";
		telcasa = "";
		correo = "";
		facebook = "";
		twitter = "";
		skype = "";
		facetime = "";
		fecha = new Date(); // dateString();
		hora = "";
		lugar = "";
	}
    static constraints = {
		version nullable: true;
		no nullable: true;
		nombre nullable: true;
		telcelular nullable: true;
		telcasa nullable: true;
		correo nullable: true;
		facebook nullable: true;
		twitter nullable: true;
		skype nullable: true;
		facetime nullable: true;
		fecha nullable: true;
		hora nullable: true;
		lugar nullable: true;
    }
	
/*	static mapping = {
		version false
		id generator: 'increment', column: 'id_futuroemprendedor'
	}*/
}
