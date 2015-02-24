package compromisomx

class Agendaconf {
	String horait;
	String horaft;
	String horaid;
	String horafd;
	String profesion;
	String ocupacion;
	String pasatiempo;
	String deporte;
	String otras;
	
	public Agendaconf(){
		 id = 0;
		 horait= "";
		 horaft= "";
		 horaid= "";
		 horaid= "";		 
		 profesion= "";
		 ocupacion= "";
		 pasatiempo = "";
		 deporte = "";
		 otras = "";
	}
	
    static constraints = {
		otras nullable: true;
    }
	
	static mapping = {
		version false
		id generator: 'increment', column: 'id_agendaconf'
	}
}
