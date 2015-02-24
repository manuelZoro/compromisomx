package compromisomx

import java.util.Date;

class Agenda {

		String nombre;
		String lugar;
		String estado;
		String municipio;
		String horai;
		String horaf;
		Date inicio;
		String dia;
		String mes;
		String anio;
		Date fin;
		String dia1;
		String mes1;
		String anio1;
		String repetir;
		String comentario;
		Boolean rep;
		Boolean mensaje;
		String tiempo;

		public Agenda(){
			id = 0;
			 nombre= "";
			 lugar= "";
			 estado= "";
			 municipio= "";
			 inicio=new Date();
			 fin=new Date();
			 repetir= "";
			 comentario= "";
			 rep= false;
			 mensaje= false;
			 tiempo = "";						
		}
    static constraints = {
    }
	
	static mapping = {
		version false
		id generator: 'increment', column: 'id_agenda'
	}
}
