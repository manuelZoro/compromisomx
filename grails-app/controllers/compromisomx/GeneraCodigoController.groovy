package compromisomx

class GeneraCodigoController {
	
	Integer niveles;
	Integer Totalniveles = 3;
	Integer idControl = 100;

	
    def index() {
		niveles = 0;
		
		Cuenta p =new Cuenta();
		//p.id = idControl;
		p.version = idControl;
		p.curp = "CURP" + idControl;
		p.nombres =  "NOMBRE" + idControl;
		p.primer_apellido = "PRIMERAPELLIDO" + idControl;
		p.segundo_apellido = "SEGUNDOPELLIDO" + idControl;
		p.fecha_de_nacimiento = new Date("10/11/2014");
		p.idioma = "ESPANOL";		
		p.genero =false;
		p.save(flush: true)
		infoPersonal(p);
		Guarda5(p);	

		
	}
	

	
	
	def Guarda5(Cuenta Mentor)
	{
			niveles++;
			for (int i = 1; i < 6; i++) {
				idControl = idControl+i;
				
				Cuenta p =new Cuenta();
				//p.id = idControl;
				p.version = idControl;
				p.curp = "CURP" + idControl;
				p.nombres =  "NOMBRE" + idControl;
				p.primer_apellido = "PRIMERAPELLIDO" + idControl;
				p.segundo_apellido = "SEGUNDOPELLIDO" + idControl;
				p.fecha_de_nacimiento = new Date("10/12/2014");
				p.idioma = "ESPANOL";
				if (i > 2 )
					p.genero =false;
				else
					p.genero =true;
					
				p.mentor = Mentor;
				p.save(flush: true)	
				infoPersonal(p);
				//if (niveles < Totalniveles)
					Guarda52(p);
			}
		
	}
	
	def Guarda52(Cuenta Mentor)
	{
			niveles++;
			for (int i = 1; i < 6; i++) {
				idControl = idControl+i;
				
				Cuenta p =new Cuenta();
				//p.id = idControl;
				p.version = idControl;
				p.curp = "CURP" + idControl;
				p.nombres =  "NOMBRE" + idControl;
				p.primer_apellido = "PRIMERAPELLIDO" + idControl;
				p.segundo_apellido = "SEGUNDOPELLIDO" + idControl;
				p.fecha_de_nacimiento = new Date("10/01/2014");
				p.idioma = "ESPANOL";
				if (i > 2 )
					p.genero =false;
				else
					p.genero =true;
					
				p.mentor = Mentor;
				p.save(flush: true)
				infoPersonal(p);
				//if (niveles < Totalniveles)
					Guarda523(p);
			}
		
	}
	
	def Guarda523(Cuenta Mentor)
	{
			niveles++;
			for (int i = 1; i < 6; i++) {
				idControl = idControl+i;
				
				Cuenta p =new Cuenta();
				//p.id = idControl;
				p.version = idControl;
				p.curp = "CURP" + idControl;
				p.nombres =  "NOMBRE" + idControl;
				p.primer_apellido = "PRIMERAPELLIDO" + idControl;
				p.segundo_apellido = "SEGUNDOPELLIDO" + idControl;
				p.fecha_de_nacimiento = new Date("10/01/2014");
				p.idioma = "ESPANOL";
				if (i > 2 )
					p.genero =false;
				else
					p.genero =true;
					
				p.mentor = Mentor;
				p.save(flush: true)
				infoPersonal(p);
				//if (niveles < Totalniveles)
				//	Guarda5(p);
			}
		
	}
	
	
	def infoPersonal(Cuenta idcuenta)
	{
			
				
				
				InformacionPersonal p =new InformacionPersonal();
				//p.id = idControl;
				p.version = idControl;
				p.aniversario = new Date("10/01/2014");
				//p.fe =  new Date("10/01/2014");	
				
				p.estadocivil = '';
				p.facebook = '';
				p.facetime = '';
				
				p.libre_fin = '';
				p.libre_inicio = '';
				//p.ocupacion = '';
				//p.otrasactiviades = '';
				//p.pasatiempo = '';
				//p.profesion = '';
				p.skype = '';
				p.trabajo_fin = '';
				p.trabajo_inicio = '';
					
				p.cuenta = idcuenta;
				p.save(flush: true);
				
			
		
	}
	
	
}
