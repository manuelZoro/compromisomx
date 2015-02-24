package compromisomx

import java.util.Date;

class InformacionPersonal {

	RegistroPasatiempos pasatiempo;
	RegistroProfesion profesion;
	RegistroOtrasActividades otrasactividades;
	RegistroOcupacion ocupacion;

	String twitter;
	String facetime;
	String facebook;
	String whatsapp;
	String skype;
	
	String tallaPlayera //Va a ser un enum XS, S, M, L, XL y las que sean necesarias
	String tallaCamisa  //igual
	String tallaZapato  //igual
	
	String trabajo_inicio;
	String trabajo_fin;
	String libre_inicio;
	String libre_fin;
	String estadocivil;
	Date aniversario;
	Cuenta cuenta;

	static constraints = {

		pasatiempo nullable: true;
		profesion nullable: true;
		ocupacion nullable: true;
		otrasactividades nullable: true;

		twitter nullable: true;
		facetime nullable: true;
		facebook nullable: true;
		whatsapp nullable: true;
		skype nullable: true;

		trabajo_inicio nullable: true;
		trabajo_fin nullable: true;
		libre_inicio nullable: true;
		libre_fin nullable: true;
		estadocivil nullable: true;
		aniversario nullable: true;
		
		tallaPlayera nullable: true;
		tallaCamisa nullable: true;
		tallaZapato nullable: true;
	}
}