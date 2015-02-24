package compromisomx

class LugaresDeEnvio {
	
	String nombre;
	String primerapellido;
	String segundoapellido;
	Long idpais;
	Long idestado;
	Long idciudad;
	Long idcolonia;
	String cp;
	String calle;
	String numext;
	String numint;
	String manzana;
	String cruzes;
	String referencias;
	
	LugaresDeEnvio()
	{
		id =0;
		version =0;
		nombre = "";
		primerapellido = "";
		segundoapellido = "";
		idpais =0;
		idestado =0;
		idciudad = 0;
		idcolonia =0;
		cp = "";
		calle = "";
		numext = "";
		numint = "";
		manzana = "";
		cruzes = "";
		referencias = "";
		
	}
	

    static constraints = {
		 cp nullable: true;
		 numint nullable: true;
		 manzana nullable: true;
		 cruzes nullable: true;
		 referencias nullable: true;

    }
}
